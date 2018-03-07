package com.danrong.wx.yzzpat.module;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.wx.yzzpat.util.AuthUtil;
import com.danrong.wx.yzzpat.util.OAuthAccessToken;
import com.danrong.wx.yzzpat.util.OAuthUtil;
import com.danrong.wx.yzzpat.util.SessionUtil;
import com.danrong.wx.yzzpat.util.SnsUserInfo;

@Component
public class UserAuthHandlerInterceptor implements HandlerInterceptor {

  @Value("#{properties['wx_yzzpat.web.host']}")
  public String mainUrl;

  private static String oauthCodeUrl = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" + AuthUtil.AppId
      + "&redirect_uri=###&response_type=code&scope=snsapi_userinfo&state=####wechat_redirect";
  private static String field_status = "status";
  private static String default_http_port = ":8080";
  private static String oauthCodeStatus = "default";
  private static String rootUri = "/wx_yzzpat/";
  private static String event_notify = "/wx_yzzpat/event_notify";
  private static String url_encode_enc = "utf-8";
  private SessionUtil sessionUtil = new SessionUtil();
  private OAuthUtil oauthUtil = new OAuthUtil();

  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    // // 事件通知允许访问
    // if (event_notify.equals(request.getRequestURI())) return true;
    // // /目录允许访问
    // if (rootUri.equals(request.getRequestURI()) || oauthCodeStatus.equals(request.getParameter(field_status))) return
    // true;
    // // 判断session中是否存在openid
    // String openid = sessionUtil.getUserOpenid(request.getSession());
    // if (StringUtils.isBlank(openid)) {
    // String oauthCode = request.getParameter(SessionUtil.code);
    // if (StringUtils.isNotBlank(oauthCode)) {
    // // 获取unionid
    // sessionUtil.setSession(request, SessionUtil.code, oauthCode);
    // sessionUtil.setSession(request, SessionUtil.openid, getUnionid(oauthCode));
    // } else {
    // String request_url = request.getRequestURL().toString();
    // if (request_url.contains(default_http_port)) {
    // request_url = request_url.replace(default_http_port, "");
    // }
    // response.sendRedirect(UrlReplaceUtil.replace(oauthCodeUrl, URLEncoder.encode(request_url, url_encode_enc),
    // oauthCodeStatus));
    // }
    // }
    return true;

  }

  private String getUnionid(String oauthCode) {
    OAuthAccessToken oat = oauthUtil.getOauthAccessToken(oauthCode);
    if (oat == null) return null;
    else {
      SnsUserInfo userInfo = oauthUtil.getSnsUserInfo(oat.getAccess_token(), oat.getOpenid());
      if (userInfo == null) return null;
      else {
        return userInfo.getOpenid();
      }
    }
  }

  @Override
  public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
      ModelAndView modelAndView) throws Exception {
  }

  @Override
  public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
      throws Exception {
  }

  public static String getIpAddr(HttpServletRequest request) {
    String ip = request.getHeader(" x-forwarded-for ");
    if (ip == null || ip.length() == 0 || " unknown ".equalsIgnoreCase(ip)) {
      ip = request.getHeader(" Proxy-Client-IP ");
    }
    if (ip == null || ip.length() == 0 || " unknown ".equalsIgnoreCase(ip)) {
      ip = request.getHeader(" WL-Proxy-Client-IP ");
    }
    if (ip == null || ip.length() == 0 || " unknown ".equalsIgnoreCase(ip)) {
      ip = request.getRemoteAddr();
    }
    return ip;
  }
}
