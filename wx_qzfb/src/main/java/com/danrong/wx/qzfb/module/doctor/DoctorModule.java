package com.danrong.wx.qzfb.module.doctor;

import java.util.List;

public interface DoctorModule {

  /**
   * 获取对应科室的医生列表
   * 
   * @param departmentCode
   * @return
   */
  public List<Doctor> getDoctorsByDepartment(String departmentCode);

  /**
   * 获取自有科室的自有医生列表
   * 
   * @param departmentCode
   * @return
   */
  public List<Doctor> getDoctorsByMyDepartment(String doctorImageUrl, String departmentCode);

  /**
   * 根据医生ID获取医生详情
   * 
   * @param doctorCode
   * @return
   */
  public Doctor getDoctorDetailById(String doctorImageUrl, String doctorCode);
}
