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
import org.springframework.web.servlet.ModelAndView;

import com.danrong.medex.module.v2.kfhospital.V2KfBedroomModule;
import com.danrong.medex.module.v2.kfhospital.V2KfBedroomModuleImpl;
import com.danrong.medex.module.v2.kfhospital.V2KfHospitalModule;
import com.danrong.medex.module.v2.kfhospital.V2KfHospitalModuleImpl;
import com.danrong.medex.util.AccountGenerater;
import com.danrong.medex.util.TokenGenerater;
import com.danrong.medex.util.v2.BedRoomSearchQuery;
import com.zheli.kf4hp.util.JSTLField;
import com.zheli.kf4hp.util.SessionField;
import com.zheli.kf4hp.util.SessionParser;
import com.zheli.kf4hp.util.ViewName;

@Controller
public class HospitalController {

  @Value("#{properties['kf4hp.web.host']}")
  public String mainUrl;

  private SessionParser sessionParser = new SessionParser();
  private V2KfHospitalModule hospitalModule = new V2KfHospitalModuleImpl();
  private V2KfBedroomModule bedroomModule = new V2KfBedroomModuleImpl();

  @RequestMapping(value = ViewName.hospitalInfo)
  public ModelAndView hospitalInfo(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    sessionParser.setSession(request, SessionField.token, token);

    view.addObject(SessionField.token, token);
    view.setViewName(ViewName.hospitalInfo);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());

    // 获取医院信息
    Map<String, Object> hospital_info = new HashMap<>();
    String hospital_id = sessionParser.getHospitalId(request.getSession());
    if (StringUtils.isNotBlank(hospital_id)) {
      boolean exist = hospitalModule.exist(hospital_id);
      if (exist) {
        hospital_info = hospitalModule.findByHospitalId(hospital_id);
        hospital_info.put("departments", sessionParser.getHospitalDepartment(request.getSession()));
      } else {
        hospital_info.put("name", "医院数据被删除");
      }
    }
    view.addObject("hospital_info", hospital_info);
    return view;
  }

  @RequestMapping(value = ViewName.wards)
  public ModelAndView wards(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    sessionParser.setSession(request, SessionField.token, token);

    view.addObject(SessionField.token, token);
    view.setViewName(ViewName.wards);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());

    // 获取病房数据

    BedRoomSearchQuery searchQuery = new BedRoomSearchQuery();
    String hospital_id = sessionParser.getHospitalId(request.getSession());
    searchQuery.setHospital_id(hospital_id);
    searchQuery.setCp(1);
    searchQuery.setPs(20);

    List<Map<String, Object>> bedRoomList = bedroomModule.getKfBedrooms(searchQuery);
    view.addObject("bedRoomList", bedRoomList);
    return view;
  }

  @SuppressWarnings("unchecked")
  @RequestMapping(value = ViewName.wardInfo)
  public ModelAndView wardInfo(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    sessionParser.setSession(request, SessionField.token, token);

    view.addObject(SessionField.token, token);
    view.setViewName(ViewName.wardInfo);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());

    // 获取病房数据
    String bedroom_id = request.getParameter("roomId");
    if (StringUtils.isNotBlank(bedroom_id)) {
      Map<String, Object> bedRoomInfo = new HashMap<>();
      boolean exist = bedroomModule.exist(bedroom_id);
      if (exist) {
        bedRoomInfo = bedroomModule.getKfBedroomDetail(bedroom_id);
        List<String> tags = (List<String>) bedRoomInfo.get("tags");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < tags.size(); i++) {
          sb.append(tags.get(i));
          if (i < tags.size() - 1) sb.append(",");
        }
        bedRoomInfo.put("tags", sb.toString());

      } else {
        bedRoomInfo.put("name", "病床数据被删除");
      }
      view.addObject("bedroom_info", bedRoomInfo);
    }
    return view;
  }
}
