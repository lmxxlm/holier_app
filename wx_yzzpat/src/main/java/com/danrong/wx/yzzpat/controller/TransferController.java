package com.danrong.wx.yzzpat.controller;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.medex.configure.MedexConfigure;
import com.danrong.medex.configure.Status;
import com.danrong.medex.configure.TableFieldName;
import com.danrong.medex.module.ImagesUpload;
import com.danrong.medex.module.v2.kfhospital.V2KfBedroomModule;
import com.danrong.medex.module.v2.kfhospital.V2KfBedroomModuleImpl;
import com.danrong.medex.module.v2.kfhospital.V2KfHospitalModule;
import com.danrong.medex.module.v2.kfhospital.V2KfHospitalModuleImpl;
import com.danrong.medex.util.Help;
import com.danrong.medex.util.v2.BedRoomSearchQuery;
import com.danrong.medex.util.v2.HospitalSearchQuery;
import com.danrong.medex.util.v2.KfOrderStatus;
import com.danrong.wx.yzzpat.module.KfHospitalMapModule;
import com.danrong.wx.yzzpat.module.KfHospitalMapModuleImpl;
import com.danrong.wx.yzzpat.module.KfOrderModule;
import com.danrong.wx.yzzpat.module.KfOrderModuleImpl;
import com.danrong.wx.yzzpat.util.JsApiAuthUtil;
import com.danrong.wx.yzzpat.util.SessionUtil;
import com.dr.core.util.TimeUtil;

@Controller
public class TransferController {

  @Value("#{properties['wx_yzzpat.web.host']}")
  public String mainUrl;

  @Value("#{properties['wx_yzzpat.images.url']}")
  public String imagesUrl;

  private final V2KfHospitalModule v2kfHospitalModule = new V2KfHospitalModuleImpl();
  private final V2KfBedroomModule v2kfBedrooomModule = new V2KfBedroomModuleImpl();
  private final KfOrderModule kfOrderModule = new KfOrderModuleImpl();
  private final SessionUtil sessionUtil = new SessionUtil();
  private final JsApiAuthUtil jsApiAuthUtil = new JsApiAuthUtil();
  private final TimeUtil timeUtil = new TimeUtil();

  private final KfHospitalMapModule kfHospitalMapModule = new KfHospitalMapModuleImpl();

  @RequestMapping(value = "turn_hospital")
  public ModelAndView turn_hospital(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("turn_hospital");
    view.addObject("mainUrl", mainUrl.trim());

    // 获取医院列表
    List<Map<String, Object>> data = get_list_data(new HospitalSearchQuery());

    if (data.isEmpty()) view.addObject("nolist", true);

    view.addObject("data", data);

    String strBackUrl = "http://" + request.getServerName() + request.getContextPath() + request.getServletPath();
    view.addObject("wx_config", jsApiAuthUtil.getjsApiConfig(strBackUrl));
    return view;
  }

  // 地图展示
  @RequestMapping(value = "getPoints.do", produces = "application/string; charset=utf-8")
  @ResponseBody
  public String getPoints(HttpServletRequest request, HttpServletResponse response) {
    Map<String, Object> result = new HashMap<>();
    // 获取参数
    String province = request.getParameter("province");
    String city = request.getParameter("city");
    String area = request.getParameter("area");

    boolean status = true;
    if (StringUtils.isNotBlank(province) && StringUtils.isBlank(city) && StringUtils.isBlank(area)) {
      result.put("data", kfHospitalMapModule.getPointsByProvince(province));
    } else if (StringUtils.isNotBlank(province) && StringUtils.isNotBlank(city) && StringUtils.isBlank(area)) {
      result.put("data", kfHospitalMapModule.getPointsByCity(province, city));
    } else if (StringUtils.isNotBlank(province) && StringUtils.isNotBlank(city) && StringUtils.isNotBlank(area)) {
      result.put("data", kfHospitalMapModule.getPointsByArea(province, city, area));
    } else {
      status = false;
    }
    result.put("status", status);

    return Help.bean2Json(result);
  }

