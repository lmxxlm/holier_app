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
              font-size:16px;
           }
           b{font-weight:normal;}
           .main{
              background:#F1F1F1;
              font-size:0.9em;
           }
           /*订单号*/
           .main div.num{
              padding:0 1em;
              height:2.5em;
              line-height:2.5em;
              background:#fff;
           }
           
           .main div.num b{
           font-size:0.9em;
           font-weight:normal;
           }
           
           .main div.num span{
              float:right;
              color:#7FC8EB;
           }
           
           /*套餐名称*/
           .main div.tc{
              background:#fff;
              margin-top:0.8em;
           }
           .main div.tc p{margin-left:1em;}
           .main div.tc div.content{
               border:1px solid #F1F1F1;
               border:1px 0;
               font-size:0.85em;
               color:#B6B6B6;
           }
           
           .main div.tc div.content p,.main div.tc p{
             padding:0.5em 0;
           }
           
           /*查看保险详情*/
           .main div.tc .detail{
              color:#7FC8EB;
              position:relative;
           }
           .main div.tc .detail i{
              display:inline-block;
              width:12px;
              height:16px;
              background:red url(../assets/image/eg/right1.jpg);
              right:1em;
              position:absolute;
              
           }
           
           /*预定时间*/
           .main p.ydDate{
              padding:0.5em 1em;
              background:#fff;
              margin-top:0.7em;
           }
           .main p.ydDate span{
              color:#AEAEAE;
           }
           .main p.ydDate b{
               float:right;
           }
           
           /*患者信息*/
           .main .info{
              background:#fff;
              margin-top:0.7em;
              padding:0.3em 1em;
              margin-bottom:6.5em;
           }
           
           .main .info p{
              padding:0.3em 0;
           }
           
           .main .info p.til{color:#7D7D7D;}
           .main .info p.name, .main .info p.tel{
           font-size:0.85em;
           }
           .main .info p.name span,.main .info p.tel span{color:#A1A1A1;}
           .main .info p.name b,.main .info p.tel b{color:#646464;float:right;}
           
           /*支付*/
           .main .pay{
              position:fixed;
              left:0;
              bottom:0;
              z-index:2;
              background:#fff;
              border-top:1px solid #F1F1F1;
              width:100%;
           }
           
           .main .pay p{
              padding:0.8em 1em;;
              color:#FFCF5E;
           }
           
           .main .pay button{
              height:3em;
              line-height:3em;
              color:#fff;
              background:#FFCA4F;
              width:100%;
              border:0;
           }
           .main .pay button:hover{
              background:#FB8523;
           }
        </style>
    </head>
    
     <body>
        <div class="main">
        
           <div class="num">
             <b>2016101801AZ</b>
             <span>已提交</span>
           </div>
           
           <div class="tc">
              <p class="tcName">C套餐</p>
              <div class="content">
              <p>包含A套餐的所有服务内容；</p>
              <p>手术意外伤害保险，单笔最高赔付10万（本保险包含术后并发症赔付）</p>
              <p>获得专家免费在线咨询一次</p>
              <p>本套餐简易骨科手术情况下选择较为合适。</p>
              </div>
              <p class="detail">查看保险详情<i></i></p>
           </div>
           
           <p class="ydDate">
               <span>预定时间</span><b>2016-10-18 15:41:54</b>
           </p>
           
           <div class="info">
               <p class="til">患者信息</p>
               <p class="name"><span>患者姓名</span><b>赵圣洁测试</b></p>
               <p class="tel"><span>手机号</span><b>18368839220</b></p>
           </div>
           
          
           
           <div class="pay">
	           <p>需支付：$800</p>
	           <button type="button">支付</button>
           </div>
        </div>
        <script>
          $(function(){
        	  $('.pay button').on('click',function(){
        		  
        		  window.location.href="eg5.html";
        	  });
        	  
          });
        
        </script>
     </body>
</html>
