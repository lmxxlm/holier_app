package com.zheli.kf4op.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionParser {

  /**
   * 获取session中用户的名字
   * 
   * @param session
   * @return String
   */
  public String getUserName(HttpSession session) {
    if (session == null) return "";
    Object value = session.getAttribute(SessionField.accountId);
    return value == null ? "" : (String) value;
  }

  public void setSessionTime(HttpSession session, int time) {
    session.setMaxInactiveInterval(time);
  }

  public String getCurrentUserName(HttpSession session) {
    if (session == null) return "";
    Object value = session.getAttribute(SessionField.accountName);
    return value == null ? "" : (String) value;
  }

  public String getUserToken(HttpSession session) {
    if (session == null) return "";
    Object value = session.getAttribute(SessionField.token);
    return value == null ? "" : (String) value;
  }

  /**
   * 设置session
   * 
   * @param request
   * @param key
   * @param value
   */
  public void setSession(HttpServletRequest request, String key, String value) {
    HttpSession session = request.getSession();
    session.setAttribute(key, value);
  }

  public void remove(HttpServletRequest request, String args) {
    Object object = request.getSession().getAttribute(args);
    if (object != null) {
      try {
        request.getSession().removeAttribute(args);
      } catch (Exception e) {
        object = null;
      }
    }
  }

}