  @RequestMapping(value = "search_kf_hospital.do", produces = "application/string; charset=utf-8")
  @ResponseBody
  public String search_kf_hospital(HttpServletRequest request, HttpServletResponse response) {
    HospitalSearchQuery query = new HospitalSearchQuery();
    query.setCity(request.getParameter("city"));
    query.setDistrict(request.getParameter("district"));
    query.setName(request.getParameter("hosName"));
    if (StringUtils.isNotBlank(request.getParameter("auth"))) query.setAuth(Boolean.parseBoolean(request
        .getParameter("auth")));
    query.setSort_key(request.getParameter("sort_key"));
    if (StringUtils.isNotBlank(request.getParameter("cp"))) query.setCp(Integer.parseInt(request.getParameter("cp")));
    if (StringUtils.isNotBlank(request.getParameter("lat"))) query.setLat(Double.parseDouble(request
        .getParameter("lat")));
    if (StringUtils.isNotBlank(request.getParameter("lng"))) query.setLng(Double.parseDouble(request
        .getParameter("lng")));

    List<Map<String, Object>> data = get_list_data(query);

    Map<String, Object> result = new HashMap<>();
    result.put("data", data);
    result.put("status", 0);

    return Help.bean2Json(result);
  }

  @RequestMapping(value = "search_kf_hospital_by_name.do", produces = "application/string; charset=utf-8")
  @ResponseBody
  public ModelAndView search_kf_hospital_by_name(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("turn_hospital");
    view.addObject("mainUrl", mainUrl.trim());

    HospitalSearchQuery query = new HospitalSearchQuery();
    query.setName(request.getParameter("hosName"));

    List<Map<String, Object>> data = get_list_data(query);
    if (data.isEmpty()) view.addObject("nolist", true);

    view.addObject("data", data);
    String strBackUrl = "http://" + request.getServerName() + request.getContextPath() + request.getServletPath();
    view.addObject("wx_config", jsApiAuthUtil.getjsApiConfig(strBackUrl));
    return view;
  }

  @RequestMapping(value = "ward_list")
  public ModelAndView ward_list(HttpServletRequest request, HttpServletResponse response, String hosId) {
    ModelAndView view = new ModelAndView();
    view.setViewName("ward_list");
    view.addObject("mainUrl", mainUrl.trim());

    // 医院详情
    Map<String, Object> detail = get_hospital_detail(hosId);
    // 病房列表
    BedRoomSearchQuery bq = new BedRoomSearchQuery();
    bq.setHospital_id(hosId);

    List<Map<String, Object>> bed_room_list = get_bedroom_list(bq);

    if (bed_room_list.isEmpty()) view.addObject("nolist", true);

    view.addObject("bed_room_list", JSONArray.fromObject(bed_room_list));
    view.addObject("current_date", timeUtil.now2s2());
    view.addObject("detail", detail);

    return view;
  }

  @RequestMapping(value = "order_sickroom")
  public ModelAndView order_sickroom(HttpServletRequest request, HttpServletResponse response, String date,
      String hospital_id, String bedroom_id, boolean pss) {
    ModelAndView view = new ModelAndView();
    view.setViewName("order_sickroom");
    view.addObject("mainUrl", mainUrl.trim());

    Map<String, Object> dateObject = new HashMap<>();
    dateObject.put("current_date", timeUtil.now2s2());
    dateObject.put("transfer_date", date);

    view.addObject("date", dateObject);
    view.addObject("hospital_id", hospital_id);
    view.addObject("hospital_name", get_hospital_name(hospital_id));
    view.addObject("bedroom_id", bedroom_id);
    view.addObject("bedroom_name", get_bedroom_name(bedroom_id));
    view.addObject("pss", pss);

    return view;
  }

  @RequestMapping(value = "turn_hospital_order")
  public ModelAndView turn_hospital_order(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName("turn_hospital_order");
    view.addObject("mainUrl", mainUrl.trim());

    // 获取订单记录
    List<Map<String, Object>> data = kfOrderModule.list(sessionUtil.getUserOpenid(request.getSession()), 1, 10);
    view.addObject("data", data);

    return view;
  }

  @RequestMapping(value = "get_more_kf_order.do", produces = "application/string; charset=utf-8")
  @ResponseBody
  public String get_more_kf_order(HttpServletRequest request, HttpServletResponse response, int cp) {
    Map<String, Object> result = new HashMap<>();
    if (cp < 1) result.put(TableFieldName.status, Status.STATUS_ERROR);
    else {

      List<Map<String, Object>> data = kfOrderModule.list(sessionUtil.getUserOpenid(request.getSession()), cp, 10);
      if (data != null) {
        result.put(TableFieldName.status, Status.STATUS_OK);

        result.put("data", data);
      } else result.put(TableFieldName.status, Status.STATUS_ERROR);
    }
    return Help.bean2Json(result);
  }

