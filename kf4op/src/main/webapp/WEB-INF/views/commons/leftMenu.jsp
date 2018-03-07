<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div id="menu" class="hidden-xs">
                <h1 class="logo"><a href="a.html">recoveryAdmin</a></h1>
                <aside class="menutool">
                  <button type="button" class="btn btn-default btn-sm" onFocus="this.blur();"><span class="glyphicon glyphicon-home"></span></button>
                  <button type="button" class="btn btn-default btn-sm" onFocus="this.blur();"><span class="glyphicon glyphicon-envelope"></span><span class="badge">1</span></button>
                  <div class="dropdown">
                      <button type="button" class="btn btn-default btn-block dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" onFocus="this.blur();"><span class="pull-left">您好！管理员</span><span class="pull-right"><span class="glyphicon glyphicon-lock"></span></span></button>
                   </div>
                </aside>
                <input type="hidden" name="menuIndex" value="${menuIndex}" />
                <aside class="menulist">
                  <a href="hospital_manage.html" class="glyphicons group hos_gl" onFocus="this.blur();"><i></i>医院管理</a>
                  <a href="departments_manage.html" class="glyphicons picture ks_gl" onFocus="this.blur();"><i></i>科室管理</a>
                  <a href="illness_area_manage.html" class="glyphicons log_book bq_gl" onFocus="this.blur();"><i></i>病区管理</a>
                  <a href="device_category_manage.html" class="glyphicons log_book sblb_gl" onFocus="this.blur();"><i></i>设备类别管理</a>
                  <a href="device_manage.html" class="glyphicons log_book sb_cpyd" onFocus="this.blur();"><i></i>设备管理</a>
                  <a href="doc_manage.html" class="glyphicons log_book doc_gl" onFocus="this.blur();"><i></i>医生管理</a>
                </aside>
            </div>