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
a.help{float:right; padding-left:5%; background:url(assets/images/common/help_circle.png) no-repeat left center; color:blue; margin-top:0;_margin-top:-17px;*margin-top:-17px;}
input{width:97%;height:100%;padding-left:15px;_height:30px;*height:30px;}
.confirmBtn{background:#044599 none no-repeat scroll 0 0;padding:5px 10px;color:#fff;border:none;margin-right:25%;border-radius:5px;}

.cz{text-align:center !important;}
a.cancel{color:blue;}
</style>
</head>


<body>
    <div id="frameMain">
        <div id="top_nav">当前位置：设置账户&nbsp;>&nbsp;设置密码</div>
        <input type="hidden" name="token" value="${token}"></input>
        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                <tr>
                    <td class="ltitle" style="border-top:1px solid #02397F;">账号</td>
                    <td class="td1" style="border-top:1px solid #ECECEC;">
                    <input type="hidden" name="hos_id" value="${accountId}"></input>
                    ${accountId}
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">登陆密码</td>
                    <td class="td1"><input type="password" name="pre_pass" placeholder="请输入登陆密码"></input></td>
                </tr>
                <tr>
                    <td class="ltitle">新密码</td>
                    <td class="td1">
                     <input type="password" name="new_pass" placeholder="请输入新密码"></input>
                    </td>
                </tr> 
                <tr>
                    <td class="ltitle">再输入一遍新密码</td>
                    <td class="td1"><input type="password" name="agin_pass" placeholder="请再次输入新密码"></input></td>
                </tr>
                <tr >
                    <td class="ltitle"></td>
                    <td class="td1 cz"><button class="confirmBtn">确认修改</button><a href="#" class="cancel">取消</a></td>
                </tr>
        </table>
    </div>
    
<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript" src="assets/scripts/common/frame.js"></script>
<script type="text/javascript" src="assets/plugins/MD5/md5.js"></script>
<script>
$(function(){
	
	
	init();
	function init(){
		var pre_pass=$('input[name="pre_pass"]').val('');
		var new_pass=$('input[name="new_pass"]').val('');
		var agin_pass=$('input[name="agin_pass"]').val('');
	}
	$('.confirmBtn').on('click',function(){
		var pre_pass=$('input[name="pre_pass"]').val();
		var new_pass=$('input[name="new_pass"]').val();
		var agin_pass=$('input[name="agin_pass"]').val();
		var hos_id=$('input[name="hos_id"]').val();
		var token=$('input[name="token"]').val();
		
		if(!token){
			alert("非法提交");
			return false;
		};
		//先判断登陆密码
		if(!pre_pass){
			alert("您没有输入登陆密码！");
			return false;
		};
		if(!new_pass||(new_pass.length<6)){
			alert("没有输入新密码,或者密码的长度小于6位");
			return false;
		}
		if(!agin_pass||(agin_pass.length<6)){
			alert("没有输入新密码,或者密码的长度小于6位");
			return false;
		}
		if(new_pass!=agin_pass){
			alert("当前输入的密码不等于新密码，请重新输入");
			$('input[name="agin_pass"]').val('');
			return false;
		}
		
		pre_pass = hex_md5(hos_id+pre_pass);
		new_pass = hex_md5(hos_id+new_pass);
		agin_pass = hex_md5(hos_id+agin_pass);
		
		var questArr={
				accountId:hos_id,
				password:pre_pass,
				new_password:new_pass,
				token:token
		}
		
		var questURL=runParams.mainUrl+'edit_pass.do';
		
		$.post(questURL,questArr,function(result){
			if(result==1){
			   alert("修改成功");
			   init();
			   location.reload();
			}else if(result==2){
				alert("输入的原密码不正确!");
				return false;
				location.reload();
			}else{
				alert("修改失败");
				return false;
				location.reload();
			};
			
		});
	
		
	});
	
	$('.cancel').on('click',function(){
		init();
		return false;
	});
	
	//设置菜单
	showMainMenu('account');
	menuInit();
	function menuInit(){
		var leftFrame = $(window.parent.frames["leftFrame"].document);
		leftFrame.find('.menuTree a').removeClass('active');
		leftFrame.find('.szmm').addClass("active");
	}
	

    
});
</script>
</body>
</html>