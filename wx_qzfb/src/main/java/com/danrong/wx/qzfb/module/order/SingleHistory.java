package com.danrong.wx.qzfb.module.order;

import java.io.Serializable;

public class SingleHistory implements Serializable {

  private static final long serialVersionUID = -8682921998074032240L;
  private String orderCode;// 预约单号
  private String orderApptDate;// 订单日期
  private String orderStatus;// 订单状态
  private String payFlag;// 支付状态
  private String orderApptUser;// 下单用户
  private String patientNo;// 病人主索引号（病人ID）
  private String admitDate;// 预约就诊日期
  private String doctor;// 门诊号
  private String doctorTitle;// 门诊标题（普通、专家）
  private String regFee;// 挂号费
  private String seqCode;// 就诊序号
  private String sessionName;// 时间区间（上午、下午）

  public String getOrderCode() {
    return orderCode;
  }

  public void setOrderCode(String orderCode) {
    this.orderCode = orderCode;
  }

  public String getOrderApptDate() {
    return orderApptDate;
  }

  public void setOrderApptDate(String orderApptDate) {
    this.orderApptDate = orderApptDate;
  }

  public String getOrderStatus() {
    return orderStatus;
  }

  public void setOrderStatus(String orderStatus) {
    this.orderStatus = orderStatus;
  }

  public String getOrderApptUser() {
    return orderApptUser;
  }

  public void setOrderApptUser(String orderApptUser) {
    this.orderApptUser = orderApptUser;
  }

  public String getPatientNo() {
    return patientNo;
  }

  public void setPatientNo(String patientNo) {
    this.patientNo = patientNo;
  }

  public String getAdmitDate() {
    return admitDate;
  }

  public void setAdmitDate(String admitDate) {
    this.admitDate = admitDate;
  }

  public String getDoctor() {
    return doctor;
  }

  public void setDoctor(String doctor) {
    this.doctor = doctor;
  }

  public String getDoctorTitle() {
    return doctorTitle;
  }

  public void setDoctorTitle(String doctorTitle) {
    this.doctorTitle = doctorTitle;
  }

  public String getRegFee() {
    return regFee;
  }

  public void setRegFee(String regFee) {
    this.regFee = regFee;
  }

  public String getSeqCode() {
    return seqCode;
  }

  public void setSeqCode(String seqCode) {
    this.seqCode = seqCode;
  }

  public String getSessionName() {
    return sessionName;
  }

  public void setSessionName(String sessionName) {
    this.sessionName = sessionName;
  }

  public String getPayFlag() {
    return payFlag;
  }

  public void setPayFlag(String payFlag) {
    this.payFlag = payFlag;
  }

}
