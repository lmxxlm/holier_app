<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=”zh”> <!--<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../assets/css2/jquery.mobile-1.4.3.css">
<script src="../assets/script/productAdmin/jquery.min.js"></script>
<script src="../assets/script/productAdmin/vendor/jquery.mobile-1.4.3.js"></script>
</head>
<body>
<div data-role="page" id="pageone">
  <div data-role="main" class="ui-content">
    <form class="ui-filterable">
      <input id="myFilter" data-type="search" placeholder="根据名称搜索..">
    </form>
    <ul data-role="listview" data-filter="true" data-input="#myFilter" data-autodividers="true" data-inset="true">
      <li><a href="#">Adele</a></li>
      <li><a href="#">Agnes</a></li>
      <li><a href="#">Albert</a></li>
      <li><a href="#">Billy</a></li>
      <li><a href="#">Bob</a></li>
      <li><a href="#">Calvin</a></li>
      <li><a href="#">Cameron</a></li>
      <li><a href="#">Chloe</a></li>
      <li><a href="#">Christina</a></li>
      <li><a href="#">Diana</a></li>
      <li><a href="#">Gabriel</a></li>
      <li><a href="#">Glen</a></li>
      <li><a href="#">Ralph</a></li>
      <li><a href="#">Valarie</a></li>
    </ul>
  </div>
</div> 


</body>