package com.danrong.wx.qzfb.util.comm;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;

import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;

/**
 * dbobject和bean互转工具类
 * 
 * @author cyzsj
 * 
 */
public class DBTools {

  /**
   * bean转DBObject
   * 
   * @param bean
   * @return
   * @throws IllegalArgumentException
   * @throws IllegalAccessException
   */
  public static <T> DBObject bean2DBObject(T bean) {
    if (bean == null) { return null; }
    DBObject dbObject = new BasicDBObject();
    try {
      List<Field> fields = getDeclaredFields(bean);

      for (Field field : fields) {
        String varName = field.getName();
        if ("serialVersionUID".equals(varName)) continue;
        boolean accessFlag = field.isAccessible();
        if (!accessFlag) {
          field.setAccessible(true);
        }
        Object param = field.get(bean);
        if (param == null) {
          continue;
        } else if (param instanceof Integer) {
          int value = ((Integer) param).intValue();
          dbObject.put(varName, value);
        } else if (param instanceof String) {
          String value = (String) param;
          dbObject.put(varName, value);
        } else if (param instanceof Double) {
          double value = ((Double) param).doubleValue();
          dbObject.put(varName, value);
        } else if (param instanceof Float) {
          float value = ((Float) param).floatValue();
          dbObject.put(varName, value);
        } else if (param instanceof Long) {
          long value = ((Long) param).longValue();
          dbObject.put(varName, value);
        } else if (param instanceof Boolean) {
          boolean value = ((Boolean) param).booleanValue();
          dbObject.put(varName, value);
        } else if (param instanceof Date) {
          Date value = (Date) param;
          dbObject.put(varName, value);
        } else if (param instanceof String[]) {
          String[] value = (String[]) param;
          dbObject.put(varName, value);
        }
        field.setAccessible(accessFlag);
      }
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
    return dbObject;
  }

  /**
   * dbobject转Bean
   * 
   * @param dbObject
   * @param bean
   * @return
   * @throws IllegalAccessException
   * @throws InvocationTargetException
   * @throws NoSuchMethodException
   */
  public static <T> T dbObject2Bean(DBObject dbObject, T bean) {
    if (bean == null || dbObject == null) { return null; }
    try {
      List<Field> fields = getDeclaredFields(bean);

      for (Field field : fields) {
        String varName = field.getName();
        Object object = dbObject.get(varName);
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

  /**
   * 重写bean.getClass().getDeclaredFields()方法
   * 
   * Returns an array of Field objects reflecting all the fields declared by the class or interface represented by this
   * Class object. This includes public, protected, default (package) access, and private fields, incluedes inherited
   * fields. The elements in the array returned are not sorted and are not in any particular order. This method returns
   * an array of length 0 if the class or interface declares no fields, or if this Class object represents a primitive
   * type, an array class, or void.
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
}
