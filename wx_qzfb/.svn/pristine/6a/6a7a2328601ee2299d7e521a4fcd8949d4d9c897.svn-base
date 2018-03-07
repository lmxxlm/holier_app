package com.danrong.wx.qzfb.module.log;

import com.danrong.wx.qzfb.util.comm.DBTools;
import com.danrong.wx.qzfb.util.comm.MongoTemplate;
import com.danrong.wx.qzfb.util.comm.TableName;
import com.mongodb.DBObject;

public class LogModuleImpl implements LogModule {

  private MongoTemplate mongoTemplate = MongoTemplate.getInstance();

  @Override
  public boolean insert(Log log) {
    DBObject dbo = DBTools.bean2DBObject(log);
    return this.mongoTemplate.insert(dbo, TableName.COLLECTION_NAME_LOG);
  }

}
