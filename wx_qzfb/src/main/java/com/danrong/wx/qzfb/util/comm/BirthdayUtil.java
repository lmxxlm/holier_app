package com.danrong.wx.qzfb.util.comm;

import org.apache.commons.lang.StringUtils;

public class BirthdayUtil {

  private static final String default_birthday = "1947-06-06";

  public static String getBirthDayByIdNo(String idNo) {
    if (StringUtils.isBlank(idNo)) return default_birthday;
    else {
      if (idNo.length() != 18) return default_birthday;
      else {
        String year = idNo.substring(6, 10);
        String month = idNo.substring(10, 12);
        String day = idNo.substring(12, 14);

        return year + "-" + month + "-" + day;
      }
    }
  }

  public static void main(String[] args) {
    System.out.println(BirthdayUtil.getBirthDayByIdNo("330106197412230024"));
  }
}
