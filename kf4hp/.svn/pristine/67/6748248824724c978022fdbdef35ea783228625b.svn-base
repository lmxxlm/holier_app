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
<%@ include file="./commons/runParams.html"%>
<title>康复管理平台</title>
<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
<style>
.table{margin-bottom:10px !important;}
.td1{padding:10px;text-align:left !important; color:#333 !important;}
.listImg img{height:50px}
.conImg img{height:70px;}
a.help{float:right; padding-left:20px; background:url(assets/images/common/help_circle.png) no-repeat left center; color:blue; margin-top:0;_margin-top:-17px;*margin-top:-17px;}
</style>
</head>


<body>
    <div id="frameMain">
        <div id="top_nav">当前位置：医院信息&nbsp;>&nbsp;医院信息</div>
        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                <tr>
                    <td class="ltitle" style="border-top:1px solid #02397F;">医院名称</td>
                    <td class="td1" style="border-top:1px solid #ECECEC;">${hospital_info.name}
                    <a href="javascript:alert('请拨打 400-996-8881 联系运营人员帮您修改。')" class="help">信息有误？</a>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">医院头像</td>
                    <td class="td1"><a href="${hospital_info.image.fileName}" target="_blank" class="listImg"><img src="${hospital_info.image.middle}"/></a></td>
                </tr>
                <tr>
                    <td class="ltitle">医院环境</td>
                    <td class="td1">
                    <c:forEach items="${hospital_info.pictures}" var="image">
                         <a href="${image.fileName}" target="_blank" class="conImg"><img src="${image.middle}"/></a>
                    </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">详细地址</td>
                    <td class="td1">${hospital_info.address}</td>
                </tr>
                <tr>
                    <td class="ltitle">特色专科</td>
                    <td class="td1">${hospital_info.departments}</td>
                </tr>
                <tr>
                    <td class="ltitle">床位数</td>
                    <td class="td1">${hospital_info.bednumber}张</td>
                </tr>
                <tr>
                    <td class="ltitle">简介</td>
                    <td class="td1">${hospital_info.intro}</td>
                </tr>
                <tr>
                    <td class="ltitle">转运车接送</td>
                    <td class="td1">
                    <c:choose>
   <c:when test="${hospital_info.pss == true}">
  是
   </c:when>  
   <c:otherwise>
   否  
   </c:otherwise>
</c:choose>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">授牌信息</td>
                    <td class="td1">
                    <c:choose>
   <c:when test="${hospital_info.auth == true}">
浙江省医学会授牌医疗机构授牌
   </c:when>  
   <c:otherwise>
   未授牌
   </c:otherwise>
</c:choose>
                    </td>
                </tr>
        </table>
    </div>
    
<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript" src="assets/scripts/common/frame.js"></script>
<script>
$(function(){
	//设置菜单
	showMainMenu('data');
	menuInit();
	function menuInit(){
		var leftFrame = $(window.parent.frames["leftFrame"].document);
		leftFrame.find('.menuTree a').removeClass('active');
		leftFrame.find('.yyxx').addClass("active");
		/*leftFrame.find('input[value="1"]').attr('checked',false);
		leftFrame.find('input[value="0"]').attr('checked',false);*/
	}
    
})
</script>
</body>
</html>