package com.zheli.kf4hp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.danrong.medex.configure.MedexConfigure;
import com.danrong.medex.module.SendMessageCallBackImpl;
import com.danrong.medex.module.SendMessageImpl;
import com.danrong.medex.module.v2.message.V2MessageMap;
import com.danrong.medex.module.v2.message.V2MessageModule;
import com.danrong.medex.module.v2.message.V2MessageModuleImpl;
import com.danrong.medex.module.v2.message.V2MessageType;
import com.danrong.medex.module.v2.order.V2KfOrderModule;
import com.danrong.medex.module.v2.order.V2KfOrderModuleImpl;
import com.danrong.medex.util.AccountGenerater;
import com.danrong.medex.util.MedexToken;
import com.danrong.medex.util.MessageUtil;
import com.danrong.medex.util.TokenGenerater;
import com.danrong.medex.util.v2.KfOrderSearchQuery;
import com.danrong.medex.util.v2.V2OrderStatus;
import com.danrong.medex.util.v2.V2PhoneMessageTemplate;
import com.danrong.medex.util.v2.V2TableFieldName;
import com.danrong.medex.util.v2.V2WithDrawStatus;
import com.dr.core.util.TimeUtil;
import com.zheli.kf4hp.util.JSTLField;
import com.zheli.kf4hp.util.SessionField;
import com.zheli.kf4hp.util.SessionParser;
import com.zheli.kf4hp.util.ViewName;

@Controller
public class OrderController {

  @Value("#{properties['kf4hp.web.host']}")
  public String mainUrl;

  private final V2KfOrderModule orderModule = new V2KfOrderModuleImpl();
  private final SessionParser sessionParser = new SessionParser();
  private final TimeUtil timeUtil = new TimeUtil();
  private final V2KfOrderModule kfModule = new V2KfOrderModuleImpl();
  private final MedexToken medexToken = new MedexToken();
  private final V2MessageModule v2MessageModule = new V2MessageModuleImpl();

