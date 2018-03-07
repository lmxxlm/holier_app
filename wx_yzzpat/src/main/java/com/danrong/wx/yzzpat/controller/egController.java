package com.danrong.wx.yzzpat.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class egController {

  @Value("#{properties['wx_yzzpat.web.host']}")
  public String mainUrl;
  
  
  //健康手册
 @RequestMapping(value = "momEg")
 public ModelAndView momEg(HttpServletRequest request, HttpServletResponse response) {
   ModelAndView view = new ModelAndView();
   view.setViewName("momEg");
   view.addObject("mainUrl", mainUrl.trim());
   return view;
 }
  
//基本信息
 @RequestMapping(value = "turn_hospital2")
 public ModelAndView turn_hospital2(HttpServletRequest request, HttpServletResponse response) {
   ModelAndView view = new ModelAndView();
   view.setViewName("turn_hospital2");
   view.addObject("mainUrl", mainUrl.trim());
   return view;
 }

  // 基本信息
  @RequestMapping(value = "basic_info")
  public ModelAndView basic_info(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("basic_info");
    view.addObject("mainUrl", mainUrl.trim());
    return view;
  }

  // 我的病历记录
  @RequestMapping(value = "my_records")
  public ModelAndView my_records(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("my_records");
    view.addObject("mainUrl", mainUrl.trim());
    return view;
  }

  // 医院简介
  @RequestMapping(value = "hos_introduction")
  public ModelAndView hos_introduction(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("hos_introduction");
    view.addObject("mainUrl", mainUrl.trim());
    return view;
  }

}
