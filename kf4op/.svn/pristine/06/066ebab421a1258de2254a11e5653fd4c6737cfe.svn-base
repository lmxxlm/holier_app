package com.zheli.kf4op.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zheli.kf4op.module.CommEntityModule;
import com.zheli.kf4op.module.CommEntityModuleImpl;
import com.zheli.kf4op.module.KfData;
import com.zheli.kf4op.util.Config;
import com.zheli.kf4op.util.JSTLField;
import com.zheli.kf4op.util.JsonUtil;
import com.zheli.kf4op.util.SessionField;
import com.zheli.kf4op.util.SessionParser;
import com.zheli.kf4op.util.TokenGenerater;
import com.zheli.kf4op.util.TokenUtil;
import com.zheli.kf4op.util.ViewName;

@Controller
public class HospitalController {

  @Value("#{properties['kf4op.web.host']}")
  public String mainUrl;
  @Value("#{properties['kf4op.web.ip']}")
  public String host;
  @Value("#{properties['cake.uri']}")
  public String cake_uri;

  private final CommEntityModule commEntityModule = new CommEntityModuleImpl();
  private final SessionParser sessionParser = new SessionParser();
  private final TokenUtil tokenUtil = new TokenUtil();

  @RequestMapping(value = ViewName.hospital_manage)
  public ModelAndView hospital_manage(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    String token = TokenGenerater.generateToken();
    sessionParser.setSession(request, SessionField.token, token);

    view.addObject(SessionField.token, token);
    view.addObject(ViewName.menuIndex, ViewName.hospital_manage);
    view.setViewName(ViewName.hospital_manage);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    // 列表页数据
    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_hospital_list }));
    String data = commEntityModule.list(kfdata);
    view.addObject(JSTLField.data, JSONObject.fromObject(data));
    return view;
  }

  @RequestMapping(value = ViewName.hospital_manage_add)
  @ResponseBody
  public boolean hospital_manage_add(HttpServletRequest request, HttpServletResponse response) {
    // medex每个post请求都需验证token,，如果验证不成功，直接返回失败，否则，token置空(防止重复提交)，并进行下一步
    if (tokenUtil.matchToken(request) == TokenUtil.code_mismatch) return false;

    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_hospital }));
    return commEntityModule.add(kfdata);
  }

  @RequestMapping(value = ViewName.hospital_manage_edit)
  @ResponseBody
  public boolean hospital_manage_edit(HttpServletRequest request, HttpServletResponse response) {
    // medex每个post请求都需验证token,，如果验证不成功，直接返回失败，否则，token置空(防止重复提交)，并进行下一步
    if (tokenUtil.matchToken(request) == TokenUtil.code_mismatch) { return false; }

    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_hospital }));
    return commEntityModule.update(kfdata);
  }

  @RequestMapping(value = ViewName.hospital_manage_delete)
  @ResponseBody
  public boolean hospital_manage_delete(HttpServletRequest request, HttpServletResponse response) {
    // medex每个post请求都需验证token,，如果验证不成功，直接返回失败，否则，token置空(防止重复提交)，并进行下一步
    if (tokenUtil.matchToken(request) == TokenUtil.code_mismatch) { return false; }

    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_hospital }));
    return commEntityModule.delete(kfdata);
  }

  @RequestMapping(value = ViewName.find_hospital, produces = "application/string; charset=utf-8")
  @ResponseBody
  public String findHospital(HttpServletRequest request, HttpServletResponse response) {
    Map<String, Object> result = new HashMap<>();
    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_hospital_find }));
    String value = commEntityModule.find(kfdata);
    boolean status = true;
    if (StringUtils.isBlank(value)) status = false;
    else result.put(JSTLField.data, value);

    result.put(JSTLField.status, status);
    return JsonUtil.zlClean(result.toString());
  }
}
