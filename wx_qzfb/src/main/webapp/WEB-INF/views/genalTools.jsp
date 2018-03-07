<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=”zh”> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="description" content="">
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
      </head>
      <style>
      body{background:#ECF0F0;}
       body,span,p,div,b,img{border:0;margin:0;padding:0;}
        div.main{diaplay:inline-block;margin:0;padding:0;}
        
        .img img{width:100%;height:10em;}
        p{height:2.5em;line-height:2.5em;padding-left:1em;background:#fff;font-weight:bold;color:#666;}
        .tool{width:100%;background:#fff;margin-top:0.5em;display:inline-block;height:12em;}
        .tool a{display:inline-block;height:12em;width:49%;float:left;text-align:center;height:12em;text-decoration:none;}
        
        .tool a img{width:4em;vertical-align: middle;display:inline-block;margin:0;padding:0;margin-top:2em;}
        .tool a b{margin-top:1em; font-size:0.9em;color:#777;font-weight:bold;}
        .tool a b.detail{font-size:0.8em;font-weight:normal;}
        .x{border-right:1px solid #ECF0F0;}
        .clear{clear:install;}
      </style>
     <body>
         <div class="main">
             <div class="img"><img src="assets/image/productAdmin/genalTools/cygjTop.jpg"></div>
             <p>常用工具</p>
             <div class="tool">
                 <a  href="ycqCount.html" class="x">
                     <img src="assets/image/productAdmin/genalTools/ycqjs.gif"></br></br>
                     <b>预产期计算</b></br>
                     <b class="detail">为产妇计算预产期</b>
                 </a>
                 <a href="babyYC.html">
                     <img src="assets/image/productAdmin/genalTools/bb.gif"></br></br>
                     <b>宝宝指标预测</b></br>
                     <b class="detail">为宝宝计算身高体重</b>
                 </a>
             </div>
             <div class="clear"></div>
         </div>
     
     </body>
</html>

