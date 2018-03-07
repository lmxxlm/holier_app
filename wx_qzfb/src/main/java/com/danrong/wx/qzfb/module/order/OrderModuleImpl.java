package com.danrong.wx.qzfb.module.order;

import java.util.List;
import java.util.Map;

import com.danrong.wx.qzfb.util.comm.MongoTemplate;
import com.danrong.wx.qzfb.util.comm.SpiderFlag;
import com.danrong.wx.qzfb.util.comm.TableName;
import com.danrong.wx.qzfb.util.xml.CResult;
import com.danrong.wx.qzfb.util.xml.Config;
import com.danrong.wx.qzfb.util.xml.Spider;
import com.danrong.wx.qzfb.util.xml.XmlParser;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;

public class OrderModuleImpl implements OrderModule {

  private Spider spider;
  private MongoTemplate mongoTemplate;

  public OrderModuleImpl() {
    this.spider = new Spider();
    mongoTemplate = MongoTemplate.getInstance();
  }

  @Override
  public OrderResult order(OrderQuery query) {
    CResult cr = spider.crawl(SpiderFlag.HIS, Config.suffix_order, Config.charset, query.getCardNo(),
        query.getCardType(), query.getScheduleItemCode(), Config.default_userid, query.getLockQueueNo());
    if (cr == null || cr.isEmpty()) return null;
    else {
      return XmlParser.parseOrder(cr.content, Config.charset);
    }
  }

  @Override
  public List<SingleHistory> getHistory(HistorySearchQuery query) {
    CResult cr = spider.crawl(SpiderFlag.HIS, Config.suffix_order_history, Config.charset, Config.default_userid,
        query.getCardNo(), query.getCardType(), query.getCardNo(), query.getOrderApptStartDate(),
        query.getOrderApptEndDate());
    if (cr == null || cr.isEmpty()) return null;
    else return XmlParser.parseOrderHistory(cr.content, Config.charset);
  }

  @Override
  public boolean cancle(String orderCode) {
    CResult cr = spider.crawl(SpiderFlag.HIS, Config.suffix_cancle_order, Config.charset, Config.default_userid,
        orderCode);
    if (cr == null || cr.isEmpty()) return false;
    else return XmlParser.parseCancleResult(cr.content, Config.charset);
  }

  @Override
  public void log(Map<String, Object> data) {
    DBObject dbo = new BasicDBObject();
    for (String key : data.keySet()) {
      dbo.put(key, data.get(key));
    }
    this.mongoTemplate.insert(dbo, TableName.COLLECTION_NAME_ORDER);
  }

  // public static void main(String[] args) {
  // OrderModuleImpl dm = new OrderModuleImpl();
  // // OrderQuery query = new OrderQuery();
  // // query.setCardNo("A00454566");
  // // query.setScheduleItemCode("447||1097");
  // //
  // // OrderResult result = dm.order(query);
  // // System.out.println(result.getOrderContent());
  // // System.out.println(result.getResultContent());
  // HistorySearchQuery hq = new HistorySearchQuery();
  // hq.setCardNo("A00454566");
  // hq.setOrderApptStartDate("2011-01-01");
  // hq.setOrderApptEndDate("2016-07-01");
  // List<SingleHistory> historyList = dm.getHistory(hq);
  // for (SingleHistory sh : historyList) {
  // System.out.println(sh.getDoctor());
  // }
  // }
}
