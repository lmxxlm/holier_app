package com.zheli.kf4op.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zheli.kf4op.module.KfData;
import com.zheli.kf4op.module.UserModule;
import com.zheli.kf4op.module.UserModuleImpl;
import com.zheli.kf4op.util.Config;
import com.zheli.kf4op.util.CookieField;
import com.zheli.kf4op.util.CookieParser;
import com.zheli.kf4op.util.JSTLField;
import com.zheli.kf4op.util.SessionField;
import com.zheli.kf4op.util.SessionParser;
import com.zheli.kf4op.util.Status;
import com.zheli.kf4op.util.TokenGenerater;
import com.zheli.kf4op.util.TokenUtil;
import com.zheli.kf4op.util.ViewName;

/**
 * 登录控制器
 * 
 * @author cyzsj
 */
@Controller
public class LoginController {

  @Value("#{properties['kf4op.web.host']}")
  public String mainUrl;
  @Value("#{properties['kf4op.web.ip']}")
  public String host;
  @Value("#{properties['cake.uri']}")
  public String cake_uri;

  private final UserModule userModule = new UserModuleImpl();
  private final SessionParser sessionParser = new SessionParser();
  private final TokenUtil tokenUtil = new TokenUtil();
  private final CookieParser cookieParser = new CookieParser();

  @RequestMapping(value = ViewName.login)
  public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    String token = TokenGenerater.generateToken();
    sessionParser.setSession(request, SessionField.token, token);

    view.addObject(SessionField.token, token);
    view.setViewName(ViewName.login);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    // cookie判断是否需要自动填充账号密码
    KfData data = cookieParser.checkLoginFromCookie(request, response);
    if (data != null && data.get(CookieField.username) != null && data.get(CookieField.password) != null) {
      view.addObject(JSTLField.autoLogin, true);
      view.addObject(JSTLField.accountId, data.get(CookieField.username));
    } else {
      view.addObject(JSTLField.autoLogin, false);
    }
    return view;
  }

  @RequestMapping(method = RequestMethod.POST, value = ViewName.doLoginOut)
  @ResponseBody
  public int doLogoutAction(HttpServletRequest request) {
    sessionParser.remove(request, SessionField.accountId);
    sessionParser.remove(request, SessionField.token);
    sessionParser.remove(request, SessionField.accountName);
    return Status.SUCCESSFUL;
  }

  @SuppressWarnings("unchecked")
  @RequestMapping(method = RequestMethod.POST, value = ViewName.checkLogin)
  @ResponseBody
  public boolean check(HttpServletRequest request, HttpServletResponse response) {
    // medex每个post请求都需验证token,，如果验证不成功，直接返回失败，否则，token置空(防止重复提交)，并进行下一步
    if (tokenUtil.matchToken(request) == TokenUtil.code_mismatch) { return false; }

    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, cake_uri);
    ((Map<String, Object>) kfdata.get(Config.core_data)).put(JSTLField.type, Config.type_op);
    boolean checkLog = userModule.login(kfdata);
    if (checkLog) {
      Map<String, Object> kf_core_data = ((Map<String, Object>) kfdata.get(Config.core_data));
      String accountId = (String) kf_core_data.get(JSTLField.accountId);
      sessionParser.setSession(request, SessionField.accountId, accountId);
      String currentUserName = userModule.getUserNameByAccountId(accountId);
      sessionParser.setSession(request, SessionField.accountName,
          StringUtils.isBlank(currentUserName) ? Config.defaultName : currentUserName);
      // 如果选中了自动记录用户名密码，则加密后存cookie
      if (Config.remember.equals(kf_core_data.get(JSTLField.rememberDetail))) cookieParser.setCookie(host, accountId,
          (String) kf_core_data.get(JSTLField.password), request, response);
    }
    return checkLog;
  }
}