  @RequestMapping(value = "trans_order_detail")
  public ModelAndView trans_order_detail(HttpServletRequest request, HttpServletResponse response, String order_id) {
    ModelAndView view = new ModelAndView();
    view.setViewName("trans_order_detail");
    view.addObject("mainUrl", mainUrl.trim());

    Map<String, Object> order = kfOrderModule.detail(order_id);
    view.addObject("data", order);

    return view;
  }

  @RequestMapping(method = RequestMethod.POST, value = "cancel_kf_order.do")
  @ResponseBody
  public int cancel_kf_order(HttpServletRequest request, String order_id) {
    String openid = sessionUtil.getUserOpenid(request.getSession());
    if (StringUtils.isBlank(openid)) return -1;

    return kfOrderModule.calcel(order_id, openid);
  }

  @RequestMapping(method = RequestMethod.POST, value = "confirm_trans.do")
  @ResponseBody
  public int confirm_trans(@RequestParam("picFiles") List<MultipartFile> files, HttpServletRequest request) {
    String wxid = sessionUtil.getUserOpenid(request.getSession());
    if (StringUtils.isBlank(wxid)) return -1;

    Map<String, Object> orderValue = buildV2SubmitKfOrderRequest(request);

    List<Map<String, String>> pics = new LinkedList<>();
    for (MultipartFile file : files) {
      Map<String, String> fileNames = ImagesUpload.getInstance().uploadAndScale(file);
      Map<String, String> fileData = new LinkedHashMap<>();
      for (String key : fileNames.keySet()) {
        fileData.put(key, imagesUrl + fileNames.get(key));
      }
      pics.add(fileData);
    }
    if (!pics.isEmpty()) orderValue.put("report_images", pics);

    return kfOrderModule.submitOrder(orderValue, wxid);
  }

  @RequestMapping(value = "get_more_hos_records.do", produces = "application/string; charset=utf-8")
  @ResponseBody
  public String get_more_hos_records(HttpServletRequest request, HttpServletResponse response) {
    Map<String, Object> result = new HashMap<>();

    HospitalSearchQuery param = new HospitalSearchQuery();
    param.setCity(request.getParameter("city"));
    param.setDistrict(request.getParameter("district"));
    param.setSort_key(request.getParameter("sort_key"));
    if (StringUtils.isNotBlank(request.getParameter("cp"))) param.setCp(Integer.parseInt(request.getParameter("cp")));
    if (StringUtils.isNotBlank(request.getParameter("lat"))) param.setLat(Double.parseDouble(request
        .getParameter("lat")));
    if (StringUtils.isNotBlank(request.getParameter("lng"))) param.setLng(Double.parseDouble(request
        .getParameter("lng")));

    List<Map<String, Object>> data = get_list_data(param);
    if (data != null) {
      result.put(TableFieldName.status, Status.STATUS_OK);

      result.put("data", data);
    } else result.put(TableFieldName.status, Status.STATUS_ERROR);
    return Help.bean2Json(result);
  }

  @RequestMapping(value = "get_city.do", produces = "application/string; charset=utf-8")
  @ResponseBody
  public String get_city(HttpServletRequest request, HttpServletResponse response) {
    Map<String, Object> result = new HashMap<>();

    List<String> data = v2kfHospitalModule.getKfCityList();
    result.put("data", data);

    return Help.bean2Json(result);
  }

  @RequestMapping(value = "get_area.do", produces = "application/string; charset=utf-8")
  @ResponseBody
  public String get_area(HttpServletRequest request, HttpServletResponse response, String city) {
    Map<String, Object> result = new HashMap<>();

    List<String> data = v2kfHospitalModule.getKfDistrictListByCity(city);
    result.put("data", data);

    return Help.bean2Json(result);
  }

