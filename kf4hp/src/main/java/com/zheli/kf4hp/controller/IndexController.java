package com.zheli.kf4hp.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.medex.module.v2.kfhospital.V2KfBedroomModule;
import com.danrong.medex.module.v2.kfhospital.V2KfBedroomModuleImpl;
import com.danrong.medex.util.v2.BedRoomSearchQuery;
import com.dr.core.util.TimeUtil;
import com.zheli.kf4hp.util.JSTLField;
import com.zheli.kf4hp.util.SessionParser;
import com.zheli.kf4hp.util.ViewName;

@Controller
public class IndexController {

  @Value("#{properties['kf4hp.web.host']}")
  public String mainUrl;

  private TimeUtil timeUtil = new TimeUtil();
  private SessionParser sessionParser = new SessionParser();
  private V2KfBedroomModule bedroomModule = new V2KfBedroomModuleImpl();

  @RequestMapping(value = ViewName.root)
  public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();

    view.setViewName(ViewName.index);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }

  @RequestMapping(ViewName.index)
  public ModelAndView index1(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();

    view.setViewName(ViewName.index);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }

  @RequestMapping(value = ViewName.top)
  public ModelAndView top(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName(ViewName.top);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());

    String date = timeUtil.now2s2();
    view.addObject("date", date);
    view.addObject("hospital_name", sessionParser.getHospitalName(request.getSession()));
    view.addObject("hospital_department", sessionParser.getHospitalDepartment(request.getSession()));
    return view;
  }

  @RequestMapping(ViewName.left)
  public ModelAndView left(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName(ViewName.left);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    view.addObject("hospital_name", sessionParser.getHospitalName(request.getSession()));
    // 获取病房数据

    BedRoomSearchQuery searchQuery = new BedRoomSearchQuery();
    String hospital_id = sessionParser.getHospitalId(request.getSession());
    searchQuery.setHospital_id(hospital_id);

    List<Map<String, Object>> bedRoomList = bedroomModule.getKfBedrooms(searchQuery);
    view.addObject("bedRoomList", bedRoomList);
    return view;
  }

  @RequestMapping(value = ViewName.main)
  public ModelAndView main(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName(ViewName.main);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }

}
