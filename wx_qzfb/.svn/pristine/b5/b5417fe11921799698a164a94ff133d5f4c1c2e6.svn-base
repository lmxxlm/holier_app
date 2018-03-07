package com.danrong.wx.qzfb.util.comm;

import java.util.HashMap;

import org.apache.commons.lang.StringUtils;

public class DataMap extends HashMap<String, Object> {

  private static final long serialVersionUID = 1665818097141415096L;

  @Override
  public Object put(String name, Object value) {
    if (StringUtils.isNotBlank(name)) {
      String c = name.charAt(0) + "";
      name = name.replaceFirst(c, c.toLowerCase());
    }
    return super.put(name, value);
  }
}
