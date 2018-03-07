package com.danrong.wx.qzfb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.wx.qzfb.util.comm.JSTLField;
@Controller
public class EG {

	 @Value("#{properties['wx_qzfb.web.host']}")
	  public String mainUrl;

  
  @RequestMapping(value = "eg/eg1")
  public ModelAndView eg1(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("eg/eg1");
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }
  
  @RequestMapping(value = "eg/eg2")
  public ModelAndView eg2(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg2");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  @RequestMapping(value = "eg/eg3")
  public ModelAndView eg3(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg3");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  @RequestMapping(value = "eg/eg4")
  public ModelAndView eg4(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg4");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  @RequestMapping(value = "eg/eg5")
  public ModelAndView eg5(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg5");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  
  @RequestMapping(value = "eg/eg6")
  public ModelAndView eg6(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg6");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  @RequestMapping(value = "eg/eg7")
  public ModelAndView eg7(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg7");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  @RequestMapping(value = "eg/eg8")
  public ModelAndView eg8(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg8");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  @RequestMapping(value = "eg/eg9")
  public ModelAndView eg9(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg9");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  @RequestMapping(value = "eg/eg10")
  public ModelAndView eg10(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg10");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  
  
  
  
  @RequestMapping(value = "eg/eg11")
  public ModelAndView eg11(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg11");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  
  @RequestMapping(value = "eg/eg12")
  public ModelAndView eg12(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg12");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
  
  @RequestMapping(value = "eg/eg13")
  public ModelAndView eg13(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView view = new ModelAndView();
	    view.setViewName("eg/eg13");
	    view.addObject(JSTLField.mainUrl, mainUrl.trim());
	    return view;
	  }
  
}
