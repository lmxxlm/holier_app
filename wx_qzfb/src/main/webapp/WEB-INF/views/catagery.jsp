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
        <link href="assets/css/productAdmin/catagery.css" rel="stylesheet">
        <link href="assets/css/productAdmin/catagery_fix.css" rel="stylesheet">
        
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
             <section>
                 <div class="part1">
                     <div class="head">
                         <span class="img"><img src="assets/image/productAdmin/catagery/医生头像.png" width="80rem" height="100rem"/></span>
                        
                         <span class="introduce">
                            <p class="p1">戒烟门诊<span>普诊</span></p>
                            <p class="p2">门诊呼吸内科</p>
                         </span>
                     </div>
                     
                      <div class="info">
                           <div class="info1"><span class="consu_name">门诊呼吸内科</span >
                           <span class="date">2016-03-16</span></div>
                           
                           <div class="info2"><span class="register">挂号|诊断费</span>
                           <span class="money"><em>0.0</em>元|<em>10.0</em>元</span></div>
                           
                           <div class="info3">
                               <span class="name1">就诊人</span><span class="name2">谭新</span>
                           </div>
                     
                     </div>
                     
                     <div class="clear"></div>
                 </div>
                 
                 
                
             </section>
             
             <section>
                 <div class="list">
                     <ul>

                         <li>
                          <p>
                            <span class="span2">08:00-08:30</span>
                            <span class="span3">余号6个</span>
                          </p> 
                         </li>
                      
                       
                       <li>
                          <p>
                            <span class="span2">08:00-08:30</span>
                            <span class="span3">余号6个</span>
                          </p> 
                         </li>
                         
                       <li>
                          <p>
                            <span class="span2">08:00-08:30</span>
                            <span class="span3">余号6个</span>
                          </p> 
                         </li>
                       
                      <li>
                          <p>
                            <span class="span2">08:00-08:30</span>
                            <span class="span3">余号6个</span>
                          </p> 
                         </li>
                       
                      <li>
                          <p>
                            <span class="span2">08:00-08:30</span>
                            <span class="span3">余号6个</span>
                          </p> 
                         </li>
                       
                     <li>
                          <p>
                            <span class="span2">08:00-08:30</span>
                            <span class="span3">余号6个</span>
                          </p> 
                         </li>
                       
                      <li>
                          <p>
                            <span class="span2">08:00-08:30</span>
                            <span class="span3">余号6个</span>
                          </p> 
                         </li>
                       
                     </ul>
                 </div>
             </section>
              <div class="fixed">
            
                   <a href="confirm_register.html"><span><button>确定挂号</button></span></a>
               </div>
         </div>
       
         <script type="text/javascript">
		
		 
		     $('ul li').hover(function(){
				 $(this).css('background','#C0C7C8');
				 },function(){
				 $(this).css('background','#fff');
				 });
				
			$('ul li').click(function(){
				
				/*var target=$(this).slibings().find('li');*/
				$(this).children('p').css({
					 'background':'url("assets/image/productAdmin/catagery/选中.png") left center no-repeat',
					 'background-size':'5%'
					 });
				$(this).siblings().children('p').css({
					  'background':'url("assets/image/productAdmin/catagery/默认.png") left center no-repeat',
					 'background-size':'5%'
					 });
				
				});
				
				
			
         </script>
      
      
        
         
    </body>
</html>
