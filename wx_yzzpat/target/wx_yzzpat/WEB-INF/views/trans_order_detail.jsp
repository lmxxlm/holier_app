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
        <title>转院订单详情</title>
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
           }
           .main p{
              padding:0 15px;
              border-bottom:1px solid #e3e3e3;
              background:#fff;
              height:50px;
              line-height:50px;
              font-size:15px;
             
           }
           .main p span:first-child{color:#999999;}
           .main p span:last-child{
               color:#333333;
               float:right;
           }
           
           .main p.order_num{
              margin-top:10px;
              margin-bottom:10px;
           }
           
           .main p.order_num button{
              width:75px;
              height:27px;
              text-align:center;
              border:1px solid #999999;
              background:#fff;
              border-radius:3px;
           }
           
           /*状态显示*/
           p.status{
               position:fixed;
               text-align:center;
               width:100%;
               z-index:1;
               height:49px;
               line-height:49px;
               background:#fbf9e2;
               color:#fa9d3b;
               font-size:17px;
               border-top:1px solid #e3e3e3;
               left:0;
               bottom:0;
           }
        </style>
     </head>
     <div class="main">
         <p class="order_num"><span>操作流水</span><span>
          <c:choose>
		                        <c:when test="${'待转院确认' eq data.status}">
		                           <button class="cancel" data-id="${data.orderid}">取消订单</button >
		                        </c:when>
		                        <c:otherwise><span>${data.orderid}</span></c:otherwise>
	                        </c:choose>
         </span></p>
         <p class="hos"><span>医院</span><span>${data.hospital_name}</span></p>
         <p class="room_info"><span>病房信息</span><span>${data.bedroom_name}</span></p>
         <p class="in_time"><span>入住时间</span><span>${data.check_in_time}</span></p>
         <p class="patient"><span>患者</span><span>${data.patient_name}</span></p>
         <p class="tel"><span>联系方式</span><span>${data.patient_phone}</span></p>
         <p class="trans_time"><span>转院日期</span><span>${data.transfer_time}</span></p>
         <p class="hotline"><span>热线电话</span><span>${data.hotline}</span></p>
         
         
     </div>
     <p class="status">${data.status}</p>
    
     <body>
	 <script>
	       $(function(){
	    	 //去掉alert的网址
	        	 window.alert = function(name){  
	                 var iframe = document.createElement("IFRAME");  
	                iframe.style.display="none";  
	                iframe.setAttribute("src", 'data:text/plain,');  
	                document.documentElement.appendChild(iframe);  
	                window.frames[0].window.alert(name);  
	                iframe.parentNode.removeChild(iframe);  
	            }  
	    	   
	    	   $('.cancel').live('touchend',function(){
	    		   var orderId=$(this).attr('data-id');
	    		   var questURL="cancel_kf_order.do";
	    		   var questArr={order_id:orderId};
	    		   $.post(questURL,questArr,function(result){
	    			   if(result==0){
	    				   alert("取消订单成功！");
	    				   window.location.href="turn_hospital_order.html";
	    			   }else{
	    				   alert("取消订单失败！");
	    				   return false;
	    			   }
	    		   });
	    		   
	    		   
	    	   });
	       });
	 </script>
     </body>
</html>
