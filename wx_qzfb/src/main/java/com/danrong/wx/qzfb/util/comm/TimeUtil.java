package com.danrong.wx.qzfb.util.comm;

public class TimeUtil {

  public static long time2num(String time) {
    String[] array = time.split(":");
    int a = Integer.parseInt(array[0]);
    int b = Integer.parseInt(array[1]);

    return a * 60 * 60 + b * 60l;
  }

  public static String num2time(long time) {
    String a = time / 3600 + "";
    String b = (time % 3600) / 60 + "";

    if (a.length() == 1) a = "0" + a;
    if (b.length() == 1) b = "0" + b;

    return a + ":" + b;
  }

  // public static double str2dot(String str) {
  // String[] array = str.split(":");
  // int a = Integer.parseInt(array[0]);
  // double b = Integer.parseInt(array[1]) * 1.0 / 60;
  // return a + b;
  // }
  //
  // public static String dot2str(double dot) {
  // if (dot == 0) return "00:00";
  // int a = (int) dot;
  // int b = (int) (60 * (dot - a));
  //
  // if (a > 24) a = 24;
  // String p = "" + a;
  // if (a < 10) p = "0" + p;
  //
  // if (b > 60) b = 60;
  // String f = "" + b;
  // if (b < 10) f = "0" + f;
  //
  // return p + ":" + f;
  // }
}
