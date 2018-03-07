package com.danrong.wx.yzzpat.module;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.danrong.medex.module.v2.kfhospital.V2KfHospitalModule;
import com.danrong.medex.module.v2.kfhospital.V2KfHospitalModuleImpl;
import com.danrong.medex.util.v2.HospitalSearchQuery;
import com.danrong.medex.util.v2.map.Coordinate;
import com.danrong.medex.util.v2.map.Location;

public class KfHospitalMapModuleImpl implements KfHospitalMapModule {

  private V2KfHospitalModule v2KfHospitalModule;
  private int max_count = 10000;
  private Map<String, Double[]> locationMap = new HashMap<>();

  public KfHospitalMapModuleImpl() {
    this.v2KfHospitalModule = new V2KfHospitalModuleImpl();

    try (BufferedReader reader = new BufferedReader(new InputStreamReader(
        KfHospitalMapModuleImpl.class.getResourceAsStream("/location.txt")))) {
      String line = "";
      while ((line = reader.readLine()) != null) {
        line = line.trim();
        if (line.contains("=")) {
          String[] array1 = line.split("=");
          String addr = array1[0];
          String[] array2 = array1[1].split(";");
          Double[] points = new Double[] { Double.parseDouble(array2[0]), Double.parseDouble(array2[1]) };

          locationMap.put(addr, points);
        }
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  @Override
  public Map<String, Object> getPointsByProvince(String province) {
    Map<String, Object> data = new HashMap<>();

    HospitalSearchQuery query = new HospitalSearchQuery();
    query.setProvince(province);
    query.setCp(1);
    query.setPs(max_count);

    List<Map<String, Object>> list = this.v2KfHospitalModule.getKfHospitals(query);

    Map<String, Integer> subdata = new HashMap<>();

    for (Map<String, Object> map : list) {
      String city = map.get("city").toString();
      if (subdata.get(city) == null) {
        subdata.put(city, 1);
      } else {
        subdata.put(city, subdata.get(city) + 1);
      }
    }

    data.put("count", list.size());
    data.put("flag", "province");
    data.put("name", province);

    List<Map<String, Object>> children = new ArrayList<>(subdata.size());
    for (String cityname : subdata.keySet()) {
      Map<String, Object> child = new HashMap<>();
      child.put("name", cityname);
      child.put("flag", "city");
      child.put("count", subdata.get(cityname));

      String pointAddr = province + cityname;
      Double[] location = locationMap.get(pointAddr);
      if (location == null) {
        Location lo = Coordinate.addrResolve("", pointAddr);
        Double[] value = new Double[] { lo.lng, lo.lat };
        location = value;
        locationMap.put(pointAddr, value);
      }

      child.put("lng", location[0]);
      child.put("lat", location[1]);
      children.add(child);
    }
    data.put("children", children);
    return data;
  }

  @Override
  public Map<String, Object> getPointsByCity(String province, String city) {

    Map<String, Object> data = new HashMap<>();

    HospitalSearchQuery query = new HospitalSearchQuery();
    query.setProvince(province);
    query.setCity(city);
    query.setCp(1);
    query.setPs(max_count);

    List<Map<String, Object>> list = this.v2KfHospitalModule.getKfHospitals(query);

    Map<String, Integer> subdata = new HashMap<>();

    for (Map<String, Object> map : list) {
      String area = map.get("district").toString();
      if (subdata.get(area) == null) {
        subdata.put(area, 1);
      } else {
        subdata.put(area, subdata.get(area) + 1);
      }
    }

    data.put("count", list.size());
    data.put("flag", "city");
    data.put("name", city);

    List<Map<String, Object>> children = new ArrayList<>(subdata.size());
    for (String areaname : subdata.keySet()) {
      Map<String, Object> child = new HashMap<>();
      child.put("name", areaname);
      child.put("flag", "area");
      child.put("count", subdata.get(areaname));

      String pointAddr = province + city + areaname;
      Double[] location = locationMap.get(pointAddr);
      if (location == null) {
        Location lo = Coordinate.addrResolve("", pointAddr);
        Double[] value = new Double[] { lo.lng, lo.lat };
        location = value;
        locationMap.put(pointAddr, value);
      }

      child.put("lng", location[0]);
      child.put("lat", location[1]);
      children.add(child);
    }
    data.put("children", children);

    data.put("preflag", "province");
    data.put("prename", province);
    return data;

  }

  @Override
  public Map<String, Object> getPointsByArea(String province, String city, String area) {
    Map<String, Object> data = new HashMap<>();

    HospitalSearchQuery query = new HospitalSearchQuery();
    query.setProvince(province);
    query.setCity(city);
    query.setDistrict(area);
    query.setCp(1);
    query.setPs(max_count);

    List<Map<String, Object>> list = this.v2KfHospitalModule.getKfHospitals(query);

    data.put("flag", "area");
    data.put("name", area);

    List<Map<String, Object>> children = new ArrayList<>(list.size());
    for (Map<String, Object> subdata : list) {
      Map<String, Object> child = new HashMap<>();
      child.put("name", subdata.get("name"));
      child.put("id", subdata.get("record_id"));

      @SuppressWarnings("unchecked")
      List<String> location = (List<String>) subdata.get("location");
      child.put("lng", location.get(0));
      child.put("lat", location.get(1));
      children.add(child);
    }
    data.put("children", children);

    return data;
  }

}
