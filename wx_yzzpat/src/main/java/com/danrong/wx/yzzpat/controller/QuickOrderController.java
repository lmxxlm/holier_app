package com.danrong.wx.yzzpat.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.medex.util.v2.KfOrderStatus;
import com.danrong.wx.yzzpat.module.KfOrderModule;
import com.danrong.wx.yzzpat.module.KfOrderModuleImpl;
import com.danrong.wx.yzzpat.util.SessionUtil;
import com.dr.core.util.TimeUtil;

@Controller
public class QuickOrderController {

  private final SessionUtil sessionUtil = new SessionUtil();
  private final KfOrderModule kfOrderModule = new KfOrderModuleImpl();
  private final TimeUtil timeUtil = new TimeUtil();

  @RequestMapping(value = "simple_order")
  public ModelAndView expert_list(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("simple_order");

    return view;
  }

  @RequestMapping(value = "simple_order.do")
  @ResponseBody
  public boolean simple_order(HttpServletRequest request, HttpServletResponse response) {
    String wxid = sessionUtil.getUserOpenid(request.getSession());
    if (StringUtils.isBlank(wxid)) return false;
    Map<String, Object> orderValue = buildV2SubmitKfOrderRequest(request);
    return kfOrderModule.simpleOrder(orderValue, wxid);
  }

  public Map<String, Object> buildV2SubmitKfOrderRequest(HttpServletRequest request) {
    Map<String, Object> order = new HashMap<>();
    order.put("status", KfOrderStatus.during_transfer);
    order.put("pss", false);
    order.put("open", false);
    order.put("hospital_id", "587856410cf2d3d844324fe7");
    order.put("bedroom_id", "5878568a0cf2d3d844324fe8");
    order.put("check_in_time", timeUtil.s2l2(timeUtil.now2s2()));
    order.put("patient_name", request.getParameter("name"));
    order.put("patient_phone", request.getParameter("tel"));
    order.put("transfer_time", timeUtil.s2l2(timeUtil.now2s2()));

    order.put("create_time", timeUtil.now2l());

    if (StringUtils.isNotBlank(request.getParameter("patient_desc"))) order.put("patient_desc",
        request.getParameter("describe"));

    return order;
  }
}
