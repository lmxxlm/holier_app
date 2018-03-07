package com.danrong.wx.yzzpat.module;

import java.util.List;
import java.util.Map;

public interface KfOrderModule {

  public int submitOrder(Map<String, Object> order, String openid);

  public boolean simpleOrder(Map<String, Object> order, String openid);

  public List<Map<String, Object>> list(String wxid, int cp, int ps);

  public Map<String, Object> detail(String orderid);

  public int calcel(String orderid, String openid);
}