  @RequestMapping(value = ViewName.needConfirm)
  public ModelAndView needConfirm(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName(ViewName.needConfirm);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());

    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    sessionParser.setSession(request, SessionField.token, token);
    view.addObject(SessionField.token, token);
    // 获取订单数据
    String hospital_id = sessionParser.getHospitalId(request.getSession());
    if (StringUtils.isNotBlank(hospital_id)) {
      KfOrderSearchQuery query = new KfOrderSearchQuery();
      query.setOpen(1);
      query.setStatus("待转院确认");
      query.setCp(1);
      query.setPs(100);
      //query.setHospital_id(hospital_id);

      List<Map<String, Object>> orderList = orderModule.getOrderList(query);
      for (Map<String, Object> map : orderList) {
        map.put("check_in_time", timeUtil.l2s2((long) map.get("check_in_time")));
      }
      if (orderList == null || orderList.isEmpty()) view.addObject("noRecord", true);
      view.addObject("orderList", orderList);
    }
    return view;
  }

  @RequestMapping(value = ViewName.pass)
  public ModelAndView pass(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName(ViewName.pass);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());

    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    sessionParser.setSession(request, SessionField.token, token);
    view.addObject(SessionField.token, token);
    // 获取订单数据
    String hospital_id = sessionParser.getHospitalId(request.getSession());
    if (StringUtils.isNotBlank(hospital_id)) {
      KfOrderSearchQuery query = new KfOrderSearchQuery();
      query.setOpen(1);
      query.setStatus("已转院");
      query.setCp(1);
      query.setPs(100);
      //query.setHospital_id(hospital_id);

      List<Map<String, Object>> orderList = orderModule.getOrderList(query);
      for (Map<String, Object> map : orderList) {
        map.put("check_in_time", timeUtil.l2s2((long) map.get("check_in_time")));
      }
      if (orderList == null || orderList.isEmpty()) view.addObject("noRecord", true);
      view.addObject("orderList", orderList);
    }
    return view;
  }

  @RequestMapping(value = ViewName.reject)
  public ModelAndView reject(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView view = new ModelAndView();
    view.setViewName(ViewName.reject);
    view.addObject(JSTLField.mainUrl, mainUrl.trim());

    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    sessionParser.setSession(request, SessionField.token, token);
    view.addObject(SessionField.token, token);
    // 获取订单数据
    String hospital_id = sessionParser.getHospitalId(request.getSession());
    if (StringUtils.isNotBlank(hospital_id)) {
      KfOrderSearchQuery query = new KfOrderSearchQuery();
      query.setStatus("已驳回转院申请");
      query.setOpen(1);
      query.setCp(1);
      query.setPs(100);
      //query.setHospital_id(hospital_id);

      List<Map<String, Object>> orderList = orderModule.getOrderList(query);
      for (Map<String, Object> map : orderList) {
        map.put("check_in_time", timeUtil.l2s2((long) map.get("check_in_time")));
      }
      if (orderList == null || orderList.isEmpty()) view.addObject("noRecord", true);
      view.addObject("orderList", orderList);
    }
    return view;
  }

  @RequestMapping(value = ViewName.kf_agree)
  @ResponseBody
  public boolean kf_agree(String orderid, HttpServletRequest request, HttpServletResponse response) {
    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    boolean result = false;

    // token 验证
    if (medexToken.matchToken(request) == MedexToken.code_mismatch) {
      result = false;
    } else if (StringUtils.isBlank(orderid)) result = false;
    else {
      return singleAgree(orderid);
    }
    // 重置session
    sessionParser.setSession(request, SessionField.token, token);
    return result;
  }

  @RequestMapping(value = ViewName.kf_agrees)
  @ResponseBody
  public boolean kf_agrees(String orderids, HttpServletRequest request, HttpServletResponse response) {
    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    boolean result = false;

    // token 验证
    if (medexToken.matchToken(request) == MedexToken.code_mismatch) {
      result = false;
    } else if (StringUtils.isBlank(orderids)) result = false;
    else {
      String[] array = orderids.split(",");
      for (String orderid : array) {
        boolean v = singleAgree(orderid);
        if (!v) return false;
      }
      return true;
    }
    // 重置session
    sessionParser.setSession(request, SessionField.token, token);
    return result;
  }

  @RequestMapping(value = ViewName.kf_reject)
  @ResponseBody
  public boolean kf_reject(String orderid, String reason, HttpServletRequest request, HttpServletResponse response) {
    String token = TokenGenerater.generateToken(AccountGenerater.generateHexString());
    boolean result = false;

    // token 验证
    if (medexToken.matchToken(request) == MedexToken.code_mismatch) {
      result = false;
    } else if (StringUtils.isBlank(orderid)) result = false;
    else {
      Map<String, Object> ori_detail = kfModule.getOrderDetail(orderid);
      String ori_status = (String) ori_detail.get("status");
      if ("已取消转院".equals(ori_status)) return result;

      Map<String, Object> order = new HashMap<>();
      order.put("orderid", orderid);
      order.put("status", "已驳回转院申请");
      order.put("remark", reason);
      boolean v = kfModule.update(order);
      if (v) {
        // 根据orderid获取详情
        Map<String, Object> detail = kfModule.getOrderDetail(orderid);
        if (detail != null) {
          String doctor_id = (String) detail.get("doctor_id");
          String hospital_name = (String) detail.get("hospital_name");
          String patient_name = (String) detail.get("patient_name");

          String message = V2PhoneMessageTemplate.template.get("v2_15");

          List<String> values = new ArrayList<>();
          values.add(hospital_name);
          values.add(patient_name);
          values.add(reason);

          message = MessageUtil.replace(message, values);
          v2MessageModule.addMessage(new V2MessageMap(doctor_id, MedexConfigure.destDoctor, message,
              V2MessageType.order));
          new Thread(new SendMessageImpl(doctor_id, message, new SendMessageCallBackImpl())).start();
        }

      }
      return v;
    }
    // 重置session
    sessionParser.setSession(request, SessionField.token, token);
    return result;
  }

  private boolean singleAgree(String orderid) {
    Map<String, Object> ori_detail = kfModule.getOrderDetail(orderid);
    String ori_status = (String) ori_detail.get("status");
    if ("已取消转院".equals(ori_status)) return false;

    Map<String, Object> order = new HashMap<>();
    order.put("orderid", orderid);
    order.put("status", V2OrderStatus.transferd);
    boolean v = kfModule.update(order);
    if (v) {
      // 根据orderid获取详情
      Map<String, Object> detail = kfModule.getOrderDetail(orderid);
      if (detail != null) {
        // 增加账单记录
        Map<String, Object> withdraw = new HashMap<>();
        withdraw.put("orderid", orderid);
        withdraw.put("complete_time", timeUtil.now2l());
        withdraw.put("patient_name", detail.get(V2TableFieldName.patient_name));
        withdraw.put("hospital_name", detail.get(V2TableFieldName.hospital_name));
        withdraw.put("bedroom_name", detail.get(V2TableFieldName.bedroom_name));
        withdraw.put("status", V2WithDrawStatus.dtx);
        withdraw.put("close", false);
        withdraw.put("amount", detail.get("reward"));
        withdraw.put("doctor_id", detail.get("doctor_id"));

        // 暂无数据字段补充
        withdraw.put("submit_time", 0l);
        withdraw.put("deal_time", 0l);
        withdraw.put("reject_reason", "");
        withdraw.put("pay_accountid", "");
        withdraw.put("pay_account_name", "");
        withdraw.put("account_type", "");
        withdraw.put("open_bank", "");

        kfModule.submit_withdraw(withdraw);

        // 生成消息
        String doctor_id = (String) detail.get("doctor_id");
        String hospital_name = (String) detail.get("hospital_name");
        String patient_name = (String) detail.get("patient_name");

        String message = V2PhoneMessageTemplate.template.get("v2_14");

        List<String> values = new ArrayList<>();
        values.add(hospital_name);
        values.add(patient_name);

        message = MessageUtil.replace(message, values);
        v2MessageModule
            .addMessage(new V2MessageMap(doctor_id, MedexConfigure.destDoctor, message, V2MessageType.order));
        new Thread(new SendMessageImpl(doctor_id, message, new SendMessageCallBackImpl())).start();
      }
    }
    return v;
  }
}
