package com.danrong.wx.qzfb.util.comm;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;

public class MapUtil {

  /**
   * 重写bean.getClass().getDeclaredFields()方法
   * 
   * @param bean
   * @return 所有（包括父类）申明的字段
   */
  public static <T> List<Field> getDeclaredFields(T bean) {
    Field[] sub_fields = bean.getClass().getDeclaredFields();
    Field[] super_fields = bean.getClass().getSuperclass().getDeclaredFields();

    List<Field> fields = new ArrayList<>(sub_fields.length + super_fields.length);
    for (Field f : sub_fields)
      fields.add(f);
    for (Field f : super_fields)
      fields.add(f);

    return fields;
  }

  public static <T> T map2Bean(Map<String, Object> data, T bean) {

    if (bean == null || data == null) { return null; }
    try {
      List<Field> fields = getDeclaredFields(bean);

      for (Field field : fields) {
        String varName = field.getName();
        Object object = data.get(varName);
        if (object != null) {
          if (object instanceof Map) {
            @SuppressWarnings("unchecked")
            Map<String, Object> map = (Map<String, Object>) object;
            for (String key : map.keySet()) {
              BeanUtils.setProperty(bean, varName + "." + key, map.get(key));
            }
          } else BeanUtils.setProperty(bean, varName, object);
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
    return bean;

  }

}
