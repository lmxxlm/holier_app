package com.danrong.wx.qzfb.util.comm;

import net.sf.json.JSONObject;

public class JsonUtil {

  /**
   * jsonObject转bean
   * 
   * @param str
   * @param bean
   * @return
   */
  @SuppressWarnings("unchecked")
  public static <T> T jsonObject2Bean(String str, T bean) {
    return (T) MapUtil.map2Bean(JSONObject.fromObject(str), bean);
  }
}
