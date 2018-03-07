package com.danrong.wx.qzfb.module.myinfo;

import java.util.List;

public interface BindCard {

  /**
   * 查询是否已建卡
   * 
   * @param pc
   * @return
   */
  public CreatCardResult hasCard(Card card);

  /**
   * 在线建卡
   * 
   * @param pc
   * @return
   */
  public CreatCardResult creatCard(Card card);

  /**
   * 获取用户绑定的卡号列表
   * 
   * @param openid
   * @return
   */
  public List<Card> cardList(String openid);

  /**
   * 根据卡号标识获取卡号详情
   * 
   * @param card_id
   * @return
   */
  public Card getDetail(String card_id);

  /**
   * 绑定卡号
   * 
   * @param card
   * @return
   */
  public void bindCard(Card card);

  /**
   * 解除绑定
   * 
   * @param card
   * @return
   */
  public void removeCard(Card card);

  /**
   * 获取用户默认身份证
   * 
   * @param wx_id
   * @return
   */
  public Card getDefaultCard(String wx_id);

  /**
   * 设为默认
   * 
   * @param card
   */
  public void setDefault(Card card);
}
