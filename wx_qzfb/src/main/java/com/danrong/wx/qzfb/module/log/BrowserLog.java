package com.danrong.wx.qzfb.module.log;

public class BrowserLog extends Log {

  private String openid;
  private String viewName;
  private long timestamp;
  private final String type = "browser";// 日志类型

  public BrowserLog(String openid, String viewName, long timestamp) {
    this.viewName = viewName;
    this.timestamp = timestamp;
  }

  public String getOpenid() {
    return openid;
  }

  public void setOpenid(String openid) {
    this.openid = openid;
  }

  public String getViewName() {
    return viewName;
  }

  public void setViewName(String viewName) {
    this.viewName = viewName;
  }

  public long getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(long timestamp) {
    this.timestamp = timestamp;
  }

  public String getType() {
    return type;
  }

}
