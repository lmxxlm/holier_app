package com.danrong.wx.qzfb.module.log;

public class CancelLog extends Log {

  private boolean resultCode;// 返回码
  private String orderCode;// 预约单号
  private long timestamp;// 操作时间
  private final String type = "orderCancel";// 日志类型

  public CancelLog(boolean resultCode, String orderCode, long timestamp) {
    this.resultCode = resultCode;
    this.orderCode = orderCode;
    this.timestamp = timestamp;
  }

  public boolean isResultCode() {
    return resultCode;
  }

  public void setResultCode(boolean resultCode) {
    this.resultCode = resultCode;
  }

  public String getOrderCode() {
    return orderCode;
  }

  public void setOrderCode(String orderCode) {
    this.orderCode = orderCode;
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
