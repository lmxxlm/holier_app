package com.zheli.kf4op.module;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.zheli.kf4op.util.Config;
import com.zheli.kf4op.util.SessionField;

public class KfData extends HashMap<String, Object> {

  private static final long serialVersionUID = -3399335956323228680L;

  public KfData() {
  }

  @SuppressWarnings({ "rawtypes" })
  public KfData(HttpServletRequest request) {
    Map properties = request.getParameterMap();
    Iterator entries = properties.entrySet().iterator();
    Map.Entry entry;
    String name = "";
    String value = "";
    Map<String, Object> coreData = new HashMap<>();
    while (entries.hasNext()) {
      entry = (Map.Entry) entries.next();
      name = (String) entry.getKey();
      Object valueObj = entry.getValue();
      if (null == valueObj) {
        value = "";
      } else if (valueObj instanceof String[]) {
        String[] values = (String[]) valueObj;
        for (int i = 0; i < values.length; i++) {
          value = values[i] + ",";
        }
        value = value.substring(0, value.length() - 1);
      } else {
        value = valueObj.toString();
      }
      coreData.put(name, value);
    }
    coreData.remove(SessionField.token);
    this.put(Config.core_data, coreData);
  }

}
