package com.danrong.wx.qzfb.util.comm;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.cookie.CookiePolicy;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;
import org.apache.commons.httpclient.methods.StringRequestEntity;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.danrong.wx.qzfb.util.xml.CResult;

public class PostMan {

  private static final Logger logger = LoggerFactory.getLogger(PostMan.class);
  private HttpClient httpclient;

  public PostMan() {
    this.httpclient = getCilent();
    httpclient.getParams().setIntParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 30000);
  }

  private HttpClient getCilent() {
    HttpClient client = new HttpClient();
    client.getParams().setParameter(HttpClientParams.COOKIE_POLICY, CookiePolicy.BROWSER_COMPATIBILITY);
    return client;
  }

  public CResult post(String url, String params, String charset) {
    CResult cr = new CResult();
    PostMethod postMethod = new PostMethod(url);

    RequestEntity requestEntity = null;
    try {
      requestEntity = new StringRequestEntity(params, "text/xml", "UTF-8");
    } catch (UnsupportedEncodingException e1) {
      logger.error(url);
      logger.error(params);
      e1.printStackTrace();
    }
    postMethod.setRequestEntity(requestEntity);
    try {
      postMethod.setRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:5.0) Gecko/20100101 Chrom/5.0");
      postMethod.setRequestHeader("Accept-Encoding", "gzip");

      int statusCode = httpclient.executeMethod(postMethod);

      if (statusCode == 200) {
        String body = download(postMethod, charset);
        cr.content = body;
        return cr;
      }
    } catch (Exception e) {
      logger.error(url);
    }
    return null;
  }

  private String download(PostMethod postHC, String charset) {
    StringBuffer sb = new StringBuffer();
    try {
      InputStreamReader isr = new InputStreamReader(postHC.getResponseBodyAsStream(), charset);
      java.io.BufferedReader br = new java.io.BufferedReader(isr);

      String tempbf;
      while ((tempbf = br.readLine()) != null) {
        sb.append(tempbf);
        sb.append("\r\n");
      }

      isr.close();

      postHC.releaseConnection();

    } catch (Exception e) {
      logger.error("get ResponseBody failued");
    }

    String page = sb.toString();
    return page;
  }
}
