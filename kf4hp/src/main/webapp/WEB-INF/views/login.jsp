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
body{background:url(assets/images/common/1600x840.jpg) no-repeat center bottom;}
.bodyWrapTable,.bodyWrapTd{width:100%;height:100%;vertical-align:middle;}
.loginBox{width:400px;height:200px;background:#fff;overflow:hidden;border:1px solid #ccc;border-radius:5px;box-shadow:5px 5px 5px #999;margin:0 auto;margin-top:}
.loginBox table{width:100%;height:100%;}
.loginBox table td{height:50px;}
.td1{height:50px;line-height:50px;color:#fff;font-size:20px;background:url(assets/images/common/logo-mini.png) no-repeat #000 10px center;padding-left:50px;}
.td2{border-right:1px solid #02397F;border-bottom:1px solid #02397F;}
.td3{border-bottom:1px solid #ccc;text-align:left;padding-left:5px;}
.td2{width:100px;padding-right:10px;text-align:right;background:#044599;letter-spacing:2px;color:#fff;}
.td3 input{height:50px;line-height:50px;border:0 solid;width:250px;font-size:16px;}
.td4{text-align:center;}
.account{background:url(assets/images/common/account.gif) no-repeat 260px center;}
.password{background:url(assets/images/common/password.gif) no-repeat 263px center;}
a.loginSubmit{display:inline-block;width:105px;height:36px;color:#fff !important;text-align:center;line-height:36px;background:url(assets/images/common/loginSubmit.jpg) no-repeat 0 0;letter-spacing:2px;}
a.loginSubmit:hover{text-decoration:none;background-position:0 -36px;line-height:38px;}
</style>
</head>

<body >
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bodyWrapTable">
<tr>
<td class="bodyWrapTd">
<div class="loginBox">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" class="td1">好乐医康复管理平台</td>
  </tr>
  <tr>
    <td class="td2">账户：</td>
    <td class="td3 account"><input type="text" name="account" value=""/></td>
  </tr>
  <tr>
    <td class="td2">密码：</td>
    <td class="td3 password"><input type="password" name="password" value=""/></td>
  </tr>
  <tr>
    <td colspan="2" class="td4">
        <input type="hidden" name="token" value="${token}"></input>
        <a href="javascript:void(0)" class="loginSubmit">登录</a>
    </td>
  </tr>
</table>
</div>
</td>
</tr>
</table>

<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript" src="assets/plugins/MD5/md5.js"></script>
<script>
$(function(){
	

    if (top.location != self.location){       
        top.location = runParams.mainUrl+'login.html';   
    } 
	//初始化用户名和密码
	init();
	function init(){
		$('input[name="account"]').val('');
		$('input[name="password"]').val('');
	}
	
	
	$('input[name="account"]').focus();
	
	document.onkeydown=function(event){
		 keyLogin(event);
	}
	
	function keyLogin(event){
	    if(event.keyCode == 13 ){
	    		doLogin();
	    }
	}

	
	
	function doLogin(){
		var account=$('input[name="account"]').val();
		var password=$('input[name="password"]').val();
		password = hex_md5(account+password);
		var token=$('input[name="token"]').val();
		if(!token){ 
			alert("页面非法提交");
			return false;
		}
		if(!account || !password){
			alert("请填写完整");
			return false;
		}
		var questURL=runParams.mainUrl+'checkLogin.do';
		var questArr={
		    accountId:account,
		    password:password,
		    token:token
		};
		$.post(questURL,questArr,function(result){
			if(result){
				location.href= runParams.mainUrl+'index.html';
				
			}else{
				alert("用户或密码错误！");
				location.reload();
				return false;
			}
			
		});
		
	}
	
	//先做登陆
	$('.loginSubmit').on('click',function(){
		doLogin();
	});
});
</script>
</body>
</html>