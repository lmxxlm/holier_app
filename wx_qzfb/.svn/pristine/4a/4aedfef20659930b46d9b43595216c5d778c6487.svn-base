package com.danrong.wx.qzfb.util.xml;

import java.util.HashMap;
import java.util.Map;

import org.w3c.dom.Node;

import com.thoughtworks.xstream.XStream;

public class MessageUtil {

  /**
   * 微信消息XML转Map
   * 
   * @param xmlStr
   * @param charset
   * @return
   */
  public static Map<String, String> wx_xmlToMap(String xmlStr, String charset) {
    Node rootNode = XmlParser.getNode(xmlStr, charset);

    Map<String, String> map = new HashMap<>();
    if (rootNode != null) {
      for (Node node = rootNode.getFirstChild(); node != null; node = node.getNextSibling()) {
        if (node.getNodeType() == Node.ELEMENT_NODE) {
          Node child = node.getFirstChild();
          if (child == null) continue;
          String name = node.getNodeName();
          String value = child.getNodeValue();
          map.put(name, value);
        }
      }
    }

    return map;
  }

  /**
   * bean转XML
   * 
   * @param message
   * @return
   */
  public static String messageToXml(Object message) {
    XStream xstream = new XStream();
    xstream.alias("xml", message.getClass());
    return xstream.toXML(message);
  }
}
