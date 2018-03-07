package com.zheli.kf4op.util;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.ModelAndView;

public class CommView {

  private final SessionParser sessionParser = new SessionParser();

  public ModelAndView comm(ModelAndView view, HttpServletRequest request) {
    // 公共部分
    String currentUserId = sessionParser.getUserName(request.getSession());
    if (StringUtils.isNotBlank(currentUserId)) {
      view.addObject("currentUserId", currentUserId);
    }
    view.addObject("loginer", sessionParser.getCurrentUserName(request.getSession()));
    return view;
  }
}
