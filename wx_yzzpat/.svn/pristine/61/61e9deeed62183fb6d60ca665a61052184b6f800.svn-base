package com.danrong.wx.yzzpat.util;

import com.dr.core.util.TimeUtil;

public class JsApiTicketUtil {

  private Spider spider;
  private String js_ticket = null;
  private AccessTokenUtil atUtil;
  // 近期刷新时间
  private long last_refresh_time = 0l;
  // 微信服务器7200s
  private static final long time_out = 7000000l;
  public static final String wx_suffix_js_ticket = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=%s&type=jsapi";

  public JsApiTicketUtil() {
    spider = new Spider();
    atUtil = new AccessTokenUtil();
  }

  /**
   * 获取js_ticket
   * 
   * @param now
   * @return
   */
  public synchronized String getJsTicket(long now) {
    if (js_ticket == null) {
      return generate(now);
    } else {
      if (now - last_refresh_time <= time_out) return js_ticket;
      else return generate(now);
    }
  }

  /**
   * 生成js_ticket
   * 
   * @param now
   * @return
   */
  private String generate(long now) {
    CResult cr = spider.crawl(String.format(wx_suffix_js_ticket, atUtil.getAccessToken(now)), Config.charset);
    if (cr != null && !cr.isEmpty()) {
      String content = cr.content;
      JsApiTicket at = JsonUtil.jsonObject2Bean(content, new JsApiTicket());

      this.last_refresh_time = now;
      return this.js_ticket = at.getTicket();
    } else return null;
  }

  public static void main(String[] args) throws InterruptedException {
    JsApiTicketUtil jsTicketUtil = new JsApiTicketUtil();
    TimeUtil timeUtil = new TimeUtil();

    String ticket = jsTicketUtil.getJsTicket(timeUtil.now2l());
    System.out.println(ticket);
  }

}
