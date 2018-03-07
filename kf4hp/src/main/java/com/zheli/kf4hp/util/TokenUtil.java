package com.zheli.kf4hp.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

/**
 * token处理器
 * 
 * @author cyzsj
 * 
 */
public class TokenUtil {

  // code匹配状态码
  public static int code_mismatch = 701;
  public static int code_match = 700;

  private final SessionParser sessionParser = new SessionParser();

  /**
   * medex每个post请求都需验证token,，
   * 如果验证不成功，直接返回失败，
   * 否则，token置空(防止重复提交)，
   * 并进行下一步
   * 
   * @param request
   * @return int
   */
  public int matchToken(HttpServletRequest request) {
    if (request == null) {
      return code_mismatch;
    } else {
      HttpSession session = request.getSession();
      if (session == null) {
        return code_mismatch;
      } else {
        String token = request.getParameter(SessionField.token);
        if (StringUtils.isBlank(token)) {
          return code_mismatch;
        } else {
          if (!sessionParser.getUserToken(session).equals(token.trim())) {
            return code_mismatch;
          } else {
            session.setAttribute(SessionField.token, null);
            return code_match;
          }
        }
      }
    }
  }
}
