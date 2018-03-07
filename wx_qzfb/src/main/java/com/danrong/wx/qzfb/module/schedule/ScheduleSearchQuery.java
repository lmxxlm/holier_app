package com.danrong.wx.qzfb.module.schedule;

import org.apache.commons.lang.StringUtils;

public class ScheduleSearchQuery {

  private String startDate;// 开始日期
  private String endDate;// 截止日期
  private String departmentCode;// 科室编号

  public boolean isEmpty() {
    return StringUtils.isBlank(startDate) || StringUtils.isBlank(endDate) || StringUtils.isBlank(departmentCode);
  }

  public String getStartDate() {
    return startDate;
  }

  public void setStartDate(String startDate) {
    this.startDate = startDate;
  }

  public String getEndDate() {
    return endDate;
  }

  public void setEndDate(String endDate) {
    this.endDate = endDate;
  }

  public String getDepartmentCode() {
    return departmentCode;
  }

  public void setDepartmentCode(String departmentCode) {
    this.departmentCode = departmentCode;
  }

}
