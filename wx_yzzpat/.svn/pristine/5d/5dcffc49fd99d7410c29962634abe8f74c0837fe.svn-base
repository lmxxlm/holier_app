package com.danrong.wx.yzzpat.util;


public class UrlReplaceUtil {

  /**
   * 组装url
   * 
   * @param url
   * @param args
   * @return
   */
  public static String replace(String url, String... args) {
    if (args != null) for (int i = 0; i < args.length; url = url.replaceFirst(Config.suffix_arg_split, args[i++]));
    return url;
  }
}
