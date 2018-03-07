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
        <title>添加信息</title>
        <meta name="description" content="">
	    
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        
       <script src="../assets/script/productAdmin/jquery.min.js"></script>
       <link rel="stylesheet" href="../assets/css/public.css">
        
      <!--手机移动端web资源的整合  end-->
        <style>
           html,body,.main{
              width:100%;
              height:100%;
              font-size:16px;
              font-family:"黑体";
              font-size:16px;
              
           }
           /*头部*/
           .head{
	           position:fixed;
	           left:0;
	           top:0;
               background:#97D4EC;
               z-index:999;
               text-align:center;
               height:46px;
               line-height:46px;
               color:#fff;
               font-size:14px;
               width:100%;
           }
           .head span{
              border:1px solid #fff;
              padding:5px 20px;
           }
           
           .head span.span1{
              border-radius:5px 0 0 5px;
           }
           .head span.span2{
              border-radius:0 5px 5px 0;
           }
           .head .active{
               background:#fff;
               color:#97D4EC;
           }
           a{text-decoration:none;color:#BCBCBC;}
           /*列表部分*/
           .main{background:#ECF0F1;padding-top:58px;}
           
           .main,ul,li{
              width:100%;
           }
           .main ul li a{
               width:100%;
              display:inline-block;
              padding:13px;
              background:#fff;
              margin-bottom:13px;
              font-size:14px;
              padding-left:100px;
              position:relative;
              -webkit-box-sizing:border-box;
              -moz-box-sizing:border-box;
              box-sizing:border-box;
           }
           .main ul li a img{
              position:absolute;
              left:13px;
              /*垂直居中*/
              top:50%;
              margin-top:-30px;
           }
           
           .main ul li a .hosName{
              color:#5D5D5D;
              margin-bottom:7px;
           }
           .main ul li a .distance{
               font-size:12px;
               color:#B6B6B6;
           }
           
           .main ul li a .cara{
               font-size:10px;
               line-height:20px;
           }
           .main ul li a .cara span{
              border:1px solid #B6B6B6;
              border-radius:3px;
           }
           
           .main ul li a .cara span.first{
               border:1px solid #FFC677;
               color:#FFC677;
           }
           
           /*尾部*/
           .footer{
              width:100%;
              position:fixed;
              left:0;
              bottom:0;
              height:50px;
              background:#ECF1F2;
              border-top:1px solid #D6DADB;
              z-index:100;
           }
           .footer span{
              display:inline-block;
              width:25%;
              height:40px;
              float:left;
              text-align:center;
              margin-top:5px;
           }
           
           .footer span.span1{
               background: url(../assets/image/eg/hz.jpg) no-repeat 50%;
           }
           .footer span.span2{
               background: url(../assets/image/eg/sp.jpg) no-repeat 50%;
           }
           
           .footer span.span3{
               background: url(../assets/image/eg/jl.jpg) no-repeat 50%;
           }
           
           .footer span.span4{
               background: url(../assets/image/eg/cw.jpg) no-repeat 50%;
           }
        </style>
    </head>
    
     <body>
       
        <div class="main">
        <div class="head">
            <span class="span1 active">列表</span><span class="span2">地图</span>
        </div>
           <ul>
              <li>
                <a href="eg7.html">
                        <img src="../assets/image/eg/hos.jpg"/>
		                <p class="hosName">嘉兴抗就中医院</p>
		                <p class="distance">距离您（10）公里-南湖区</p>
		                <p class="cara">
		                <span class="first">转运车接送</span>
		                <span>康复医学科</span>
		                <span>中医外科</span>
		                <span>针灸科</span>
		                <span>推拿科</span>
		                </p>
                </a>
              </li>
              
              
              <li>
                <a href="">
                        <img src="../assets/image/eg/hos.jpg"/>
		                <p class="hosName">嘉兴抗就中医院</p>
		                <p class="distance">距离您（10）公里-南湖区</p>
		                <p class="cara">
		                <span class="first">转运车接送</span>
		                <span>康复医学科</span>
		                <span>中医外科</span>
		                <span>针灸科</span>
		                <span>推拿科</span>
		                </p>
                </a>
              </li>
              
              
               <li>
                <a href="">
                        <img src="../assets/image/eg/hos.jpg"/>
		                <p class="hosName">嘉兴抗就中医院</p>
		                <p class="distance">距离您（10）公里-南湖区</p>
		                <p class="cara">
		                <span class="first">转运车接送</span>
		                <span>康复医学科</span>
		                <span>中医外科</span>
		                <span>针灸科</span>
		                <span>推拿科</span>
		                <span>康复医学科</span>
		                <span>中医外科</span>
		                <span>针灸科</span>
		                <span>推拿科</span>
		                <span>康复医学科</span>
		                <span>中医外科</span>
		                <span>针灸科</span>
		                <span>推拿科</span>
		                </p>
                </a>
              </li>
              
              
              
               <li>
                <a href="">
                        <img src="../assets/image/eg/hos.jpg"/>
		                <p class="hosName">嘉兴抗就中医院</p>
		                <p class="distance">距离您（10）公里-南湖区</p>
		                <p class="cara">
		                <span class="first">转运车接送</span>
		                <span>康复医学科</span>
		                </p>
                </a>
              </li>
           </ul>
        </div>
        <div class="footer">
            <span class="span1"></span>
            <span class="span2"></span>
            <span class="span3"></span>
            <span class="span4"></span>
        </div>
        
        
        <script>
        </script>
     </body>
</html>
