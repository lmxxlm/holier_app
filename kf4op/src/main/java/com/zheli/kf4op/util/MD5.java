package com.zheli.kf4op.util;

import java.security.MessageDigest;

public class MD5 {

  private static char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

  public static void main(String[] args) {
    // String methodName = "mbl_add_favorite_expert";
    String methodName = "mbl_get_order_list";
    String time = "1459841161";
    String secret = "c2e0b345f00c67c9543414d73c9c618e";
    // String secret = "6923dba812b20eac2f5a642604af89c5";
    System.out.println(MD5.md5(methodName + time + secret));

    // System.out.println(MD5.md5("zjrb2016"));
    // System.out.println(MD5.md5("18105735665123456"));
  }

  public static String md5(String s) {
    try {
      byte[] btInput = s.getBytes();
      MessageDigest mdInst = MessageDigest.getInstance("MD5");
      mdInst.update(btInput);
      byte[] md = mdInst.digest();
      int j = md.length;
      char str[] = new char[j * 2];
      int k = 0;
      for (int i = 0; i < j; i++) {
        byte byte0 = md[i];
        str[k++] = hexDigits[byte0 >>> 4 & 0xf];
        str[k++] = hexDigits[byte0 & 0xf];
      }
      return new String(str);
    } catch (Exception e) {
      e.printStackTrace();
      return "";
    }
  }
}
