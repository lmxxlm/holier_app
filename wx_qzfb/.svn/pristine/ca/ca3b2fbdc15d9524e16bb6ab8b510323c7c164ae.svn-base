package com.danrong.wx.qzfb.controller;

import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.wx.qzfb.module.doctor.Doctor;
import com.danrong.wx.qzfb.module.doctor.DoctorModule;
import com.danrong.wx.qzfb.module.doctor.DoctorModuleImpl;
import com.danrong.wx.qzfb.util.comm.JSTLField;

@Controller
public class DoctorController {

  @Value("#{properties['wx_qzfb.web.host']}")
  public String mainUrl;

  @Value("#{properties['wx_qzfb.doctor.images.mainUrl']}")
  public String doctorImageUrl;

  private DoctorModule doctorModule = new DoctorModuleImpl();

  @SuppressWarnings("rawtypes")
  @RequestMapping(value = "docDetail")
  public ModelAndView docDetail(String doctorCode, HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("docDetail");
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    // 获取数据
    Doctor doctor = doctorModule.getDoctorDetailById(doctorImageUrl, doctorCode);
    view.addObject("doctor", doctor);
    // 渲染详情页隐藏域
    Map properties = request.getParameterMap();
    Iterator entries = properties.entrySet().iterator();
    Map.Entry entry;
    String name = "";
    String value = "";
    while (entries.hasNext()) {
      entry = (Map.Entry) entries.next();
      name = (String) entry.getKey();
      Object valueObj = entry.getValue();
      if (null == valueObj) {
        value = "";
      } else if (valueObj instanceof String[]) {
        String[] values = (String[]) valueObj;
        for (int i = 0; i < values.length; i++) {
          value = values[i] + ",";
        }
        value = value.substring(0, value.length() - 1);
      } else {
        value = valueObj.toString();
      }
      view.addObject(name, value);
    }

    return view;
  }

}
