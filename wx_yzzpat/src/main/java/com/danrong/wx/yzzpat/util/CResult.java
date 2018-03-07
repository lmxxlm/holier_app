package com.danrong.wx.yzzpat.util;

import org.apache.commons.lang.StringUtils;

public class CResult {

  public String content;

  public boolean isEmpty() {
    return StringUtils.isBlank(content) ? true : false;
  }
}
