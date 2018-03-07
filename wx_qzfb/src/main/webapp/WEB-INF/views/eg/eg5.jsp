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
              font-family:"微软雅黑";
              font-size:13px;
           }
           .main{
               background:#F2F2F2;
               padding-bottom:80px;
           }
           
           .main .tc,.main .payMethod,.main .other{
               padding-left:13px;
               background:#fff;
               margin-bottom:10px;
           }
           .main  .tc p{
               padding:10px 0;
           }
           .main  .tc p.p1{border-bottom:2px solid #F2F2F2;}
           .main  .tc p.p2 span{
              color:#FFBD28;
           }
           
           /*支付方式*/
           
           .main .payMethod p.p1{
               padding:10px 0;
               border-bottom:2px solid #F2F2F2;
           }
           .main .payMethod p.p1 span{
           color:#FFBD28;
           }
           
           .main .payMethod .zfbPay,.main .payMethod .wxPay{
              padding:10px 13px 10px 40px;
           }
           
           .main .payMethod .zfbPay{
              border-bottom:2px solid #F2F2F2;
              background:url(../assets/image/eg/zfb.png) no-repeat 0 50%;
              position:relative;
           }
           .main .payMethod .zfbPay i{
             position:absolute;
             width:20px;
             height:20px;
             background:url(../assets/image/eg/check.png);
             right:15px;
             top:20px;  
           }
           
           
           .main .payMethod .wxPay{
              border-bottom:2px solid #F2F2F2;
              background:url(../assets/image/eg/wx.png) no-repeat 0 50%;
              position:relative;
           }
           .main .payMethod .wxPay i{
             position:absolute;
             width:20px;
             height:20px;
             background:url(../assets/image/eg/checked.png);
             right:15px;
             top:20px;  
           }
           
           .main .payMethod .intro{
              color:#BDBDBD;
              font-size:12px;
              font-family:"黑体";
           }
           
           /*其他方式*/
           
           .main .other{
              padding:10px 13px;
              position:relative;
             
              
           }
           .main .other i{
              display:inline-block;
              position:absolute;
              width:17px;
              height:11px;
              right:10px;
              margin-top:3px;
              background:url(../assets/image/eg/bottom1.png) no-repeat;
           }
           
           
           
           .pay button{
	           position:fixed;
	           left:0;
	           bottom:0;
              height:40px;
              line-height:40px;
              color:#fff;
              background:#FFCA4F;
              width:100%;
              border:0;
           }
           .pay button:hover{
              background:#FB8523;
           }
           
        </style>
    </head>
    
     <body>
        <div class="main">
           <div class="tc">
              <p class="p1">订单名称：<span>C套餐</span></p>
              <p class="p2">订单金额：<span>800元</span></p>
           </div>
           
           <div class="payMethod">
              <p class="p1">使用第三方平台支付：<span>800元</span></p>
              <div class="zfbPay">
                 <p>支付宝支付</p>
                 <p class="intro">推荐已安装支付宝客户端的用户使用：</p>
                 <i></i>
              </div>
               <div class="wxPay">
                 <p>微信支付</p>
                 <p class="intro">推荐已安装微信客户端的用户使用：</p>
                 <i></i>
              </div>
           </div>
           
             <div class="other">其他支付方式<i></i></div>
              
             
        </div>
        
         <div class="pay">
                 <button type="button">支付</button>
        </div>
        <script>
        </script>
     </body>
</html>
