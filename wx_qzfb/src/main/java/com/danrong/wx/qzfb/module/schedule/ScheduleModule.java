package com.danrong.wx.qzfb.module.schedule;

import java.util.List;

public interface ScheduleModule {

  /**
   * 获取科室对应的门诊排班
   * 
   * @param query
   * @return
   */
  public List<Schedule> searchSchedules(ScheduleSearchQuery query);

  /**
   * 根据科室id获取时间间隔
   * 
   * @param departmentCode
   * @return
   */
  public int getTimeDByDepartmentCode(String departmentCode);
}
