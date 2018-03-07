package com.danrong.wx.qzfb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.wx.qzfb.util.comm.JSTLField;
import com.danrong.wx.qzfb.util.comm.ViewName;

@Controller
public class CheckRecordController {

  @Value("#{properties['wx_qzfb.web.host']}")
  public String mainUrl;

  @RequestMapping(value = ViewName.check_record)
  public ModelAndView check_record(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName(ViewName.check_record);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }
}
