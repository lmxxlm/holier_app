package com.danrong.wx.yzzpat.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtil {

  public static final String openid = "openid";
  public static final String code = "code";
  public static final int time_out = 30 * 24 * 3600;

  /**
   * 获取session中用户的id
   * 
   * @param session
   * @return String
   */
  public String getUserOpenid(HttpSession session) {
    if (session == null) return "";
    Object value = session.getAttribute(openid);
    return value == null ? "" : (String) value;
  }

  /**
   * 获取session中的code
   * 
   * @param session
   * @return
   */
  public String getOauthCode(HttpSession session) {
    if (session == null) return "";
    Object value = session.getAttribute(code);
    return value == null ? "" : (String) value;
  }

  public void setSessionTime(HttpSession session, int time) {
    session.setMaxInactiveInterval(time);
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
