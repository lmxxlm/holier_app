package com.zheli.kf4hp.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.medex.util.AccountGenerater;
import com.danrong.medex.util.TokenGenerater;
import com.zheli.kf4hp.module.UserModule;
import com.zheli.kf4hp.module.UserModuleImpl;
import com.zheli.kf4hp.util.Config;
import com.zheli.kf4hp.util.JSTLField;
import com.zheli.kf4hp.util.KfData;
import com.zheli.kf4hp.util.SessionField;
import com.zheli.kf4hp.util.SessionParser;
import com.zheli.kf4hp.util.TokenUtil;
import com.zheli.kf4hp.util.ViewName;

@Controller
public class SetController {

  @Value("#{properties['kf4hp.web.host']}")
  public String mainUrl;
  @Value("#{properties['cake.uri']}")
  public String cake_uri;

  private final UserModule userModule = new UserModuleImpl();
  private final SessionParser sessionParser = new SessionParser();
  private final TokenUtil tokenUtil = new TokenUtil();

  @RequestMapping(value = ViewName.setPassword)
  public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    sessionParser.setSession(request, SessionField.token, token);

    view.addObject(SessionField.token, token);
    view.setViewName(ViewName.setPassword);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }

  @SuppressWarnings("unchecked")
  @RequestMapping(method = RequestMethod.POST, value = ViewName.edit_pass)
  @ResponseBody
  public int edit_pass(HttpServletRequest request) {
    // medex每个post请求都需验证token,，如果验证不成功，直接返回失败，否则，token置空(防止重复提交)，并进行下一步
    if (tokenUtil.matchToken(request) == TokenUtil.code_mismatch) { return 0; }

    // 验证原密码
    KfData kfdata1 = new KfData(request);
    kfdata1.put(Config.cake_uri, cake_uri);
    ((Map<String, Object>) kfdata1.get(Config.core_data)).remove("new_password");
    ((Map<String, Object>) kfdata1.get(Config.core_data)).put(JSTLField.type, Config.type_hp);
    boolean checkLog = userModule.login(kfdata1);
    if (!checkLog) return 2;

    KfData kfdata2 = new KfData(request);
    kfdata2.put(Config.cake_uri, cake_uri);
    ((Map<String, Object>) kfdata2.get(Config.core_data)).remove("new_password");
    ((Map<String, Object>) kfdata2.get(Config.core_data)).put("password", request.getParameter("new_password"));
    ((Map<String, Object>) kfdata2.get(Config.core_data)).put(JSTLField.type, Config.type_hp);
    if (userModule.updatePwd(kfdata2)) return 1;
    else return 0;
  }

}
