<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang=”zh”>
<!--<![endif]-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>康复管理平台</title>
<link href="assets/style/authority/login_css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#login_sub").click(function(){
			$("#submitForm").attr("action", "index.html").submit();
		});
	});
	
	/*回车事件*/
	function EnterPress(e){ //传入 event 
		var e = e || window.event; 
		if(e.keyCode == 13){ 
			$("#submitForm").attr("action", "index.html").submit();
		} 
	} 
	
	/*字符串去空格*/
	String.prototype.Trim = function(){    
	    return this.replace(/(^\s*)|(\s*$)/g, "");    
	}

	var keyLogin = function(event){
	    if(event.keyCode == 13 ){
	    		doLogin();
	    }
	}

	
	var doLogin = function(){
	    var username = $('input[name="username"]').val();
		var password = $('input[name="password"]').val();
		var token = $('input[name="token"]').val();
		var rememberDetail = $('input[name="rememberDetail"]:checked').val();
		password = hex_md5(username+password);
		if(!token){
		    $('#worn_failed').html('页面非法提交！').show();
			return false;
		}
		if(!username || !password){
		    $('#worn_failed').html('请填写完整！').show();
			return false;
		}
		wornShow('loading');
		var questURL = runParams.mainUrl+'checkLogin.do';
		var questArr = {
			accountId:username,
			passwd:password,  
			token:token,
			rememberDetail:rememberDetail
		};
		$.post(questURL,questArr,function(result){
			if(1==result){
				wornShow('success');
				location.href = runParams.mainUrl+'chooseAccountDoc.html';
			}else{
				alert('用户名或密码错误！');
				//$('#worn_failed').html('用户名或密码错误！').show();
				location.reload();
				return false;
			}
		});
	}
</script>
</head>
<body>
	<div id="login_center">
		<div id="login_area">
			<div id="login_box">
				<div id="login_form">
					<form id="submitForm" action="" method="post">
						<div id="login_tip">
							<span id="login_err" class="sty_txt2"></span>
						</div>
						<div>
							 用户名：<input type="text" name="userEntity.userCode" class="username" id="name">
						</div>
						<div>
							密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="userEntity.password" class="pwd" id="pwd" onkeypress="EnterPress(event)" onkeydown="EnterPress()">
						</div>
						<div id="btn_area">
							<input type="button" class="login_btn" id="login_sub"  value="登  录">
							<input type="reset" class="login_btn" id="login_ret" value="重 置">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>