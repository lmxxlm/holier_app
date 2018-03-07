package com.danrong.wx.qzfb.util.xml;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.danrong.wx.qzfb.module.department.Department;
import com.danrong.wx.qzfb.module.doctor.Doctor;
import com.danrong.wx.qzfb.module.myinfo.CreatCardResult;
import com.danrong.wx.qzfb.module.order.OrderResult;
import com.danrong.wx.qzfb.module.order.SingleHistory;
import com.danrong.wx.qzfb.module.schedule.Schedule;
import com.danrong.wx.qzfb.util.comm.DataMap;
import com.danrong.wx.qzfb.util.comm.MapUtil;

public class XmlParser {

  private static Logger logger = LoggerFactory.getLogger(XmlParser.class);

  /**
   * 解析科室列表数据
   * 
   * @param xmlStr
   * @param charset
   * @return
   */
  public static List<Department> parseDepartment(String xmlStr, String charset) {
    List<Department> departments = new LinkedList<>();
    NodeList nodeList = getNodeList(xmlStr, charset, TagName.department);

    for (int i = 0; i < nodeList.getLength(); i++) {
      Node depart = nodeList.item(i);
      Map<String, Object> map = new DataMap();
      for (Node node = depart.getFirstChild(); node != null; node = node.getNextSibling()) {
        if (node.getNodeType() == Node.ELEMENT_NODE) {
          Node child = node.getFirstChild();
          if (child == null) continue;
          String name = node.getNodeName();
          String value = child.getNodeValue();
          map.put(name, value);
        }
      }
      Department department = MapUtil.map2Bean(map, new Department());
      departments.add(department);
    }
    return departments;
  }

  /**
   * 解析科室医生数据
   * 
   * @param xmlStr
   * @param charset
   * @return
   */
  public static List<Doctor> parseDoctor(String xmlStr, String charset) {
    List<Doctor> doctors = new LinkedList<>();
    NodeList nodeList = getNodeList(xmlStr, charset, TagName.doctor);

    for (int i = 0; i < nodeList.getLength(); i++) {
      Node doctorNode = nodeList.item(i);
      Map<String, Object> map = new DataMap();
      for (Node node = doctorNode.getFirstChild(); node != null; node = node.getNextSibling()) {
        if (node.getNodeType() == Node.ELEMENT_NODE) {
          Node child = node.getFirstChild();
          if (child == null) continue;
          String name = node.getNodeName();
          String value = child.getNodeValue();
          map.put(name, value);
        }
      }
      Doctor doctor = MapUtil.map2Bean(map, new Doctor());
      doctors.add(doctor);
    }
    return doctors;
  }

  /**
   * 解析排班数据
   * 
   * @param xmlStr
   * @param charset
   * @return
   */
  public static List<Schedule> parseSchedules(String xmlStr, String charset) {
    List<Schedule> schedules = new LinkedList<>();
    NodeList nodeList = getNodeList(xmlStr, charset, TagName.schedule);

    for (int i = 0; i < nodeList.getLength(); i++) {
      Node scheduleNode = nodeList.item(i);
      Map<String, Object> map = new DataMap();
      for (Node node = scheduleNode.getFirstChild(); node != null; node = node.getNextSibling()) {
        if (node.getNodeType() == Node.ELEMENT_NODE) {
          Node child = node.getFirstChild();
          if (child == null) continue;
          String name = node.getNodeName();
          String value = child.getNodeValue();
          map.put(name, value);
        }
      }
      Schedule schedule = MapUtil.map2Bean(map, new Schedule());
      schedules.add(schedule);
    }
    return schedules;
  }

  /**
   * 解析预约结果
   * 
   * @param xmlStr
   * @param charset
   * @return
   */
  public static OrderResult parseOrder(String xmlStr, String charset) {
    OrderResult result = null;
    Node rootNode = getNode(xmlStr, charset);

    if (rootNode != null) {
      Map<String, Object> map = new DataMap();
      for (Node node = rootNode.getFirstChild(); node != null; node = node.getNextSibling()) {
        if (node.getNodeType() == Node.ELEMENT_NODE) {
          Node child = node.getFirstChild();
          if (child == null) continue;
          String name = node.getNodeName();
          String value = child.getNodeValue();
          map.put(name, value);
        }
      }
      result = MapUtil.map2Bean(map, new OrderResult());
    }

    return result;

  }

  /**
   * 解析取消预约结果
   * 
   * @param xmlStr
   * @param charset
   * @return
   */
  public static boolean parseCancleResult(String xmlStr, String charset) {
    OrderResult result = null;
    Node rootNode = getNode(xmlStr, charset);

    if (rootNode != null) {
      Map<String, Object> map = new DataMap();
      for (Node node = rootNode.getFirstChild(); node != null; node = node.getNextSibling()) {
        if (node.getNodeType() == Node.ELEMENT_NODE) {
          Node child = node.getFirstChild();
          if (child == null) continue;
          String name = node.getNodeName();
          String value = child.getNodeValue();
          map.put(name, value);
        }
      }
      result = MapUtil.map2Bean(map, new OrderResult());
    }

    return "0".equals(result.getResultCode());

  }

  /**
   * 预定历史
   * 
   * @param xmlStr
   * @param charset
   * @return
   */
  public static List<SingleHistory> parseOrderHistory(String xmlStr, String charset) {
    List<SingleHistory> historyList = new LinkedList<>();
    NodeList nodeList = getNodeList(xmlStr, charset, TagName.order);

    for (int i = 0; i < nodeList.getLength(); i++) {
      Node historyNode = nodeList.item(i);
      Map<String, Object> map = new DataMap();
      for (Node node = historyNode.getFirstChild(); node != null; node = node.getNextSibling()) {
        if (node.getNodeType() == Node.ELEMENT_NODE) {
          Node child = node.getFirstChild();
          if (child == null) continue;
          String name = node.getNodeName();
          String value = child.getNodeValue();
          map.put(name, value);
        }
      }
      SingleHistory singleHistory = MapUtil.map2Bean(map, new SingleHistory());
      historyList.add(singleHistory);
    }
    return historyList;
  }

  /**
   * 在线建卡结果
   * 
   * @param xmlStr
   * @param charset
   * @return
   */
  public static CreatCardResult parseCreatCardResult(String xmlStr, String charset) {
    CreatCardResult result = null;
    Node rootNode = getNode(xmlStr, charset);

    if (rootNode != null) {
      Map<String, Object> map = new DataMap();
      for (Node node = rootNode.getFirstChild(); node != null; node = node.getNextSibling()) {
        if (node.getNodeType() == Node.ELEMENT_NODE) {
          Node child = node.getFirstChild();
          if (child == null) continue;
          String name = node.getNodeName();
          String value = child.getNodeValue();
          map.put(name, value);
        }
      }
      result = MapUtil.map2Bean(map, new CreatCardResult());
    }

    return result;
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
   * 获取nodelist
   * 
   * @param xmlStr
   * @param charset
   * @param tagName
   * @return
   */
  private static NodeList getNodeList(String xmlStr, String charset, String tagName) {
    Document doc = getDocument(xmlStr, charset);
    if (doc == null) return null;
    else return doc.getElementsByTagName(tagName);

  }

}
