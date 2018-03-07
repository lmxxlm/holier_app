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
            }
            ul,ul li,ul li a{width:100%;
              }
            ul li a{
             -webkit-box-sizing:border-box;
             -moz-box-sizing:border-box;
             display:inline-block;
             text-decoration:none;
             padding:0.5em 0 0.5em 1em;
             color:#000;
             position:relative;
             
             display:box-flex;
             display:-webkit-box-flex;
             display:-moz-box-flex;
             }
             
             ul li a img{
               width:4.5em;
               height:6em;
               border:1px solid black;
               float:left;
             }
             
             ul li a span{
            
                display:inline-block;
                line-height:1.6em;
                margin-left:1em;
             }
              ul li a span b.name{
                 color:#696969;
                 font-size:1em;
              }
              ul li a span b{
                 display:block;
                 color:#a0a0a0;
                 font-size:0.78em;
                 font-weight:500;
              }
              ul li a i{
                 display:inline-block;
                 width:1.5em;
                 height:1.5em;
                 border-radius:50%;
                 background:url("../assets/image/eg/icon.jpg");
                 position:absolute;
                 top:0.5em;right:1em;
              }
              hr{margin:0;padding:0;margin-left:5.5em;margin-top:0.7em;color:#bcbcbc;border-top:0px;
              border-bottom:2px solid #dcdcdc;height:0;}
              .clear{
                 clear:both;
              }
              
              /*模态框*/
              .bg{
                z-index:99;
                position:absolute;
                top:0;
                left:0;
                 width:100%;
                 height:100%;
                 background:rgba(0,0,0,0.3);
                display:none;
              }
              .bg .modal{
                 width:90%;
                 
                 background:#F1F1F1;
                 position:absolute;
                 top:10%;
                 left:5%;
                 }
                 
              .bg .modal span.title{
                  display:inline-block;
                  width:100%;
                  height:2em;
                  line-height:2em;
                  font-size:0.93em;
                  font-weight:600;
                  background:#fff;
                  text-align:center;
                  border-bottom:2px solid #F1F1F1;
              }
              
              .bg .modal div.info{
                 background:#fff;
                 padding:0.8em 1em;
              }
              .bg .modal div.info img{
                 float:left;
                 
              }
              .bg .modal div.info span{
                 display:inline-block;
                 line-height:1.2em;
                 margin-left:1em;
              }
              .bg .modal div.info span b{
                   display:block;
                 color:#a0a0a0;
                 font-size:0.78em;
                 font-weight:500;
              }
              
             .bg .modal div.info span b.name{
                 color:#696969;
                 font-size:1em;
              }
              
              /*专长*/
            .bg .modal  div.special{
                padding:0.7em 1em;
                background:#fff;
                margin-top:0.7em;
                line-height:1.5em;
            } 
            .bg .modal  div.special .p1{
                font-size:0.9em;
                color:#4D4D4D;
               
                            }
            .bg .modal  div.special .p2{
               font-size:0.75em;
               color:#B6B6B6;
               
            }
            /*简介*/
            .bg .modal div.introduce{
               padding:0.7em 1em;
               background:#fff;
               margin-top:0.7em;
            }
            
            .bg .modal div.introduce .p1{
                font-size:0.9em;
                color:#4D4D4D;
            }
            
             .bg .modal div.introduce .p2{
                font-size:0.75em;
               color:#B6B6B6;
               margin-top:2em;
            }
            
        </style>
    </head>
    
     <body>
      <div class="main">
         <ul>
            <li><a href="#">
                  <img src="../assets/image/eg/doc1.jpg">
                <span >
                   <b class="name">将攻打</b>
                   <b>副主任医师</b>
                   <b>康复科</b>
                   <b>浙江明州康复医院</b>
                </span>
                
                <i></i>
                <hr></hr>
            </a></li>
            <li><a href="#">
                  <img src="../assets/image/eg/doc1.jpg">
                <span >
                   <b class="name">将攻打</b>
                   <b>副主任医师</b>
                   <b>康复科</b>
                   <b>浙江明州康复医院</b>
                </span>
                
                <i></i>
                <hr></hr>
            </a></li>
            <li><a href="#">
                  <img src="../assets/image/eg/doc1.jpg">
                <span >
                   <b class="name">将攻打</b>
                   <b>副主任医师</b>
                   <b>康复科</b>
                   <b>浙江明州康复医院</b>
                </span>
                
                <i></i>
                <hr></hr>
            </a></li>
         </ul>
      </div>
      
      <div class="bg">
         <div class="modal">
            <span class="title">专家详情</span>
            
            <div class="info">
              <img src="../assets/image/eg/doc1.jpg">
              <span>
                 <b class="name">将攻打</b>
                 <b>副主任医师</b>
                 <b>康复科</b>
                 <b>浙江明州康复医院</b>
              </span>
            </div>
            
            <div class="special">
               <p class="p1">专长</p>
               <p class="p2">高压氧治疗领域</p>
            </div>
            
            <div class="introduce">
               <p class="p1">简介</p>
               <p class="p2">
              付款的说法就是封建时代，僵尸粉僵尸粉僵尸粉接受对方，费时间发货时间发货速度警方决定是否合适，粉红色的空间粉红色的看法和随机发货开始就，积分很少多久发货及时电话分机多少繁华都市，
               </p>
            </div>
            
         </div>
      </div>
      <script>
         $(function(){
        	    $('li').on('click',function(){
        	    	
        	    	$('.bg').show();
        	    });
        	 
         });
      </script>
      
    </body>
</html>
