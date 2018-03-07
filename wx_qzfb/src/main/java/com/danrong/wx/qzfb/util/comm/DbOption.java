package com.danrong.wx.qzfb.util.comm;

/**
 * 数据库操作 反馈码
 * 
 * @author cyzsj
 * 
 */
public class DbOption {

  public static final int DBOPTION_SUCCESS = 1;
  public static final int DBOPTION_FAILER = 0;
  public static final int DBOPTION_ADDACCOUNTID_FAILER = 2;
  public static final int DBOPTION_SCHEDULE_CONFLICT = 3;
  // 自己不能删除自己的账号
  public static final int DBOPTION_DELETEACCOUNT_SELF_NOTALLOWED = 3;
}
