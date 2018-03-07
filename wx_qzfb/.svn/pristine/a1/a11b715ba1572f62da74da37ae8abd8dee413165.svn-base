package com.danrong.wx.qzfb.service;

import com.danrong.wx.qzfb.module.myinfo.UserModule;
import com.danrong.wx.qzfb.module.myinfo.UserModuleImpl;
import com.danrong.wx.qzfb.util.wxauth.SnsUserInfo;

public class UserService {

  private UserModule userModule;
  private static final String meal = "男";
  private static final String femeal = "女";
  private static final String int_meal = "1";

  public UserService() {
    userModule = new UserModuleImpl();
  }

  public SnsUserInfo getUserInfoDetail(String wex_id) {
    SnsUserInfo info = userModule.find(wex_id);
    if (info != null) {
      String sex = info.getSex();
      if (int_meal.equals(sex)) info.setSex(meal);
      else info.setSex(femeal);
    }
    return info;
  }

}
