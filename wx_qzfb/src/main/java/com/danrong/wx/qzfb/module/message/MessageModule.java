package com.danrong.wx.qzfb.module.message;

import java.util.Map;

public interface MessageModule {

  /**
   * 消息处理
   * 
   * @param data
   * @return
   */
  public String messageHandler(Map<String, String> data);

  /**
   * 消息模板推送
   * 
   * @param data
   * @return
   */
  public String sendTemplate(String params);
}
