package com.danrong.wx.qzfb.module.schedule;

import java.io.Serializable;

public class Schedule implements Serializable {

  private static final long serialVersionUID = -3693705738497454492L;
  private String scheduleItemCode;// 编号
  private String serviceDate;// 服务日期
  private String weekDay;// 星期几
  private String sessionName;// 服务时间周期（上午、下午、全天）
  private String startTime;// 开始时间
  private String endTime;// 截止时间
  private String departmentCode;// 科室编码
  private String departmentName;// 科室名称
  private String doctorCode;// 医生编码
  private String doctorName;// 医生姓名
  private String doctorImage;// 医生头像
  private String doctorTitleCode;// 医生职称编码
  private String doctorTitle;// 医生职称
  private String doctorSessTypeCode;// sess类型代码
  private String doctorSessType;// sess类型
  private String fee;// 费用
  private String availableNum;// 可用号源

  public String getScheduleItemCode() {
    return scheduleItemCode;
  }

  public void setScheduleItemCode(String scheduleItemCode) {
    this.scheduleItemCode = scheduleItemCode;
  }

  public String getServiceDate() {
    return serviceDate;
  }

  public void setServiceDate(String serviceDate) {
    this.serviceDate = serviceDate;
  }

  public String getWeekDay() {
    return weekDay;
  }

  public void setWeekDay(String weekDay) {
    this.weekDay = weekDay;
  }

  public String getSessionName() {
    return sessionName;
  }

  public void setSessionName(String sessionName) {
    this.sessionName = sessionName;
  }

  public String getStartTime() {
    return startTime;
  }

  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  public String getEndTime() {
    return endTime;
  }

  public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

  public String getDepartmentCode() {
    return departmentCode;
  }

  public void setDepartmentCode(String departmentCode) {
    this.departmentCode = departmentCode;
  }

  public String getDepartmentName() {
    return departmentName;
  }

  public void setDepartmentName(String departmentName) {
    this.departmentName = departmentName;
  }

  public String getDoctorCode() {
    return doctorCode;
  }

  public void setDoctorCode(String doctorCode) {
    this.doctorCode = doctorCode;
  }

  public String getDoctorName() {
    return doctorName;
  }

  public void setDoctorName(String doctorName) {
    this.doctorName = doctorName;
  }

  public String getDoctorTitleCode() {
    return doctorTitleCode;
  }

  public void setDoctorTitleCode(String doctorTitleCode) {
    this.doctorTitleCode = doctorTitleCode;
  }

  public String getDoctorTitle() {
    return doctorTitle;
  }

  public void setDoctorTitle(String doctorTitle) {
    this.doctorTitle = doctorTitle;
  }

  public String getDoctorSessTypeCode() {
    return doctorSessTypeCode;
  }

  public void setDoctorSessTypeCode(String doctorSessTypeCode) {
    this.doctorSessTypeCode = doctorSessTypeCode;
  }

  public String getDoctorSessType() {
    return doctorSessType;
  }

  public void setDoctorSessType(String doctorSessType) {
    this.doctorSessType = doctorSessType;
  }

  public String getFee() {
    return fee;
  }

  public void setFee(String fee) {
    this.fee = fee;
  }

  public String getAvailableNum() {
    return availableNum;
  }

  public void setAvailableNum(String availableNum) {
    this.availableNum = availableNum;
  }

  public String getDoctorImage() {
    return doctorImage;
  }

  public void setDoctorImage(String doctorImage) {
    this.doctorImage = doctorImage;
  }

}
