package com.zheli.kf4hp.module;

import com.zheli.kf4hp.util.KfData;

public interface UserModule {

  /**
   * 用户登录
   * 
   * @param username
   * @param pwd
   * @return
   */
  public boolean login(KfData data);

  /**
   * 用户修改密码
   * 
   * @param data
   * @return
   */
  public boolean updatePwd(KfData data);

  /**
   * 根据账号和类型获取用户名字
   * 
   * @param account_id
   * @param type
   * @return
   */
  public String get_name_by_id_and_type(KfData data);

  /**
   * 获取账号对应的康复医院id
   * 
   * @param account_id
   * @return
   */
  public String get_hospital_id_by_account(KfData data);
}
