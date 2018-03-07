<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!-->
<html xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="./commons/runParams.html"%>
<title>康复管理平台</title>
<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
</head>


<body>
    <div id="frameTop">
		<a href="index.html" id="logo">康复管理平台</a>
		<div id="top_links">
		    <a href="javascript:void(0)" class="user">${hospital_name}</a>
		    <a href="javascript:void(0)" class="position" title="${hospital_department}">${hospital_department}</a>
		    <a href="javascript:void(0)" class="logtime">${date}</a>
		    <a href="javascript:void(0)" class="logout"  alt="退出系统" title="退出系统" target="_parent">退出登录</a>
		</div>
	</div>
	
	
<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript">
   $(function(){
	 var len=$('.position').html().length;   
	 if(len>9){
		 var val=$('.position').html().substring(0,9);
		 $('.position').html(val+'...');
	 }
   });
   
   
    $('.logout').click(function(){
    	if(confirm('确定要退出当前帐号码?')){
    		var questURL=runParams.mainUrl+'doLoginOut.do';
    		var questArr={
    		}; 
    		$.post(questURL,questArr,function(result){
    			if(1==result){
    				window.parent.location.href=runParams.mainUrl+'login.html';
    			}else{
    				alert("退出失败!");
    				return false;
    			}
    		});
    	}
    });
    
</script>
</body>

</html>



















