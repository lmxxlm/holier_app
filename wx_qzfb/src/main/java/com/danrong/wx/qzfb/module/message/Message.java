package com.danrong.wx.qzfb.module.message;

public class Message {

  private String ToUserName;
  private String FromUserName;
  private int CreateTime;
  private String MsgType;

  public String getToUserName() {
    return ToUserName;
  }

  public void setToUserName(String toUserName) {
    ToUserName = toUserName;
  }

  public String getFromUserName() {
    return FromUserName;
  }

  public void setFromUserName(String fromUserName) {
    FromUserName = fromUserName;
  }

  public int getCreateTime() {
    return CreateTime;
  }

  public void setCreateTime(int createTime) {
    CreateTime = createTime;
  }

  public String getMsgType() {
    return MsgType;
  }

  public void setMsgType(String msgType) {
    MsgType = msgType;
  }

}
