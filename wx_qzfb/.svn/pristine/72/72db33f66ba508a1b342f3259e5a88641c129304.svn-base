package com.danrong.wx.qzfb.module.department;

import java.util.List;

import com.danrong.wx.qzfb.util.comm.SpiderFlag;
import com.danrong.wx.qzfb.util.xml.CResult;
import com.danrong.wx.qzfb.util.xml.Config;
import com.danrong.wx.qzfb.util.xml.Spider;
import com.danrong.wx.qzfb.util.xml.XmlParser;

public class DepartmentModuleImpl implements DepartmentModule {

  // private static Logger logger = LoggerFactory.getLogger(DepartmentModuleImpl.class);
  private Spider spider;

  public DepartmentModuleImpl() {
    this.spider = new Spider();
  }

  // public static void main(String[] args) {
  // List<Department> dl = new DepartmentModuleImpl().all("121");
  // for (Department d : dl) {
  // System.out.println(d.getDepartmentName() + " " + d.getDepartmentCode());
  // }
  // }

  @Override
  public List<Department> all(String extUserID) {
    CResult cr = spider.crawl(SpiderFlag.HIS, Config.suffix_department_list, Config.charset, extUserID);
    if (cr == null || cr.isEmpty()) return null;
    else return XmlParser.parseDepartment(cr.content, Config.charset);
  }

  @Override
  public String getDepartmentIntro(String departmentCode) {
    // TODO Auto-generated method stub
    return "暂无";
  }

}
