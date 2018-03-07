package com.zheli.kf4op.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import com.zheli.kf4op.module.KfData;

public class CookieParser {

  // private final Encrypt crypt = new DrEncrypt();

  /**
   * 从cookie获取账户信息
   * 
   * @param request
   * @param response
   * @return
   */
  public KfData checkLoginFromCookie(HttpServletRequest request, HttpServletResponse response) {
    KfData data = new KfData();
    String usernameCookie = null;
    String passwordCookie = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
      for (Cookie cookie : cookies) {
        if (CookieField.username.equals(cookie.getName())) usernameCookie = cookie.getValue();
        if (CookieField.password.equals(cookie.getName())) passwordCookie = cookie.getValue();
      }
      if (usernameCookie != null && passwordCookie != null) {
        // TODO
        // String username = crypt.sy_decrypt(usernameCookie);
        // String password = crypt.sy_decrypt(passwordCookie);

        String username = usernameCookie;
        String password = passwordCookie;

        data.put(CookieField.username, username);
        data.put(CookieField.password, password);
        return data;
      } else return null;
    } else return null;
  }

  public void setCookie(String host, String username, String password, HttpServletRequest request,
      HttpServletResponse response) {
    if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) return;
    // 用户名，密码加密存cookie
    // TODO
    // username = this.crypt.sy_encrypt(username);
    // password = this.crypt.sy_encrypt(password);

    Cookie cookie = new Cookie(CookieField.username, username); // 保存用户名到Cookie
    cookie.setPath("/");
    cookie.setMaxAge(CookieField.cookieDisable);
    cookie.setDomain(host);
    response.addCookie(cookie);
    // 保存密码到Cookie，注意需要加密一下
    cookie = new Cookie(CookieField.password, password);
    cookie.setPath("/");
    cookie.setMaxAge(CookieField.cookieDisable);
    cookie.setDomain(host);
    response.addCookie(cookie);
  }
}
