package com.danrong.wx.qzfb.util.comm;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.ObjectMapper;

public class ExcelOperater {

  private final static ObjectMapper mapper = new ObjectMapper();
  private String doctor_data_file_name;

  public ExcelOperater() {
    try {
      BufferedReader fileReader = new BufferedReader(new InputStreamReader(
          JsonParser.class.getResourceAsStream("/wx_qzfb_config.txt")));

      JsonNode rootNode = mapper.readTree(fileReader);

      this.doctor_data_file_name = rootNode.path("wx_qzfb.doctor.data.filename").getTextValue().trim();

    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  public Map<String, Map<String, String>> getDoctorList() throws IOException {
    Map<String, Map<String, String>> dataMap = new HashMap<>();
    InputStream stream = new FileInputStream(doctor_data_file_name);
    Workbook wb = null;
    wb = new HSSFWorkbook(stream);
    Sheet sheet = wb.getSheetAt(0);

    Row firstRow = sheet.getRow(0);
    int n = firstRow.getLastCellNum();
    String[] fields = new String[n];
    for (int i = 0; i < fields.length; i++) {
      fields[i] = firstRow.getCell(i).getStringCellValue();
    }

    for (int i = sheet.getFirstRowNum() + 1; i <= sheet.getLastRowNum(); i++) {
      Row row = sheet.getRow(i);
      Cell cell = row.getCell(0);
      String doctorCode = "0";
      if (cell.getCellType() == Cell.CELL_TYPE_STRING) doctorCode = cell.getStringCellValue();
      else if (cell.getCellType() == Cell.CELL_TYPE_NUMERIC) doctorCode = "" + (int) cell.getNumericCellValue();
      Map<String, String> value = new HashMap<>();
      for (int j = 1; j < fields.length; j++) {
        String k = fields[j];
        Cell cv = row.getCell(j);
        String v = null;
        if (cv != null) {
          if (cv.getCellType() == Cell.CELL_TYPE_STRING) v = cv.getStringCellValue();
          else if (cv.getCellType() == Cell.CELL_TYPE_NUMERIC) v = "" + (int) cv.getNumericCellValue();
        }
        value.put(k, v);
      }

      dataMap.put(doctorCode, value);
    }
    return dataMap;
  }

  public Map<String, List<Map<String, String>>> getDepartmentDoctorList() throws IOException {
    Map<String, List<Map<String, String>>> dataMap = new HashMap<>();
    InputStream stream = new FileInputStream(doctor_data_file_name);
    Workbook wb = null;
    wb = new HSSFWorkbook(stream);
    Sheet sheet = wb.getSheetAt(0);

    Row firstRow = sheet.getRow(0);
    int n = firstRow.getLastCellNum();
    String[] fields = new String[n];
    for (int i = 0; i < fields.length; i++) {
      fields[i] = firstRow.getCell(i).getStringCellValue();
    }

    for (int i = sheet.getFirstRowNum() + 1; i <= sheet.getLastRowNum(); i++) {
      Row row = sheet.getRow(i);
      String departmentCode = "" + (int) (row.getCell(6).getNumericCellValue());
      if (dataMap.get(departmentCode) == null) dataMap.put(departmentCode, new LinkedList<Map<String, String>>());
      Map<String, String> value = new HashMap<>();
      for (int j = 0; j < fields.length; j++) {
        String k = fields[j];
        Cell cv = row.getCell(j);
        String v = null;
        if (cv != null) {
          if (cv.getCellType() == Cell.CELL_TYPE_STRING) v = cv.getStringCellValue();
          else if (cv.getCellType() == Cell.CELL_TYPE_NUMERIC) v = "" + (int) cv.getNumericCellValue();
        }
        value.put(k, v);
      }

      dataMap.get(departmentCode).add(value);
    }
    return dataMap;
  }

  public static void main(String[] args) throws IOException {
    ExcelOperater eop = new ExcelOperater();
    Map<String, List<Map<String, String>>> dataMap = eop.getDepartmentDoctorList();
    System.out.println(dataMap);
    for (String key : dataMap.keySet()) {
      System.out.println(key + "==" + dataMap.get(key).size());
    }

    Map<String, Map<String, String>> doctorMap = eop.getDoctorList();
    System.out.println(doctorMap);
  }

}
