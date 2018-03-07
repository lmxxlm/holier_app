package com.danrong.wx.qzfb.util.xml;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.cookie.CookiePolicy;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.danrong.wx.qzfb.util.comm.SpiderFlag;
import com.danrong.wx.qzfb.util.comm.UrlReplaceUtil;

public class Spider {

  private static final Logger logger = LoggerFactory.getLogger(Spider.class);
  private HttpClient httpclient;

  public Spider() {
    this.httpclient = getCilent();
    httpclient.getParams().setIntParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 30000);
  }

  public CResult crawl(SpiderFlag flag, String url, String charset, String... args) {
    if (StringUtils.isBlank(url)) return null;
    else {
      // 组装url
      url = UrlReplaceUtil.replace(url, args);
      if (flag == SpiderFlag.HIS) {
        try {
          url = URLEncoder.encode(url, charset);
        } catch (UnsupportedEncodingException e) {
          logger.error("url encode 编码错误！url=" + url + ";charset=" + charset);
          e.printStackTrace();
        }

        url = StringUtils.join(new String[] { Config.endpoint, url });
      }
    }
    CResult cr = new CResult();
    GetMethod getMethod = new GetMethod(url);
    try {
      getMethod.setRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:5.0) Gecko/20100101 Chrom/5.0");
      getMethod.setRequestHeader("Accept-Encoding", "gzip");

      int statusCode = httpclient.executeMethod(getMethod);
      System.out.println(statusCode);
      if (statusCode == 200) {
        String body = download(getMethod, charset);
        cr.content = body;
        return cr;
      }
      System.out.println(cr.content);
    } catch (Exception e) {
      logger.error(url);
    }
    return cr;
  }

  private HttpClient getCilent() {
    HttpClient client = new HttpClient();
    client.getParams().setConnectionManagerTimeout(30000l);
    client.getParams().setParameter(HttpClientParams.COOKIE_POLICY, CookiePolicy.BROWSER_COMPATIBILITY);
    return client;
  }

  private String download(GetMethod getHC, String charset) {
    StringBuffer sb = new StringBuffer();
    try {
      InputStreamReader isr = new InputStreamReader(getHC.getResponseBodyAsStream(), charset);
      java.io.BufferedReader br = new java.io.BufferedReader(isr);

      String tempbf;
      while ((tempbf = br.readLine()) != null) {
        sb.append(tempbf);
        sb.append("\r\n");
      }

      isr.close();

      getHC.releaseConnection();

    } catch (Exception e) {
      logger.error("get ResponseBody failued");
    }

    String page = sb.toString();
    return page;
  }

  // public static void main(String[] args) throws JDOMException, IOException {
  // String[] params = new String[] { "121" };
  // String content = new Spider().crawl(Config.suffix_department_list, Config.charset, params).content;
  // // // System.out.println(content);
  // // XmlParser.xmlparser(content);
  // }
}