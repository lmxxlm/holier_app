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
           }
           .main{background:#fff;}
           
           /*套餐名称*/
          .main .til{
              padding:0 1em;
              height:2.5em;
              border-bottom:2px solid #F5F5F5;
          }
          .main .til span,.main .til b{
             display:inline-block;
             height:2.5em;
             line-height:2.5em;
             font-size:0.9em;
          }
          .main .til span{
          float:right;
          color:#FFCA4F;
          }
          
          /*套餐内容*/
          .main div.content{
             padding:0 1em;
             font-size:0.9em;
             color:#606060;
          }
          .main div.content p{
             margin-top:0.9em;
          }
          
          
          
          /*填写信息*/
          .main div.writeInfo{
             height:3em;
             line-height:3em;
             padding-left:3em;
             background:#CCCCCC;
             font-weight:bold;
             font-size:0.9em;
             margin-top:1em;
             position:relative;
          }/*19 21*/
          .main div.writeInfo i{
             width:19px;
             height:21px;
             display:inline-block;
             position:absolute;
             background:red url(../assets/image/eg/info.png) no-repeat;
             left:1em;
             top:0.8em;
          }
          
          /*正式填写信息*/
          .main div.writedInfo{
             padding:0 1em;
             font-size:0.9em;
             margin-bottom:4em;
          }
          
          .main div.writedInfo label{
             display:block;
             color:#D1D1D1;
             margin-top:1em;
             font-size:0.9em;
             margin-bottom:0.5em;
          }
          .main div.writedInfo label b{color:red;font-weight:bold;}
          .main div.writedInfo input{
            height:2.3em;
            line-height:2.3em;
            padding-left:1em;
            font-size:0.9em;
            color:#000;
            font-family:"黑体";
            width:100%;
            margin-right:1em;
            -webkit-box-sizing:border-box;
            -moz-box-sizing:border-box;
            box-sizing:border-box;
          }
          
          /*手机日期 15 11*/
          .main div.writedInfo .date {
             background:url(../assets/image/eg/bottom.jpg) no-repeat right 50%;
          }
          /*提交订单*/
          .main div.submit input{
             height:3em;
             line-height:3em;
             color:#fff;
             background:#FFBD28;
             display:block;
             width:100%;
             border:0;
             position:fixed;
             left:0;
             bottom:0;
             font-size:0.9em;
             
          }
          .main div.submit input:hover{
              background:#FF9925;
          }
          
          
        </style>
    </head>
    
     <body>
     <div class="main">
	       <div class="til">
	          <b>D套餐</b>
	          <span>$866</span> 
	       </div>
     
	       <div class="content">
	       <p>包含A套餐中所有的内容</p>
	       <p>的开发的卡夫卡的，发到手机放到发（放松放松的jfk速度jfk是）</p>
	       <p>获得专家免费在线咨询一次</p>
	       <p>本套餐简易骨科手术下选择较为合适。</p>   
	       </div>
       
	        <div class="writeInfo">
	            <i></i>
	                                   请填写一下信息：
	        </div>
       
		    <div class="writedInfo">
		         <label for="name">患者姓名<b>*</b></label>
		         <input type="text" value="" name="name" placeholder="请输入患者姓名" required/>
	             <label for="tel">联系手机 <b>*</b></label>
	             <input type="text" value="" name="tel" placeholder="请输入手机号" required/>
	             <label for="date">手术日期 <b>*</b></label>
	             <input type="time" name="date" class="date" placeholder="请选择日期" required><i ></i></input>
		       
		    </div>
		    
		    <div class="submit">
		        <input type="button" value="提交订单"/>
		    </div>
     </div>
        <script>
          
            $(function(){
            	$('.submit input').on('click',function(){
            		window.location.href="eg4.html";
            		
            	});
            	
            });
        
        </script>
     </body>
</html>
