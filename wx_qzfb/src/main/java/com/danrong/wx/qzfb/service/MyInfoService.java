package com.danrong.wx.qzfb.service;

import java.util.List;

import com.danrong.wx.qzfb.module.myinfo.BindCard;
import com.danrong.wx.qzfb.module.myinfo.BindCardImpl;
import com.danrong.wx.qzfb.module.myinfo.Card;

public class MyInfoService {

  private BindCard bindCard;

  public MyInfoService() {
    bindCard = new BindCardImpl();
  }

  public List<Card> list(String wex_id) {
    return bindCard.cardList(wex_id);
  }

  public Card detail(String card_id) {
    return bindCard.getDetail(card_id);
  }

  public boolean add(Card card) {
    try {
      bindCard.bindCard(card);
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
    return true;
  }

  public boolean setDefaultCard(Card card) {
    try {
      bindCard.setDefault(card);
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
    return true;
  }

  public boolean removeBind(Card card) {
    try {
      bindCard.removeCard(card);
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
    return true;
  }
}
