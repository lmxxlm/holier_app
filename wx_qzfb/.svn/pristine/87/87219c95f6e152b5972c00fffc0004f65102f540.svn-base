package com.danrong.wx.qzfb.module.log;

import com.danrong.wx.qzfb.module.order.OrderQuery;
import com.danrong.wx.qzfb.module.order.OrderResult;

public class OrderLog extends Log {

  private String cardNo;// 患者卡号
  private String cardType;// 卡类型
  private String scheduleItemCode;// 排班号
  private String resultCode;// 返回码
  private String resultContent;// 返回内容
  private String orderCode;// 预约单号
  private String seqCode;// 就诊序号
  private String regFee;// 挂号费
  private String orderContent;// 预约内容
  private long timestamp;// 操作时间
  private final String type = "orderSubmit";// 日志类型

  public OrderLog(OrderQuery query, OrderResult orderResult, long timestamp) {
    this.cardNo = query.getCardNo();
    this.cardType = query.getCardType();
    this.scheduleItemCode = query.getScheduleItemCode();
    this.resultCode = orderResult.getResultCode();
    this.resultContent = orderResult.getResultContent();
    this.orderCode = orderResult.getOrderCode();
    this.seqCode = orderResult.getSeqCode();
    this.regFee = orderResult.getRegFee();
    this.orderContent = orderResult.getOrderContent();
    this.timestamp = timestamp;
  }

  public String getCardNo() {
    return cardNo;
  }

  public void setCardNo(String cardNo) {
    this.cardNo = cardNo;
  }

  public String getCardType() {
    return cardType;
  }

  public void setCardType(String cardType) {
    this.cardType = cardType;
  }

  public String getScheduleItemCode() {
    return scheduleItemCode;
  }

  public void setScheduleItemCode(String scheduleItemCode) {
    this.scheduleItemCode = scheduleItemCode;
  }

  public String getResultCode() {
    return resultCode;
  }

  public void setResultCode(String resultCode) {
    this.resultCode = resultCode;
  }

  public String getResultContent() {
    return resultContent;
  }

  public void setResultContent(String resultContent) {
    this.resultContent = resultContent;
  }

  public String getOrderCode() {
    return orderCode;
  }

  public void setOrderCode(String orderCode) {
    this.orderCode = orderCode;
  }

  public String getSeqCode() {
    return seqCode;
  }

  public void setSeqCode(String seqCode) {
    this.seqCode = seqCode;
  }

  public String getRegFee() {
    return regFee;
  }

  public void setRegFee(String regFee) {
    this.regFee = regFee;
  }

  public String getOrderContent() {
    return orderContent;
  }

  public void setOrderContent(String orderContent) {
    this.orderContent = orderContent;
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
