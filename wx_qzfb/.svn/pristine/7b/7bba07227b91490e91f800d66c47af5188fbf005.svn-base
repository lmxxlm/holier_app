package com.danrong.wx.qzfb.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.wx.qzfb.module.department.Department;
import com.danrong.wx.qzfb.module.department.DepartmentModule;
import com.danrong.wx.qzfb.module.department.DepartmentModuleImpl;
import com.danrong.wx.qzfb.module.department.SecondDepartment;
import com.danrong.wx.qzfb.module.doctor.DoctorModule;
import com.danrong.wx.qzfb.module.doctor.DoctorModuleImpl;
import com.danrong.wx.qzfb.util.comm.JSTLField;
import com.danrong.wx.qzfb.util.comm.ViewName;

@Controller
public class DepartmentController {

  @Value("#{properties['wx_qzfb.web.host']}")
  public String mainUrl;

  @Value("#{properties['wx_qzfb.doctor.images.mainUrl']}")
  public String doctorImageUrl;

  private DoctorModule doctorModule = new DoctorModuleImpl();
  private DepartmentModule departmentModule = new DepartmentModuleImpl();

  private static Set<String> valid_department = new HashSet<>();
  static {
    try (BufferedReader reader = new BufferedReader(new InputStreamReader(
        DepartmentController.class.getResourceAsStream("/valid_department.txt")))) {
      String line = "";
      while ((line = reader.readLine()) != null) {
        if (line.contains("=")) {
          String[] arr = line.split("=");
          if (arr.length == 2) valid_department.add(arr[0].trim());
        }
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  private static Map<String, String> newFirstDepart = new LinkedHashMap<>();
  static {
    newFirstDepart.put("01", "妇科");
    newFirstDepart.put("02", "产科");
    newFirstDepart.put("10", "产前诊断中心");
    newFirstDepart.put("11", "生殖中心");
    newFirstDepart.put("03", "儿科");
    newFirstDepart.put("04", "妇保");
    newFirstDepart.put("05", "儿保");
    newFirstDepart.put("06", "口腔");
    newFirstDepart.put("07", "内科");
    newFirstDepart.put("08", "外科");
    newFirstDepart.put("09", "其它");
  }

  private static Map<String, List<String>> departRelation = new LinkedHashMap<>();
  static {
    try {
      InputStream in = DepartmentController.class.getClassLoader().getResourceAsStream("fsdp.properties");
      Properties properties = new Properties();
      properties.load(in);

      Enumeration<?> enu = properties.propertyNames();
      while (enu.hasMoreElements()) {
        String key = (String) enu.nextElement();
        String value = properties.getProperty(key);

        if (StringUtils.isNotBlank(key) && StringUtils.isNotBlank(value)) {
          List<String> vlist = new LinkedList<>();
          String[] arr = value.split(",");
          for (int i = 0; i < arr.length; vlist.add(arr[i]), i++);

          departRelation.put(key, vlist);
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  private static Map<String, String> newSecondDepart = new LinkedHashMap<>();
  static {
    newSecondDepart.put("27", "妇科门诊");
    newSecondDepart.put("105", "妇科专家门诊");
    newSecondDepart.put("22", "产科门诊");
    newSecondDepart.put("106", "产科专家门诊");
    newSecondDepart.put("32", "儿科门诊");
    newSecondDepart.put("104", "儿科专家门诊");
    newSecondDepart.put("96", "儿童内分泌专家门诊");
    newSecondDepart.put("94", "省儿保专科门诊");
    newSecondDepart.put("54", "妇保科门诊");
    newSecondDepart.put("102", "妇保科专家门诊");
    newSecondDepart.put("53", "儿保科门诊");
    newSecondDepart.put("103", "儿保科专家门诊");
    newSecondDepart.put("72", "儿保科眼科");
    newSecondDepart.put("62", "口腔科普通门诊");
    newSecondDepart.put("101", "口腔科专家门诊");
    newSecondDepart.put("64", "内科普通门诊");
    newSecondDepart.put("100", "内科专家门诊");
    newSecondDepart.put("97", "外科普通门诊");
    newSecondDepart.put("67", "外科专家门诊");
    newSecondDepart.put("68", "乳腺外科门诊");
    newSecondDepart.put("70", "小儿外科门诊");
    newSecondDepart.put("69", "男性科门诊");
    newSecondDepart.put("98", "男性科专家门诊");
    newSecondDepart.put("109", "疼痛专家门诊");
    newSecondDepart.put("78", "生殖内分泌科门诊");
    newSecondDepart.put("129", "产前诊断专家门诊");
  }

  @RequestMapping(value = ViewName.department_list)
  public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName(ViewName.department_list);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    // 获取科室列表数据
    // List<Department> department_list = departmentModule.all(Config.default_userid);
    // // 过滤
    // List<Department> result = new LinkedList<>();
    // for (Department dp : department_list) {
    // if (valid_department.contains(dp.getDepartmentCode())) result.add(dp);
    // }
    // 妈的按照张科的意思重新排序，fuck
    List<Department> result = new LinkedList<>();
    for (String code : newFirstDepart.keySet()) {
      Department dp = new Department();
      dp.setDepartmentCode(code);
      dp.setDepartmentName(newFirstDepart.get(code));

      result.add(dp);
    }

    view.addObject(JSTLField.data, result);

    return view;
  }

  @RequestMapping(value = "two_department_list")
  public ModelAndView two_department_list(HttpServletRequest request, HttpServletResponse response,
      String departmentCode) {
    ModelAndView view = new ModelAndView();
    view.setViewName("two_department_list");
    view.addObject(JSTLField.mainUrl, mainUrl.trim());

    // 获取数据
    List<String> codeList = departRelation.get(departmentCode);
    List<SecondDepartment> secondDepartmentList = new LinkedList<>();
    if (codeList != null) {
      for (String code : codeList) {
        SecondDepartment sd = new SecondDepartment();
        sd.setDepartmentCode(code);
        sd.setDepartmentName(newSecondDepart.get(code));
        sd.setDepartmentIntro(departmentModule.getDepartmentIntro(code));
        sd.setDoctorList(doctorModule.getDoctorsByMyDepartment(doctorImageUrl, code));
        secondDepartmentList.add(sd);
      }
      view.addObject("secondDepartmentList", secondDepartmentList);
    } else {
      view.addObject("nolist", true);
    }
    view.addObject("firstDepartmentName", newFirstDepart.get(departmentCode));
    return view;
  }

  @RequestMapping(value = "test")
  public ModelAndView test(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("test");
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }

  @RequestMapping(value = "test1")
  public ModelAndView test1(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("test1");
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }

  @RequestMapping(value = "hospitalInfo")
  public ModelAndView hospitalInfo(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("hospitalInfo");
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }

  @RequestMapping(value = "connectUs")
  public ModelAndView connectUs(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("connectUs");
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }

  @RequestMapping(value = "babyArticleList")
  public ModelAndView babyArticleList(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("babyArticleList");
    view.addObject(JSTLField.mainUrl, mainUrl.trim());
    return view;
  }
}
