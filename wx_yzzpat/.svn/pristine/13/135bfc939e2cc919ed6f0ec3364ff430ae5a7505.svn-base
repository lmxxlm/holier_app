package com.danrong.wx.yzzpat.util;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

public class XmlParser {

  private static Logger logger = LoggerFactory.getLogger(XmlParser.class);

  /**
   * 获取单个Node
   * 
   * @param xmlStr
   * @param charset
   * @param tagName
   * @return
   */
  public static Node getNode(String xmlStr, String charset) {
    Document doc = getDocument(xmlStr, charset);
    if (doc == null) return null;
    else {
      return doc.getFirstChild();
    }
  }

  /**
   * 获取doc
   * 
   * @param xmlStr
   * @param charset
   * @return
   */
  private static Document getDocument(String xmlStr, String charset) {
    // 清理xmlStr
    int startIndex = xmlStr.indexOf(Config.startChar);
    int endIndex = xmlStr.indexOf(Config.endChar) + Config.endChar.length();
    if (startIndex != -1 && endIndex != -1) xmlStr = xmlStr.substring(startIndex, endIndex);

    DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
    DocumentBuilder db = null;
    try {
      db = dbf.newDocumentBuilder();
    } catch (ParserConfigurationException e) {
      logger.error("parse configuration exception!");
      e.printStackTrace();
    }
    Document doc = null;
    try {
      doc = db.parse(new ByteArrayInputStream(xmlStr.getBytes(charset)));
    } catch (NullPointerException e) {
      logger.error("maybe db==null?");
      e.printStackTrace();
    } catch (UnsupportedEncodingException e) {
      logger.error("charset is unsupported!");
      e.printStackTrace();
    } catch (SAXException e) {
      logger.error("xml parse error!");
      e.printStackTrace();
    } catch (IOException e) {
      logger.error("IOException!");
      e.printStackTrace();
    }

    return doc;
  }
}
