package com.danrong.wx.qzfb.module.order;

import java.util.List;
import java.util.Map;

public interface OrderModule {

  /**
   * 挂号预定
   * 
   * @param query
   * @return
   */
  public OrderResult order(OrderQuery query);

  /**
   * 获取挂号预约历史记录
   * 
   * @param query
   * @return
   */
  public List<SingleHistory> getHistory(HistorySearchQuery query);

  /**
   * 取消预约
   * 
   * @param orderCode
   * @return
   */
  public boolean cancle(String orderCode);

  /**
   * 记录订单
   * 
   * @param data
   */
  public void log(Map<String, Object> data);
}
