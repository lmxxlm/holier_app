package com.danrong.wx.qzfb.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.wx.qzfb.module.doctor.Doctor;
import com.danrong.wx.qzfb.module.doctor.DoctorModule;
import com.danrong.wx.qzfb.module.doctor.DoctorModuleImpl;
import com.danrong.wx.qzfb.module.schedule.Schedule;
import com.danrong.wx.qzfb.module.schedule.ScheduleModule;
import com.danrong.wx.qzfb.module.schedule.ScheduleModuleImpl;
import com.danrong.wx.qzfb.module.schedule.ScheduleSearchQuery;
import com.danrong.wx.qzfb.util.comm.JSTLField;
import com.danrong.wx.qzfb.util.comm.ViewName;

@Controller
public class OutPatientController {

  @Value("#{properties['wx_qzfb.web.host']}")
  public String mainUrl;

  @Value("#{properties['wx_qzfb.doctor.images.mainUrl']}")
  public String doctorImageUrl;

  private DoctorModule doctorModule = new DoctorModuleImpl();
  private ScheduleModule scheduleModule = new ScheduleModuleImpl();

  @RequestMapping(value = ViewName.outpatient)
  public ModelAndView outpatient(@ModelAttribute ScheduleSearchQuery query, HttpServletRequest request,
      HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName(ViewName.outpatient);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    // 获取日程数据
    if (query != null && !query.isEmpty()) {
      List<Schedule> schedules = scheduleModule.searchSchedules(query);
      view.addObject(JSTLField.data, schedules);
      if (schedules != null && !schedules.isEmpty()) {
        Schedule schedule = schedules.get(0);
        view.addObject(JSTLField.departmentName, schedule.getDepartmentName());
        view.addObject(JSTLField.count, schedules.size());

        // 渲染医生头像
        for (Schedule s : schedules) {
          Doctor doctor = doctorModule.getDoctorDetailById(doctorImageUrl, s.getDoctorCode());
          s.setDoctorImage(doctor.getDoctorImage());
        }
      }
      view.addObject(JSTLField.departmentCode, query.getDepartmentCode());
      view.addObject(JSTLField.start_date, query.getStartDate());
    }
    return view;
  }

}
