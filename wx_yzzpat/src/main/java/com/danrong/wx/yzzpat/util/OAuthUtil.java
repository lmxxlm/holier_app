package com.danrong.wx.yzzpat.util;

public class OAuthUtil {

  private Spider spider;
  // 验证网页授权
  public static final String wx_suffix_oauth_access_token = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="
      + AuthUtil.AppId + "&secret=" + AuthUtil.Secret + "&code=###&grant_type=authorization_code";
  // 拉取用户信息
  public static final String wx_get_sns_userinfo = "https://api.weixin.qq.com/sns/userinfo?access_token=###&openid=###&lang=zh_CN";

  public OAuthUtil() {
    spider = new Spider();
  }

  /**
   * 获取网页授权accessToken
   * 
   * @param now
   * @return
   */
  public synchronized OAuthAccessToken getOauthAccessToken(String code) {
    return generateOAuthAccessToken(code);
  }

  /**
   * 获取用户基本信息
   * 
   * @param oauthAccessToken
   * @param openid
   * @return
   */
  public synchronized SnsUserInfo getSnsUserInfo(String oauthAccessToken, String openid) {
    return generateSnsUserInfo(oauthAccessToken, openid);
  }

  /**
   * 生成accessToken
   * 
   * @param now
   * @param code
   * @return
   */
  private OAuthAccessToken generateOAuthAccessToken(String code) {
    CResult cr = spider.crawl(wx_suffix_oauth_access_token, Config.charset, code);
    if (cr != null && !cr.isEmpty()) {
      String content = cr.content;

      return JsonUtil.jsonObject2Bean(content, new OAuthAccessToken());
    } else return null;
  }

  /**
   * 生成用户基本信息
   * 
   * @param oauthAccessToken
   * @param openid
   * @return
   */
  private SnsUserInfo generateSnsUserInfo(String oauthAccessToken, String openid) {
    CResult cr = spider.crawl(wx_get_sns_userinfo, Config.charset, oauthAccessToken, openid);
    if (cr != null && !cr.isEmpty()) {
      String content = cr.content;

      return JsonUtil.jsonObject2Bean(content, new SnsUserInfo());
    } else return null;
  }

}
