<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!-->
<!--<![endif]-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>康复管理平台</title>
<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
<style>
body{background:url(assets/images/common/desk.gif) no-repeat center center;}
.mainBox{height:auto;width:400px;background:#fff;border:1px solid #ccc;border-radius:5px;box-shadow:5px 5px 5px #ccc;}
.mainBox .left,.mainBox .right{width:50%;float:left;}
.mainBox .left p{text-align:center;font-size:40px;padding:50px 0 20px 0;color:red;}
.mainBox .left span{height:40px;line-height:40px;text-align:center;display:block;}
</style>
</head>

<body>
    <div class="mainBox">
        <div class="left">
            <p>20</p>
            <span>待确认转院</span>
        </div>
        <div class="right">
            <p>单床病房<span>8</span></p>
            <p>双床病房<span>6</span></p>
            <p>VIP单床病房<span>3</span></p>
            <p>VIP双床病房<span>3</span></p>
        </div>
        <div style="clear:both;"></div>
    </div>
</body>
<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
</html>