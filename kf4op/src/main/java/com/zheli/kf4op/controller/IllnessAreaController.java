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
public class IllnessAreaController {

  @Value("#{properties['kf4op.web.host']}")
  public String mainUrl;
  @Value("#{properties['kf4op.web.ip']}")
  public String host;
  @Value("#{properties['cake.uri']}")
  public String cake_uri;

  private final CommEntityModule commEntityModule = new CommEntityModuleImpl();
  private final SessionParser sessionParser = new SessionParser();
  private final TokenUtil tokenUtil = new TokenUtil();

  @RequestMapping(value = ViewName.illness_area_manage)
  public ModelAndView illness_area_manage(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    String token = TokenGenerater.generateToken();
    sessionParser.setSession(request, SessionField.token, token);

    view.addObject(SessionField.token, token);
    view.addObject(ViewName.menuIndex, ViewName.illness_area_manage);
    view.setViewName(ViewName.illness_area_manage);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    // 列表页数据
    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_illnessarea_list }));
    String data = commEntityModule.list(kfdata);
    view.addObject(JSTLField.data, JSONObject.fromObject(data));
    // 渲染医院列表数据(暂时方案，数据多的时候需要做智能提示下拉框)
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_hospital_list }));
    String hospital_data = commEntityModule.list(kfdata);
    view.addObject(JSTLField.hospital, JSONObject.fromObject(hospital_data));
    return view;
  }

  @RequestMapping(value = ViewName.illness_area_manage_add)
  @ResponseBody
  public boolean departments_manage_add(HttpServletRequest request, HttpServletResponse response) {
    // medex每个post请求都需验证token,，如果验证不成功，直接返回失败，否则，token置空(防止重复提交)，并进行下一步
    if (tokenUtil.matchToken(request) == TokenUtil.code_mismatch) { return false; }

    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_illnessarea }));
    return commEntityModule.add(kfdata);
  }

  @RequestMapping(value = ViewName.illness_area_manage_edit)
  @ResponseBody
  public boolean departments_manage_edit(HttpServletRequest request, HttpServletResponse response) {
    // medex每个post请求都需验证token,，如果验证不成功，直接返回失败，否则，token置空(防止重复提交)，并进行下一步
    if (tokenUtil.matchToken(request) == TokenUtil.code_mismatch) { return false; }

    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_illnessarea }));
    return commEntityModule.update(kfdata);
  }

  @RequestMapping(value = ViewName.illness_area_manage_delete)
  @ResponseBody
  public boolean departments_manage_delete(HttpServletRequest request, HttpServletResponse response) {
    // medex每个post请求都需验证token,，如果验证不成功，直接返回失败，否则，token置空(防止重复提交)，并进行下一步
    if (tokenUtil.matchToken(request) == TokenUtil.code_mismatch) { return false; }

    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_illnessarea }));
    return commEntityModule.delete(kfdata);
  }

  @RequestMapping(value = ViewName.find_illness_area, produces = "application/string; charset=utf-8")
  @ResponseBody
  public String find_department(HttpServletRequest request, HttpServletResponse response) {
    Map<String, Object> result = new HashMap<>();
    KfData kfdata = new KfData(request);
    kfdata.put(Config.cake_uri, StringUtils.join(new String[] { cake_uri, Config.cake_illnessarea_find }));
    String value = commEntityModule.find(kfdata);
    boolean status = true;
    if (StringUtils.isBlank(value)) status = false;
    else result.put(JSTLField.data, value);

    result.put(JSTLField.status, status);
    return JsonUtil.zlClean(result.toString());
  }

}