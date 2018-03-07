package com.danrong.wx.yzzpat.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;

public class HttpRequestUtil {

  /**
   * 从httpservletrequest中获取xml
   * 
   * @param request
   * @return
   */
  public String getXmlFromHttpServletRequest(HttpServletRequest request) {
    StringBuilder sb = new StringBuilder();
    try {
      ServletInputStream inputStream = request.getInputStream();

      BufferedReader in = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
      String line = "";
      while ((line = in.readLine()) != null) {
        sb.append(line).append("\n");
      }
      in.close();

    } catch (IOException e) {
      e.printStackTrace();
    }

    return sb.toString();
  }
}
