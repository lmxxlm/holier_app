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
        <title>基本信息</title>
        <meta name="description" content="">
	    
        <meta content="width=device-width,initial-scale=1,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
       
       <script src="assets/script/js/jquery.min.js"></script>
        <script src="assets/script/js/jquery-migrate.min.js"></script>
       <link rel="stylesheet" href="assets/css/public.css">
      <link rel="stylesheet" href="assets/css/lCalendar.css">
       <script src="assets/script/js/lCalendar.min.js"></script>
        
      <!--手机移动端web资源的整合  end-->
        <style>
           html,body,.main{
              width:100%;
              height:100%;
              font-family:"黑体";
              background:#f1f1f1;
              overflow-y:hidden;
           }
           .main p{
              padding:0 15px;
              border-bottom:1px solid #E7E5E2;
              background:#fff;
              height:50px;
              line-height:50px;
              font-size:16px;
              position:relative;
             
           }
           .main p span:first-child{color:#999999;}
           .main p span:last-child{
               color:#333333;
               float:right;
               padding-right:20px;
            
           }
           
           .main p i{
           position:absolute;
               right:15px;
               top:50%;
               margin-top:-7px;
              display:inline-block;
               width:10px;
               height:15px;
                background:url(assets/image/basic_info/right.png) no-repeat ;
               background-size:cover;
           }
           
           .main p.disease,.main p.doc_main,.main p.account_bind{
              margin-top:12px;
           }
           
           .main p.account_bind a{
              text-decoration:none;
              
           }
           .main p.account_bind a:first-child{
               color:#FF1D1D;
               margin-right:10px;
           }
           .main p.account_bind a:last-child{
               color:#1CA41C;
           }
           
           
        </style>
     </head>
     <div class="main">
         <p class="name"><span>姓名</span><i></i><span>赵圣洁</span></p>
         <p class="tel"><span>手机</span><i></i><span>18105735665</span></p>
         <p class="sex"><span>性别</span><i></i><span>男</span></p>
         <p class="disease"><span>基础疾病</span><i></i><span>腰间盘突出</span></p>
         <p class="doc"><span>建档医院</span><i></i><span>杭州市第一人民医院</span></p>
         <p class="doc_main"><span>主管医生</span><i></i><span>梁海杰</span></p>
         <p class="account_bind"><span>易转诊APP账号绑定</span><i></i><span><a href="">未绑定</a><a href="">已绑定</a></span></p>
     </div>
     
    
     <body>
	 <script>
	       
	 </script>
     </body>
</html>
