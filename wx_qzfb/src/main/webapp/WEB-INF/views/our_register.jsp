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
        <meta content=”width=device-width;  initial-scale=no; maximum-scale=1.0; user-scalable=0;″ name=”viewport” />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
        
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
        <link href="assets/css/productAdmin/our_register.css" rel="stylesheet">
        <!-- <link href="assets/css/productAdmin/our_register_fix.css" rel="stylesheet"> -->
        
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" >
        
    <!--    <link href="css/bootstrap.min.css" rel="stylesheet">-->
       
	   <script src="assets/script/productAdmin/jquery.min.js"></script>
       <script src="assets/script/productAdmin/bootstrap.min.js"></script>
        
        <script src="assets/script/productAdmin/vendor/modernizr-2.6.2.min.js"></script>
        <!--手机移动端web资源的整合  start
             1.强制让文档宽度与设备宽度保持1：1
             ，文档中最大宽度比例是1.0，且不润许点击屏幕放大浏览
             2.忽略将页面中的数字识别为电话号码
             3.忽略Android平台中对邮箱地址的识别
             4.当网站添加到主屏幕快速启动方式，可隐藏地址栏，仅针对io
             5.将网站添加到主屏幕快速启动方式，仅针对ios的safari顶端状态条的样式s的safari
        -->
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        
    
        
        <!--手机移动端web资源的整合  end-->
        
  </head>
       <body>
           <div class="main">
             <div class="search"><span><input type="search" placeholder="搜索科室、医生姓名或拼音首字母"/></span>
             </div>
             <div class="list">
                 <section>
                    <ul id="nav">
                      <a href="our_collect.html"><li class="icon1"><span >我的收藏</span></li></a>
                      <a href="catagery.html"><li class="icon2"><span href="#">门诊妇科</span></li></a>
                       <a href="catagery.html"><li class="icon3"><span href="#">门诊妇科副高</span></li></a>
                       <a href="catagery.html"><li class="icon4"><span href="#">门诊产科</span></li></a>
                       <a href="catagery.html"><li class="icon5"><span href="#">门诊骨科</span></li></a>
                       <a href="catagery.html"><li class="icon6"><span href="#">门诊产后康复中心</span></li></a>
                       <a href="catagery.html"><li class="icon7"><span href="#">门诊超声科</span></li></a>
                       <a href="catagery.html"><li class="icon8"><span href="#">门诊传染科</span></li></a>
                       <a href="catagery.html"><li class="icon9"><span href="#">门诊儿科</span></li></a>
                       <a href="catagery.html"><li class="icon10"><span href="#">门诊耳鼻咽喉科</span></li></a>
                       <a href="catagery.html"><li class="icon11"><span href="#">门诊肛肠科</span></li></a>
                       <a href="catagery.html"><li class="icon12"><span href="#">门诊呼吸内科</span></li></a>
                       <a href="catagery.html"><li class="icon13"><span href="#">门诊急诊</span></li></a>
                       <a href="catagery.html"><li class="icon14"><span href="#">门诊口腔科牙科</span></li></a>
                    </ul>
                    
                   
                 
                 </section>
             </div>
           </div>
         
        
         <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        
        <script>
		    $('ul a').hover(function(){
				$(this).css('background','#C0C7C8');
				},function(){
				$(this).css('background','#ffffff');
				});
			
        </script>
		   
  </body>
</html>