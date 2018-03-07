package com.danrong.wx.yzzpat.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.danrong.medex.util.Help;
import com.dr.core.util.MD5;
import com.dr.core.util.TimeUtil;

public class JsApiAuthUtil {

  public static String AppId;
  private final TimeUtil timeUtil = new TimeUtil();
  private final JsApiTicketUtil jsApiTicketUtil = new JsApiTicketUtil();
  private final static ObjectMapper mapper = new ObjectMapper();
  static {
    BufferedReader fileReader = new BufferedReader(new InputStreamReader(
        JsonParser.class.getResourceAsStream("/wx_yzzpat_config.txt")));
    try {
      JsonNode rootNode = mapper.readTree(fileReader);
      AppId = rootNode.path("wx.appid").getTextValue().trim();
      fileReader.close();
    } catch (JsonProcessingException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  public String getjsApiConfig(String url) {
    long timestamp = timeUtil.now2l() / 1000;
    String nonceStr = MD5.md5(String.format("a%s", timestamp));

    Map<String, Object> config = new HashMap<>();
    config.put("debug", true);
    config.put("appId", AppId);
    config.put("timestamp", timestamp);
    config.put("nonceStr", nonceStr);

    config.put("signature", getJsApiAuthSign(nonceStr, jsApiTicketUtil.getJsTicket(timestamp), timestamp, url));
    config.put("jsApiList", new String[] { "getLocation" });

    return Help.bean2Json(config);
  }

  private String getJsApiAuthSign(String noncestr, String jsapi_ticket, long timestamp, String url) {
    String sign = String.format("jsapi_ticket=%s&noncestr=%s&timestamp=%d&url=%s", jsapi_ticket, noncestr, timestamp,
        url);

    sign = SHA.getSha1(sign);
    return sign;
  }

  public static void main(String[] args) {
    JsApiAuthUtil jaa = new JsApiAuthUtil();

    String url = "http://test.holier.cn/turn_hospital";

    String config = jaa.getjsApiConfig(url);
    System.out.println(config);
  }
}
