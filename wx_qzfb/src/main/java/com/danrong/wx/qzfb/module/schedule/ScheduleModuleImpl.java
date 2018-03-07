package com.danrong.wx.qzfb.module.schedule;

import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.lang.StringUtils;

import com.danrong.wx.qzfb.util.comm.SpiderFlag;
import com.danrong.wx.qzfb.util.xml.CResult;
import com.danrong.wx.qzfb.util.xml.Config;
import com.danrong.wx.qzfb.util.xml.Spider;
import com.danrong.wx.qzfb.util.xml.XmlParser;

public class ScheduleModuleImpl implements ScheduleModule {

  public static final int default_time_d = 5;
  private Spider spider;

  public ScheduleModuleImpl() {
    this.spider = new Spider();
  }

  @Override
  public List<Schedule> searchSchedules(ScheduleSearchQuery query) {
    CResult cr = spider.crawl(SpiderFlag.HIS, Config.suffix_schedule, Config.charset, Config.default_userid,
        query.getStartDate(), query.getEndDate(), query.getDepartmentCode());
    if (cr == null || cr.isEmpty()) return null;
    else {
      System.out.println(cr.content);
      return XmlParser.parseSchedules(cr.content, Config.charset);
    }
  }

  @Override
  public int getTimeDByDepartmentCode(String departmentCode) {
    Map<String, Integer> tdMap = readFromFile("time_d.properties");
    if (StringUtils.isNotBlank(departmentCode)) {
      Integer value = tdMap.get(departmentCode);
      if (value != null) return value;
      else return default_time_d;
    }
    return default_time_d;
  }

  private Map<String, Integer> readFromFile(String fileName) {
    Map<String, Integer> map = new HashMap<>();
    try {
      InputStream in = this.getClass().getClassLoader().getResourceAsStream(fileName);
      Properties properties = new Properties();
      properties.load(in);

      Enumeration<?> enu = properties.propertyNames();
      while (enu.hasMoreElements()) {
        String key = (String) enu.nextElement();
        String value = properties.getProperty(key);

        map.put(key, Integer.parseInt(value));
      }
    } catch (Exception e) {
      e.printStackTrace();
    }

    return map;
  }

  // public static void main(String[] args) {
  // ScheduleModuleImpl dm = new ScheduleModuleImpl();
  // ScheduleSearchQuery query = new ScheduleSearchQuery();
  // query.setDepartmentCode("27");
  // query.setStartDate("2016-06-02");
  // query.setEndDate("2016-06-02");
  // List<Schedule> schedules = dm.searchSchedules(query);
  // for (Schedule sch : schedules) {
  // for (Field field : MapUtil.getDeclaredFields(sch)) {
  // System.out.println(field.getName());
  // }
  // System.out.println("============");
  // }
  // }

}
