package com.danrong.wx.yzzpat.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.wx.yzzpat.module.MessageModule;
import com.danrong.wx.yzzpat.module.MessageModuleImpl;
import com.danrong.wx.yzzpat.util.AuthUtil;
import com.danrong.wx.yzzpat.util.Config;
import com.danrong.wx.yzzpat.util.FieldName;
import com.danrong.wx.yzzpat.util.HttpRequestUtil;
import com.danrong.wx.yzzpat.util.MessageUtil;

@Controller
public class IndexController {

  @Value("#{properties['wx_yzzpat.web.host']}")
  public String mainUrl;

  private HttpRequestUtil httpRequestUtil = new HttpRequestUtil();
  private MessageModule messageModule = new MessageModuleImpl();

  @RequestMapping(value = "/", produces = { "application/json;charset=UTF-8" })
  @ResponseBody
  public String root(HttpServletRequest request, HttpServletResponse response) {
    String openid = request.getParameter(FieldName.openid);
    if (StringUtils.isNotBlank(openid)) {
      String xmlStr = httpRequestUtil.getXmlFromHttpServletRequest(request);
      return messageModule.messageHandler(MessageUtil.wx_xmlToMap(xmlStr, Config.charset));
    } else {
      boolean authSuccess = AuthUtil.wexAuth(AuthUtil.token, request.getParameter(FieldName.timestamp),
          request.getParameter(FieldName.nonce), request.getParameter(FieldName.signature));

      if (authSuccess) return request.getParameter(FieldName.echostr);
      else return null;
    }
  }

  @RequestMapping(value = "index")
  public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("index");
    view.addObject("mainUrl", mainUrl.trim());
    return view;
  }

}
