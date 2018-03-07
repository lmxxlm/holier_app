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
<title>康复管理后台</title>
<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
<style>
.account{border-bottom:1px solid #ccc;height:36px;overflow:hidden;line-height:36px;margin-top:20px;font-size:18px;color:#333;}
.menuTree div{display:none;}
</style>
</head>

<body onload="">
    <div id="frameSide">
        <div id="mainMenu">
            <span class="data"><a href="javascript:void(0)" title="医院数据"  data-name="data">医院数据</a></span>
            <span class="order"><a href="javascript:void(0)" title="订单" class="active" data-name="order">订单</a></span>
            <span class="account"><a href="javascript:void(0)" title="账号设置" data-name="account">账号设置</a></span>
            <a href="javascript:void(0)" title="隐藏侧边栏" class="sh show_hide_btn">隐藏显示</a>
        </div>
        <div id="subMenu">
            <div class="subTitle account">${hospital_name}</div>
            <div class="choosePatient">
             <!--  
                <a href="needConfirm.html" target="mainFrame" ><input type="radio" name="menuRadio" class="needConfirm1" value="0"/>&nbsp;待确认转院</a>&nbsp;&nbsp;
                <a href="pass.html"  target="mainFrame"><input type="radio" name="menuRadio" class="pass" value="1"/>&nbsp;已转院</a>
             -->  
            </div>
            <div class="menuTree">
               <div data-id="data">
	                <dl>
	                    <dt class="mainTitle"><a href="hospitalInfo.html" target="mainFrame" class="yyxx">医院信息</a></dt>
	                    <dd class="subTitle"><a href="hospitalInfo.html" target="mainFrame" class="yyxx">医院信息</a></dd>
	                </dl>
	                <dl>
	                    <dt class="mainTitle"><a href="wards.html" target="mainFrame" class="bfgl">病房管理</a></dt>
	                    <c:forEach items="${bedRoomList}" var="room"> 
                               <dd class="subTitle"><a href="wardInfo.html?roomId=${room.record_id}" target="mainFrame" class="${room.record_id}">${room.name}</a></dd>
	                    </c:forEach> 
	                </dl>
                </div>
                 <div data-id="order">
	                <dl>
	                    <dt class="mainTitle"><a href="javascript:void(0)" class="ddgl">订单管理</a></dt>
	                    <dd class="subTitle"><a href="needConfirm.html" target="mainFrame" class="needConfirm">待确认转院</a></dd>
	                    <dd class="subTitle"><a href="pass.html"  target="mainFrame" class="pass">已确认转院</a></dd>
	                    <dd class="subTitle"><a href="reject.html" target="mainFrame" class="reject">已驳回申请</a></dd>
	                </dl>
                </div>
                 <div data-id="account">
                    <dl>
	                    <dt class="mainTitle"><a href="javascript:void(0)" class="szmm">账户设置</a></dt>
	                    <dd class="subTitle"><a href="setPassword.html" target="mainFrame" class="szmm">设置密码</a></dd>
	                </dl>
               
                </div>
                
            </div>
        </div>
    </div>

<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript" src="assets/scripts/zTree/jquery.ztree.core-3.2.js"></script>
<script type="text/javascript" src="assets/scripts/nicescroll/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="assets/scripts/left.js"></script>
<script type="text/javascript">
$(function(){
	
	show();
	function  show(){
		$('.menuTree div').hide();
		//$('.menuTree div').eq('2').show();
		var obj=$('#mainMenu span').find('a[class="active"]');
		 var navName=obj.parent().attr('class');
	     var _sub = $('.menuTree').find('div[data-id="'+navName+'"]');
	     _sub.show().siblings().hide();
	     _sub.find("dl:first dt a").addClass("active");
	     var _dd_first_a = _sub.find("dl:first dd").eq(0).find('a');
	     _dd_first_a.addClass("active");
	     var _href = _dd_first_a.attr("href");
	     parent.frames["mainFrame"].location.href=_href;
	}
	
	 
	//左侧彩带的下拉，展开
	
	 
	 $('#mainMenu span a').click(function(){
		 var meName=$(this).attr('data-name');
		 /*
		 if(meName=="account"){
			
			 return false;
		 }
		 */

		 //给当前所点击的加active
		 $('#mainMenu span a').removeClass('active');
		 $(this).addClass('active');
		 //判断一下
	     var navName=$(this).parent().attr('class');
		 var _show_order;
		 
		 switch(navName){
		 	case "data" :
		 		_show_order = 0 ;
		 		break;
		 	case "order" :
		 		_show_order = 0 ;
		 	case "account" :
		 		_show_order = 0 ;
		 }
	     var _sub = $('.menuTree').find('div[data-id="'+navName+'"]');
	     _sub.show().siblings().hide();
	     _sub.find("dl:first dt a").addClass("active");
	     
	     var _dd_first_a = _sub.find("dl:first dd").eq(_show_order).find('a');
	     _dd_first_a.addClass("active");
	     var _href = _dd_first_a.attr("href");
	     //window.parent.frames[2].location.href = _href;
	     parent.frames["mainFrame"].location.href=_href;
       });
	

	
   /*  $('.choosePatient a').click(function(){
    	 $(this).children('input').attr('checked',true);
     });
    
     $('.choosePatient input').click(function(){
    	 var href=$(this).parent().attr('href');
    	 parent.frames["mainFrame"].location.href=href;
    	
     });
     */
     
});  
</script>
</body>
</html>