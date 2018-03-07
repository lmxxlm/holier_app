package com.danrong.wx.qzfb.module.message;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Map;

import com.danrong.wx.qzfb.util.comm.PostMan;
import com.danrong.wx.qzfb.util.comm.UrlReplaceUtil;
import com.danrong.wx.qzfb.util.wx.Config;
import com.danrong.wx.qzfb.util.wx.FieldName;
import com.danrong.wx.qzfb.util.wxauth.AccessTokenUtil;
import com.danrong.wx.qzfb.util.xml.CResult;
import com.danrong.wx.qzfb.util.xml.MessageUtil;
import com.dr.core.util.TimeUtil;

public class MessageModuleImpl implements MessageModule {

  private static String wx_send_template_url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=###";
  private AccessTokenUtil atUtil = new AccessTokenUtil();
  private PostMan postMan = new PostMan();
  private TimeUtil time = new TimeUtil();

  @Override
  public String messageHandler(Map<String, String> data) {
    String msgType = data.get(FieldName.msgType);

    TextMessage message = new TextMessage();
    message.setToUserName(data.get(FieldName.fromUserName));
    message.setFromUserName(data.get(FieldName.toUserName));
    message.setCreateTime(Integer.parseInt(data.get(FieldName.createTime)));
    message.setMsgType(Config.msgType_text);

    // 事件
    if (Config.msgType_event.equals(msgType)) {
      String event = data.get(FieldName.event);
      // --关注
      if (Config.event_subscribe.equals(event)) {
        message.setContent(Config.return_subscribe_text);
      }
      // TODO --取消关注
      else if (Config.event_unsubscribe.equals(event)) {
        System.out.println(data.get(FieldName.fromUserName) + "用户取消关注");
        return null;
      }
    }
    // TODO 文本消息--自动回复
    else if (Config.msgType_text.equals(msgType)) {
      String content = data.get(FieldName.content);
      if ("1".equals(content)) {
        message.setContent(Config.return_default_text);
      } else message.setContent(Config.return_subscribe_text);
    }

    return MessageUtil.messageToXml(message);
  }

  @Override
  public String sendTemplate(String params) {
    String access_token = atUtil.getAccessToken(time.now2l());
    String url = UrlReplaceUtil.replace(wx_send_template_url, access_token);
    CResult result = postMan.post(url, params, Config.charset);
    if (result != null) return result.content;
    else return null;
  }

  public static void main(String[] args) throws FileNotFoundException, IOException {
    StringBuilder sb = new StringBuilder();
    try (BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream("d:/temdata.txt")))) {
      String line = "";
      while ((line = reader.readLine()) != null) {
        sb.append(line);
      }
      reader.close();
    }

    new MessageModuleImpl().sendTemplate(sb.toString());
  }

}
