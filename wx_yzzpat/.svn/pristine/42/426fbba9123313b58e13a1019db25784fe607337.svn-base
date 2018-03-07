package com.danrong.wx.yzzpat.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;

public class AuthUtil {

  public static String AppId;
  public static String Secret;
  public static String token;
  private final static ObjectMapper mapper = new ObjectMapper();
  static {
    BufferedReader fileReader = new BufferedReader(new InputStreamReader(
        JsonParser.class.getResourceAsStream("/wx_yzzpat_config.txt")));
    try {
      JsonNode rootNode = mapper.readTree(fileReader);
      AppId = rootNode.path("wx.appid").getTextValue().trim();
      Secret = rootNode.path("wx.secret").getTextValue().trim();
      token = rootNode.path("wx.token").getTextValue().trim();
      fileReader.close();
    } catch (JsonProcessingException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  /**
   * 微信接入认证
   * 
   * @param token
   * @param timestamp
   * @param nonce
   * @param signature
   * @return
   */
  public static boolean wexAuth(String token, String timestamp, String nonce, String signature) {
    // 将token、timestamp、nonce三个参数进行字典序排序
    String[] arr = new String[] { token, timestamp, nonce };
    Arrays.sort(arr);

    // 将三个参数字符串拼接成一个字符串进行sha1加密
    StringBuffer buffer = new StringBuffer();
    for (int i = 0; i < arr.length; buffer.append(arr[i]), i++);

    String str = SHA.getSha1(buffer.toString());
    // 开发者获得加密后的字符串可与signature对比，标识该请求来源于微信
    return str.equals(signature);
  }
}