  private List<Map<String, Object>> get_list_data(HospitalSearchQuery param) {
    List<Map<String, Object>> datalist = v2kfHospitalModule.getKfHospitals(param);

    List<Map<String, Object>> data = new LinkedList<>();
    if (datalist != null) {
      for (Map<String, Object> map : datalist) {
        Map<String, Object> subdata = new HashMap<>();
        subdata.put("hospital_id", map.get("record_id"));
        subdata.put("hospital_name", map.get("name"));
        subdata.put("hospital_image", map.get("image"));
        subdata.put("auth", map.get("auth"));
        subdata.put("district", map.get("district"));
        subdata.put("pss", map.get("pss"));
        subdata.put("departments", map.get("departments"));
        subdata.put("distance", map.get("distance"));
        data.add(subdata);
      }
    }
    return data;
  }

  private String get_hospital_name(String hospital_id) {
    Map<String, Object> datamap = v2kfHospitalModule.findByHospitalId(hospital_id);
    if (datamap != null) {
      return (String) datamap.get("name");
    } else return "";

  }

  @SuppressWarnings("unchecked")
  private Map<String, Object> get_hospital_detail(String hospital_id) {
    Map<String, Object> datamap = v2kfHospitalModule.findByHospitalId(hospital_id);
    Map<String, Object> data = new HashMap<>();
    if (datamap != null) {
      data.put("hospital_id", datamap.get("record_id"));
      data.put("hospital_name", datamap.get("name"));
      data.put("hospital_pictures", datamap.get("pictures"));
      data.put("bednumber", datamap.get("bednumber"));
      data.put("address", datamap.get("address"));
      data.put("location", datamap.get("location"));
      data.put("intro", datamap.get("intro"));
      boolean auth = (boolean) datamap.get("auth");
      data.put("auth", auth);
      data.put("pss", datamap.get("pss"));
      // 医院认证详情
      if (auth) data.put("v_intro", "浙江省医学会授牌医疗机构");
      List<String> tags = new LinkedList<>();
      List<String> departments = (List<String>) datamap.get("departments");
      boolean pss = (boolean) datamap.get("pss");
      if (pss) tags.add("转运车接送");
      tags.addAll(departments);
      data.put("tags", tags);
    }
    return data;
  }

  private List<Map<String, Object>> get_bedroom_list(BedRoomSearchQuery param) {
    List<Map<String, Object>> datalist = v2kfBedrooomModule.getKfBedrooms(param);
    List<Map<String, Object>> data = new LinkedList<>();
    if (datalist != null) {
      for (Map<String, Object> map : datalist) {
        Map<String, Object> subdata = new HashMap<>();
        subdata.put("bedroom_id", map.get("record_id"));
        subdata.put("bedroom_name", map.get("name"));
        subdata.put("bedroom_image", map.get("image"));
        subdata.put("space", map.get("space"));
        subdata.put("tags", map.get("tags"));
        subdata.put("floor", map.get("floor"));
        subdata.put("bedroom_pictures", map.get("pictures"));
        subdata.put("bednumber", map.get("bednumber"));
        subdata.put("price", MedexConfigure.kf_bedroom_price_type + map.get("price") + " "
            + MedexConfigure.kf_bedroom_price_unit);

        data.add(subdata);
      }
    }
    return data;
  }

  private String get_bedroom_name(String bedroom_id) {
    Map<String, Object> detail = v2kfBedrooomModule.getKfBedroomDetail(bedroom_id);
    if (detail != null) {
      return (String) detail.get("name");
    } else return "";

  }

  public Map<String, Object> buildV2SubmitKfOrderRequest(HttpServletRequest request) {
    Map<String, Object> order = new HashMap<>();
    order.put("status", KfOrderStatus.during_transfer);
    Object pss_o = request.getParameter("pss");
    boolean pss = false;
    if (pss_o != null) pss = Boolean.parseBoolean((String) pss_o);
    order.put("pss", pss);
    order.put("open", false);
    order.put("hospital_id", request.getParameter("hospital_id"));
    order.put("bedroom_id", request.getParameter("bedroom_id"));
    order.put("check_in_time", timeUtil.s2l2(request.getParameter("check_in_time")));
    order.put("patient_name", request.getParameter("patient_name"));
    order.put("patient_phone", request.getParameter("patient_phone"));
    order.put("transfer_time", timeUtil.s2l2(request.getParameter("transfer_time")));

    order.put("create_time", timeUtil.now2l());

    if (StringUtils.isNotBlank(request.getParameter("patient_desc"))) order.put("patient_desc",
        request.getParameter("patient_desc"));
    return order;
  }
}