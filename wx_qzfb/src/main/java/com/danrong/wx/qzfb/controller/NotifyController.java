package com.danrong.wx.qzfb.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.danrong.wx.qzfb.util.comm.Help;

@Controller
public class NotifyController {

  @RequestMapping(value = "/event_notify", method = RequestMethod.POST, produces = { "application/json;charset=UTF-8" })
  @ResponseBody
  public String event_notify(HttpServletRequest request) {
    Map<String, Object> result = new HashMap<>();
    String scheduleItemCode = request.getParameter("scheduleItemCode");
    String message = request.getParameter("message");

    System.out.println(scheduleItemCode + ";" + message);
    result.put("code", 1);
    result.put("msg", "通知成功！");
    return Help.bean2Json(result);
  }

}
