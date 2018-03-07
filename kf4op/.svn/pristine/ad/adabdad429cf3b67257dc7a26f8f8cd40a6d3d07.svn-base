package com.zheli.kf4op.util;

import java.util.Random;

/**
 * token生成器
 * 
 * @author cyzsj
 */
public class TokenGenerater {

  public static String generateToken() {
    return MD5.md5(Integer.toHexString(new Random().nextInt(0xFFFFFF) + 1));
  }
}
