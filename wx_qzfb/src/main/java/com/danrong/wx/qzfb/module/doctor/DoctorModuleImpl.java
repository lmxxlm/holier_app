package com.danrong.wx.qzfb.module.doctor;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.danrong.wx.qzfb.util.comm.ExcelOperater;
import com.danrong.wx.qzfb.util.comm.SpiderFlag;
import com.danrong.wx.qzfb.util.xml.CResult;
import com.danrong.wx.qzfb.util.xml.Config;
import com.danrong.wx.qzfb.util.xml.Spider;
import com.danrong.wx.qzfb.util.xml.XmlParser;

public class DoctorModuleImpl implements DoctorModule {

  // private static Logger logger = LoggerFactory.getLogger(DepartmentModuleImpl.class);
  private Spider spider;
  private ExcelOperater excelOperater;

  public DoctorModuleImpl() {
    this.spider = new Spider();
    this.excelOperater = new ExcelOperater();
  }

  @Override
  public List<Doctor> getDoctorsByDepartment(String departmentCode) {
    CResult cr = spider.crawl(SpiderFlag.HIS, Config.suffix_doctor_list, Config.charset, departmentCode);
    if (cr == null || cr.isEmpty()) return null;
    else return XmlParser.parseDoctor(cr.content, Config.charset);
  }

  @Override
  public List<Doctor> getDoctorsByMyDepartment(String doctorImageUrl, String departmentCode) {
    List<Doctor> doctors = new LinkedList<>();
    try {
      Map<String, List<Map<String, String>>> dataMap = excelOperater.getDepartmentDoctorList();
      List<Map<String, String>> l = dataMap.get(departmentCode);
      if (l != null) {
        for (Map<String, String> map : l) {
          Doctor doc = new Doctor();
          doc.setDoctorCode(map.get("id"));
          if (StringUtils.isBlank(map.get("image"))) doc.setDoctorImage("assets/image/productAdmin/default_toux.jpg");
          else doc.setDoctorImage(doctorImageUrl + map.get("image"));
          doc.setDoctorName(map.get("name"));
          doc.setDoctorTitle(map.get("position"));
          doctors.add(doc);
        }
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
    return doctors;
  }

  @Override
  public Doctor getDoctorDetailById(String doctorImageUrl, String doctorCode) {
    Doctor doctor = new Doctor();
    doctor.setDoctorImage("assets/image/productAdmin/default_toux.jpg");
    try {
      if (StringUtils.isNotBlank(doctorCode)) {
        Map<String, Map<String, String>> dataMap = excelOperater.getDoctorList();
        Map<String, String> doctormap = dataMap.get(doctorCode);
        if (dataMap != null && doctormap != null) {
          doctor.setDoctorCode(doctorCode);
          doctor.setDoctorSOffice(doctormap.get("S_Office"));
          if (StringUtils.isBlank(doctormap.get("image"))) doctor
              .setDoctorImage("assets/image/productAdmin/default_toux.jpg");
          else doctor.setDoctorImage(doctorImageUrl + doctormap.get("image"));
          doctor.setDoctorIntro(doctormap.get("info"));
          doctor.setDoctorJob(doctormap.get("job"));
          doctor.setDoctorLOffice(doctormap.get("L_Office"));
          doctor.setDoctorName(doctormap.get("name"));
          doctor.setOutpatientDate(doctormap.get("date"));
          doctor.setDoctorTitle(doctormap.get("position"));
        }
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
    return doctor;
  }
  // private static Map<String, String> newSecondDepart = new LinkedHashMap<>();
  // static {
  // newSecondDepart.put("27", "妇科门诊");
  // newSecondDepart.put("105", "妇科专家门诊");
  // newSecondDepart.put("22", "产科门诊");
  // newSecondDepart.put("106", "产科专家门诊");
  // newSecondDepart.put("32", "儿科门诊");
  // newSecondDepart.put("104", "儿科专家门诊");
  // newSecondDepart.put("96", "儿童内分泌专家门诊");
  // newSecondDepart.put("94", "省儿保专科门诊");
  // newSecondDepart.put("54", "妇保科门诊");
  // newSecondDepart.put("102", "妇保科专家门诊");
  // newSecondDepart.put("53", "儿保科门诊");
  // newSecondDepart.put("103", "儿保科专家门诊");
  // newSecondDepart.put("72", "儿保科眼科");
  // newSecondDepart.put("62", "口腔科普通门诊");
  // newSecondDepart.put("101", "口腔科专家门诊");
  // newSecondDepart.put("64", "内科普通门诊");
  // newSecondDepart.put("100", "内科专家门诊");
  // newSecondDepart.put("97", "外科普通门诊");
  // newSecondDepart.put("67", "外科专家门诊");
  // newSecondDepart.put("68", "乳腺外科门诊");
  // newSecondDepart.put("70", "小儿外科门诊");
  // newSecondDepart.put("69", "男性科门诊");
  // newSecondDepart.put("98", "男性科专家门诊");
  // newSecondDepart.put("109", "疼痛专家门诊");
  // }
  //
  // public static void main(String[] args) {
  // DoctorModuleImpl dm = new DoctorModuleImpl();
  // for (String departmentCode : newSecondDepart.keySet()) {
  // List<Doctor> doctors = dm.getDoctorsByDepartment(departmentCode);
  // System.out.println("===" + newSecondDepart.get(departmentCode) + "===");
  // for (Doctor doctor : doctors) {
  // System.out.println(doctor.getDoctorCode() + "  " + doctor.getDoctorName());
  // }
  // }
  // }

}
