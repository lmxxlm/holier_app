package com.danrong.wx.qzfb.module.myinfo;

import java.util.LinkedList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.bson.types.ObjectId;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.danrong.wx.qzfb.util.comm.DBTools;
import com.danrong.wx.qzfb.util.comm.Help;
import com.danrong.wx.qzfb.util.comm.JSTLField;
import com.danrong.wx.qzfb.util.comm.MongoTemplate;
import com.danrong.wx.qzfb.util.comm.SpiderFlag;
import com.danrong.wx.qzfb.util.comm.TableName;
import com.danrong.wx.qzfb.util.xml.CResult;
import com.danrong.wx.qzfb.util.xml.Config;
import com.danrong.wx.qzfb.util.xml.Spider;
import com.danrong.wx.qzfb.util.xml.XmlParser;
import com.dr.core.util.TimeUtil;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;

@Repository
public class BindCardImpl implements BindCard {

  public static final Logger logger = LoggerFactory.getLogger(BindCardImpl.class);
  private MongoTemplate mongoTemplate = MongoTemplate.getInstance();
  private UserModule userModule = new UserModuleImpl();
  private Spider spider = new Spider();
  private TimeUtil timeUtil = new TimeUtil();

  @Override
  public List<Card> cardList(String openid) {
    List<Card> cards = new LinkedList<>();
    DBObject query = new BasicDBObject();
    query.put(JSTLField.wex_id, openid);

    List<DBObject> objlist = this.mongoTemplate.search(TableName.COLLECTION_NAME_CARD, query, null, -1, -1,
        new BasicDBObject(JSTLField._id, -1));
    for (DBObject dbo : objlist) {
      Card card = DBTools.dbObject2Bean(dbo, new Card());
      if (card != null) {
        card.setCard_id(dbo.get(JSTLField._id).toString());
        String image = userModule.getUserImage(openid);
        if (StringUtils.isNotBlank(image)) {
          card.setHasImage(true);
          card.setImage(image);
        }
        cards.add(card);
      }
    }
    return cards;
  }

  @Override
  public void bindCard(Card card) {
    DBObject dbo = DBTools.bean2DBObject(card);
    dbo.put("create_time", timeUtil.now2l());
    dbo.removeField(JSTLField.hasImage);
    this.mongoTemplate.insert(dbo, TableName.COLLECTION_NAME_CARD);
  }

  @Override
  public void removeCard(Card card) {
    DBObject deleteQuery = new BasicDBObject();
    deleteQuery.put(JSTLField.wex_id, card.getWex_id());
    deleteQuery.put(JSTLField.card_no, card.getCard_no());
    this.mongoTemplate.delete(deleteQuery, TableName.COLLECTION_NAME_CARD);
  }

  @Override
  public Card getDefaultCard(String wx_id) {
    DBObject query = new BasicDBObject();
    query.put(JSTLField.wex_id, wx_id);
    query.put(JSTLField.dft, true);

    DBObject dbo = this.mongoTemplate.find(query, TableName.COLLECTION_NAME_CARD);
    return DBTools.dbObject2Bean(dbo, new Card());
  }

  @Override
  public void setDefault(Card card) {
    setDefaultFalse(card.getWex_id());

    DBObject query = new BasicDBObject();
    query.put(JSTLField.wex_id, card.getWex_id());
    query.put(JSTLField.card_no, card.getCard_no());
    System.out.println(query);

    DBObject dbo = new BasicDBObject();
    dbo.put(JSTLField.dft, true);

    this.mongoTemplate.update(query, dbo, TableName.COLLECTION_NAME_CARD);
  }

  public static void main(String[] args) {
    new BindCardImpl().setDefaultFalse("ow3SPt5kizn1PeS0_LcwsriCe4q4");
  }

  private void setDefaultFalse(String wex_id) {
    System.out.println("设置默认时的微信id===" + wex_id);
    DBObject query = new BasicDBObject();
    query.put(JSTLField.wex_id, wex_id);

    List<DBObject> dboList = this.mongoTemplate.search(TableName.COLLECTION_NAME_CARD, query, null, -1, -1,
        new BasicDBObject(JSTLField._id, -1));
    for (DBObject dbo : dboList) {
      DBObject upquery = new BasicDBObject();
      upquery.put(JSTLField._id, new ObjectId(dbo.get(JSTLField._id).toString()));

      dbo.put(JSTLField.dft, false);
      this.mongoTemplate.update(upquery, dbo, TableName.COLLECTION_NAME_CARD);
    }
  }

  @Override
  public Card getDetail(String card_id) {
    DBObject query = new BasicDBObject();
    query.put(JSTLField._id, new ObjectId(card_id));

    DBObject dbo = this.mongoTemplate.find(query, TableName.COLLECTION_NAME_CARD);
    if (dbo == null) return null;
    else {
      Card card = DBTools.dbObject2Bean(dbo, new Card());
      if (card != null) {
        card.setCard_id(dbo.get(JSTLField._id).toString());
        String image = userModule.getUserImage(card.getWex_id());
        if (StringUtils.isNotBlank(image)) {
          card.setHasImage(true);
          card.setImage(image);
        }
      }
      return card;
    }
  }

  @Override
  public CreatCardResult creatCard(Card card) {
    CResult cr = spider.crawl(SpiderFlag.HIS, Config.suffix_creat_card_online, Config.charset, card.getC_type(),
        card.getCard_no(), card.getPatient_name(), card.getSex(), card.getBirthday(), card.getCard_no(),
        card.getAddress(), card.getTelephone(), Config.default_userid);
    if (cr == null || cr.isEmpty()) return null;
    else {
      System.out.println("发卡入参" + Help.bean2Json(card));
      System.out.println("发卡结果====" + cr.content);
      return XmlParser.parseCreatCardResult(cr.content, Config.charset);
    }
  }

  @Override
  public CreatCardResult hasCard(Card card) {
    CResult cr = spider.crawl(SpiderFlag.HIS, Config.suffix_has_create_card, Config.charset, card.getCard_no(),
        card.getPatient_name(), card.getC_type(), card.getCard_no());
    if (cr == null || cr.isEmpty()) {
      CreatCardResult result = new CreatCardResult();
      result.setResultCode("-1");
      return result;
    } else {
      System.out.println("查询建卡===" + cr.content);
      return XmlParser.parseCreatCardResult(cr.content, Config.charset);
    }
  }
}