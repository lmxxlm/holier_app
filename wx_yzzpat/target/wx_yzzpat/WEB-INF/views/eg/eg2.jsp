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
          html,body{
              width:100%;
              height:100%;
          }
          
          div.main{
            width:100%;
            height:100%;
            background:#fff;
            padding-top:3em;
             font-size:0.9em;
          }
          
          .title{
            padding-left:1em;
            height:2.5em;
            line-height:2.5em;
            position:fixed;
            border-bottom:1px solid #e1e1e1;
            width:100%;
            z-index:2;
            background:#fff;
             font-size:0.9em;
          }
          
          .main .tc{
              border-bottom:1px solid #ddd;
              padding:0.9em 0 0.9em 4em;
              position:relative;
            
          }
          
          .main .tc i.bgChecked{
              background:url(../assets/image/eg/checked.png) no-repeat;
          }
          .main .tc i{
             position:absolute;
             display:inline-block;
             width:1.5em;
             height:1.5em;
             border-radius:50%;
             background:red url(../assets/image/eg/check.png);
             top:50%;
             margin-top:-1.2em;
             left:1.2em;
          }
          
        
          .main  .gata{height:2em;line-height:2em;}
           .main .gata b.b1{
              margin-right:0.5em;
           }
           .main .gata b.b2{
              color:#FFCF5E;
           }
           .main  p{color:#9B9B9B;}
           .main  .p{margin-bottom:1em;}
           .main .pSmall{font-size:0.9em;color:#bBbBbB;}
           
           /*保险套餐*/
           .main .bxDetail{
               padding-left:1em;
                border-bottom:1px solid #ddd;
                position:relative;
                margin-bottom:3em;
           }
            .main .bxDetail a{text-decoration:none;
            display:inline-block;
            height:3em;
            line-height:3em;
            color:#A4DAEF;
            font-size:0.89em;
            }
            
            .main .bxDetail i{
               position:absolute;
               display:inline-block;
               width:1em;
               height:1em;
               background:url(../assets/image/eg/right.png) no-repeat ;
               right:1em;
               top:.8em;
             
            }
            
            .pay{
               width:100%;
               position:fixed;
               z-index:2;
               left:0;
               bottom:0;
                 background:#fff;
            }
            .pay span{
	            display:inline-block;
	            height:3em;
	            line-height:3em;
	            color:#FFCF5E;
	            margin-left:1em;
	            font-size:1em;
            }
            
            .pay button{
               height:3em;
               line-height:3em;
               background:yellow;
               display:inline-block;
               border:none;
               color:#fff;
               position:absolute;
               right:0;
               bottom:0;
               padding:0 1em;
               font-size:1em;
            }
        </style>
    </head>
    
     <body>
        <div class="title">
                                         选择服务套餐
        </div>
        <div class="main">
           
           <div class="A tc">
              <i></i>
               <span class="gata"><b class="b1">A套餐</b><b class="b2">500元</b></span>
               <p class="p">的肌肤的肌肤，的反对封建士大夫，酒店房间都是废话，酒店附近的，服务电话4009968881</p>
               
               <p class="p">电子病历管理、院外随访（世界顶级的手机发多少积分，时间是否会对）</p>
               
               <p class="pSmall">觉得很烦的说法、的肌肤接收的烦恼</p>
           </div>
           
           <div class="B tc">
               <i></i>
               <span class="gata"><b class="b1">B套餐</b><b class="b2">666元</b></span>
               <p class="p">的肌肤的世界佛教的深刻的方式打开</p>
               
               <p class="p">好的繁华都市繁华的说法是大家</p>
               
               <p class="p">好多个繁华都市繁华的说法</p>
               
               <p class="pSmall">接电话的风景法国警方经过非官方机构</p>
           </div>
           
            <div class="C tc">
               <i></i>
               <span class="gata"><b class="b1">C套餐</b><b class="b2">666元</b></span>
               <p class="p">的肌肤的世界佛教的深刻的方式打开</p>
               
               <p class="p">好的繁华都市繁华的说法是大家</p>
               
               <p class="p">好多个繁华都市繁华的说法</p>
               
               <p class="pSmall">接电话的风景法国警方经过非官方机构</p>
           </div>
           
           <div class="D tc">
               <i></i>
               <span class="gata"><b class="b1">D套餐</b><b class="b2">666元</b></span>
               <p class="p">的肌肤的世界佛教的深刻的方式打开</p>
               
               <p class="p">好的繁华都市繁华的说法是大家</p>
               
               <p class="p">好多个繁华都市繁华的说法</p>
               
               <p class="pSmall">接电话的风景法国警方经过非官方机构</p>
           </div>
           
           <div class="E tc">
               <i></i>
               <span class="gata"><b class="b1">E套餐</b><b class="b2">666元</b></span>
               <p class="p">的肌肤的世界佛教的深刻的方式打开</p>
               
               <p class="p">好的繁华都市繁华的说法是大家</p>
               
               <p class="p">好多个繁华都市繁华的说法</p>
               
               <p class="pSmall">接电话的风景法国警方经过非官方机构</p>
           </div>
           
           <div class="F tc">
               <i></i>
               <span class="gata"><b class="b1">F套餐</b><b class="b2">666元</b></span>
               <p class="p">的肌肤的世界佛教的深刻的方式打开</p>
               
               <p class="p">好的繁华都市繁华的说法是大家</p>
               
               <p class="p">好多个繁华都市繁华的说法</p>
               
               <p class="pSmall">接电话的风景法国警方经过非官方机构</p>
           </div>
           
           <div class="bxDetail">
              <a href="">查看保险详情</a><i></i>
           </div>
           
            <div class="pay">
              <span>需支付：500</span>
              <button type="button" id="submit">提交订单</button>
            </div>
        </div>
       
        <script>
            $(function(){
            	
            	$('.tc i').on('click',function(){
            		
            		$(this).addClass('bgChecked');
            		$(this).parent().siblings().find('i').removeClass('bgChecked');
            	});
            	
                $('#submit').on('click',function(){
                	window.location.href='eg3.html';
                });
            });
        </script>
     </body>
</html>
