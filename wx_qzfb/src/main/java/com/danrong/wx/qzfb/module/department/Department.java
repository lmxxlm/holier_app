package com.danrong.wx.qzfb.module.department;

import java.io.Serializable;

public class Department implements Serializable {

  private static final long serialVersionUID = -4153770360606334175L;
  private String departmentName;
  private String departmentCode;

  public Department() {
  }

  public Department(String name, String code) {
    this.departmentCode = name;
    this.departmentName = name;
  }

  public String getDepartmentName() {
    return departmentName;
  }

  public void setDepartmentName(String departmentName) {
    this.departmentName = departmentName;
  }

  public String getDepartmentCode() {
    return departmentCode;
  }

  public void setDepartmentCode(String departmentCode) {
    this.departmentCode = departmentCode;
  }
}
