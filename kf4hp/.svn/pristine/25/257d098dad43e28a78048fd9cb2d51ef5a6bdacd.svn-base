package com.zheli.kf4hp.controller;

import java.util.HashMap;
import java.util.List;
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

import com.danrong.medex.configure.Status;
import com.danrong.medex.module.v2.kfhospital.V2KfHospitalModule;
import com.danrong.medex.module.v2.kfhospital.V2KfHospitalModuleImpl;
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

/**
 * 登录控制器
 * 
 * @author cyzsj
 */
@Controller
public class LoginController {

  @Value("#{properties['kf4hp.web.host']}")
  public String mainUrl;
  @Value("#{properties['cake.uri']}")
  public String cake_uri;

  private final UserModule userModule = new UserModuleImpl();
  private final V2KfHospitalModule hospitalModule = new V2KfHospitalModuleImpl();
  private final SessionParser sessionParser = new SessionParser();
  private final TokenUtil tokenUtil = new TokenUtil();

  @RequestMapping(value = ViewName.login)
  public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    sessionParser.setSession(request, SessionField.token, token);

    view.addObject(SessionField.token, token);
    view.setViewName(ViewName.login);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }

  @RequestMapping(method = RequestMethod.POST, value = ViewName.doLoginOut)
  @ResponseBody
  public int doLogoutAction(HttpServletRequest request) {
    sessionParser.remove(request, SessionField.accountId);
    sessionParser.remove(request, SessionField.token);
    sessionParser.remove(request, SessionField.accountName);
    return Status.STATUS_OK;
  }

  @SuppressWarnings("unchecked")
  @RequestMapping(method = RequestMethod.POST, value = ViewName.checkLogin)
  @ResponseBody
  public boolean check(HttpServletRequest request, HttpServletResponse response) {
    // medex每个post请求都需验证token,，如果验证不成功，直接返回失败，否则，token置空(防止重复提交)，并进行下一步
    if (tokenUtil.matchToken(request) == TokenUtil.code_mismatch) { return false; }

    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, cake_uri);
    ((Map<String, Object>) kfdata.get(Config.core_data)).put(JSTLField.type, Config.type_hp);
    boolean checkLog = userModule.login(kfdata);
    if (checkLog) {
      Map<String, Object> kf_core_data = ((Map<String, Object>) kfdata.get(Config.core_data));
      String accountId = (String) kf_core_data.get(JSTLField.accountId);
      // 设置session当前账号
      sessionParser.setSession(request, SessionField.accountId, accountId);

      KfData data2 = new KfData();
      data2.put(Config.cake_uri, cake_uri);

      Map<String, Object> coreData = new HashMap<>();
      coreData.put("account_id", accountId);
      coreData.put("type", Config.type_hp);

      data2.put(Config.core_data, coreData);
      String currentUserName = userModule.get_name_by_id_and_type(data2);
      // 设置session当前账号对应的名字
      sessionParser.setSession(request, SessionField.accountName,
          StringUtils.isBlank(currentUserName) ? Config.defaultName : currentUserName);

      // 医院id、名称、科室
      KfData data3 = new KfData();
      data3.put(Config.cake_uri, cake_uri);
      data3.put("account_id", accountId);

      String hospital_id = userModule.get_hospital_id_by_account(data3);
      if (StringUtils.isBlank(hospital_id)) { return false; }

      boolean hospital_exist = hospitalModule.exist(hospital_id);
      if (!hospital_exist) return false;

      Map<String, Object> hospital_info = hospitalModule.findByHospitalId(hospital_id);
      if (hospital_info == null) return false;

      // 设置session
      String hospital_name = (String) hospital_info.get("name");
      List<String> departments = (List<String>) hospital_info.get("departments");
      StringBuilder sb = new StringBuilder();
      for (int i = 0; i < departments.size(); i++) {
        sb.append(departments.get(i));
        if (i < departments.size() - 1) sb.append(",");
      }
      sessionParser.setSession(request, SessionField.hospital_id, hospital_id);
      sessionParser.setSession(request, SessionField.hospital_name, hospital_name);
      sessionParser.setSession(request, SessionField.hospital_department, sb.toString());
    }
    return checkLog;
  }
}
