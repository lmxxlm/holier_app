package com.danrong.wx.qzfb.util.comm;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.mongodb.BasicDBList;

/**
 * 专门实现各种对象对json的转换
 * 
 * @author cyzsj
 */
public class Help {

  public static String[] dblist2array(BasicDBList li) {
    String[] array = new String[li.size()];
    for (int i = 0; i < li.size(); i++) {
      String str = (String) li.get(i);
      array[i] = str;
    }
    return array;
  }

  public static String addResultPrefix(String str) {
    StringBuilder sb = new StringBuilder();
    sb.append("{");
    sb.append("\"result\":");
    sb.append(str);
    sb.append("}");
    return sb.toString();
  }

  public static String list2Json(List<?> li) {
    StringBuilder sb = new StringBuilder();
    sb.append("{\"result\":[");
    for (int i = 0; i < li.size(); i++) {
      sb.append(bean2Json(li.get(i)));
      if (i < li.size() - 1) sb.append(",");
    }
    sb.append("]}");
    return sb.toString();
  }

  public static String comm_list2Json(List<String> li) {
    StringBuilder sb = new StringBuilder();
    sb.append("{\"result\":[");
    for (int i = 0; i < li.size(); i++) {
      sb.append("\"" + li.get(i) + "\"");
      if (i < li.size() - 1) sb.append(",");
    }
    sb.append("]}");
    return sb.toString();
  }

  public static String beans2json(Object[] objs) {
    StringBuilder sb = new StringBuilder();
    sb.append("{\"result\":[");
    for (int i = 0; i < objs.length; i++) {
      sb.append(bean2Json(objs[i]));
      if (i < objs.length - 1) sb.append(",");
    }
    sb.append("]}");
    return sb.toString();
  }

  public static String bean2Json(Object obj) {
    return JSONObject.fromObject(obj).toString().trim();
  }

  @SuppressWarnings("rawtypes")
  public static List<Object> json2beanArray(String jsonString, Class clazz) {
    JSONArray array = JSONArray.fromObject(jsonString);
    List<Object> obj = new ArrayList<>(array.size());
    for (int i = 0; i < array.size(); i++) {
      JSONObject jsonObject = array.getJSONObject(i);
      obj.add(JSONObject.toBean(jsonObject, clazz));
    }
    return obj;
  }

  public static String log2json(Map<String, Object> logMap) {
    return JSONObject.fromObject(logMap).toString();
  }

  public static void main(String[] args) {
    List<String> labels = new LinkedList<>();
    labels.add("aaa");
    labels.add("aaa");
    labels.add("aaa");

    System.out.println(Help.comm_list2Json(labels));
  }
}
