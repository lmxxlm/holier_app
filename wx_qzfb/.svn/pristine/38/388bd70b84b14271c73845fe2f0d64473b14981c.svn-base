package com.danrong.wx.qzfb.util.wxauth;

import java.security.MessageDigest;

import org.apache.commons.lang.StringUtils;

public class SHA {

  private final static char[] hexDigits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e',
      'f' };

  // public static void main(String[] args) {
  // System.out.println(SHA.getSha1("14648802251484188975nohup"));
  // }

  public static String getSha1(String str) {
    if (StringUtils.isBlank(str)) return null;

    try {
      MessageDigest mdTemp = MessageDigest.getInstance("SHA1");
      mdTemp.update(str.getBytes("UTF-8"));

      byte[] md = mdTemp.digest();
      int j = md.length;
      char[] buf = new char[j * 2];
      int k = 0;
      for (int i = 0; i < j; i++) {
        byte byte0 = md[i];
        buf[k++] = hexDigits[byte0 >>> 4 & 0xf];
        buf[k++] = hexDigits[byte0 & 0xf];
      }

      return new String(buf);
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }

  }

}
