package com.danrong.wx.yzzpat.util;

import com.dr.core.util.TimeUtil;

public class AccessTokenUtil {

  private Spider spider;
  private String access_token = null;
  // 近期刷新时间
  private long last_refresh_time = 0l;
  // 微信服务器7200s
  private static final long time_out = 7000000l;
  public static final String wx_suffix_access_token = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="
      + AuthUtil.AppId + "&secret=" + AuthUtil.Secret;

  public AccessTokenUtil() {
    spider = new Spider();
  }

  /**
   * 获取accessToken
   * 
   * @param now
   * @return
   */
  public synchronized String getAccessToken(long now) {
    if (access_token == null) {
      return generate(now);
    } else {
      if (now - last_refresh_time <= time_out) return access_token;
      else return generate(now);
    }
  }

  /**
   * 生成accessToken
   * 
   * @param now
   * @return
   */
  private String generate(long now) {
    CResult cr = spider.crawl(wx_suffix_access_token, Config.charset);
    if (cr != null && !cr.isEmpty()) {
      String content = cr.content;
      AccessToken at = JsonUtil.jsonObject2Bean(content, new AccessToken());

      this.last_refresh_time = now;
      return this.access_token = at.getAccess_token();
    } else return null;
  }

  public static void main(String[] args) throws InterruptedException {
    AccessTokenUtil atUtil = new AccessTokenUtil();
    TimeUtil time = new TimeUtil();

    String s = atUtil.getAccessToken(time.now2l());
    System.out.println(s);
  }
}
