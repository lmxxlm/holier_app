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
        <title>医生详情</title>
        <meta name="description" content="">
        <meta content=”width=device-width;  initial-scale=no; maximum-scale=1.0; user-scalable=0;″ name=”viewport” />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">      
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
	   <script src="assets/script/productAdmin/jquery.min.js"></script>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
   </head>
   <style>
      body{
      background:#dedede;
      font-size:16px;
      }
      *{margin:0;padding:0;}
      p,span,a,div,h5{margin:0;padding:0;}
      div.main{
          display:block;
          width:100%;
          height:100%;
          position:absolute;
          top:0px;
      }
      
      /*头部*/
      
      div.head{
      background:#41b2a6;
      padding:1.5em 0 1em 0;
      
      width:100%;
      }
      /*图片*/
      div.img{
          width:100%;
          height:6.5em;
          text-align:center;
      }
       div.img img{
       width:5.5em;
       height:5.5em;
       border-radius:50%;
       }
       
       /*医生名字和职称*/
              .head p{color:#eee;font-size:16px;padding:0 1em;}
              .head p.one{ margin-top:0.5em;}
              .head p.two{ margin-top:0.3em;}
              .head p span{width:47%;display:inline-block;vertical-align:top;}
              .head p span:first-child{margin-right:3%;text-align:right;}
              .head p span:last-child{text-align:left;margin-left:3%;}
              .head p span.name{color:#fff;font-size:18px;font-weight:bold;}
                    
        
        /*就诊时间*/
        .jzTime {background:#fff;padding:1em;}
        
        .jzTime h5{background:url("assets/image/productAdmin/docDetail/time.png") left center no-repeat;
            			   background-size:1.5em;}
        
           .jzTime h5,.intro h5{padding-left:2em;font-size:17px;color:#333;
        }
        .intro h5{background:url("assets/image/productAdmin/docDetail/info.png") left center no-repeat;
            			   background-size:1.8em;padding-left:2.3em;}
        .jzTime p{padding-left:2em;}
        .jzTime p,.intro p{margin-top:1em;font-size:15px;color:#666;
        
        }
        .intro p{text-indent:2em;line-height:2em;}
        .jzTime p span:last-child{float:right;}
        
        /*简介*/
        .intro{padding:1em;
        background:#fff;
        margin-top:0.5em;
        padding-bottom:5em;
        /*
       	background-image: -webkit-linear-gradient(top,#ddd 50%,transparent 50%); 
	background-image: linear-gradient(top,#ddd 50%,transparent 50%); 
	background-size:  100% 2px; 
	background-repeat: no-repeat; 
	background-position: top right;
	*/
	
	
}
button[name="doSubmit"]{z-index:100;border:none;position:fixed;bottom:0;width:100%;background:#41b2a6;height:3em;line-height:3em;display:inline-block;color:#fff;font-size:1.1em;font-weight:bold;}
   </style>
     <body>
        <div class="main">
            <input type="hidden" name="from" value="${from}">
            <input type="hidden" name="startDate" value="${startDate}">
            <input type="hidden" name="endDate"  value="${endDate}">
            <input type="hidden" name="departmentCode"  value="${departmentCode}">
            <!-- 来自order -->
             <input type="hidden" name="scheduleItemCode"  value="${scheduleItemCode}">
             
            <div class="head">
                <div class="img"><img src="${doctor.doctorImage}"></div>
               <p><span class="name">${doctor.doctorName}</span><span >${doctor.doctorTitle}</span></p>
                <p><span>${doctor.doctorJob}</span><span>${doctor.doctorLOffice}</span></p>  
            </div>
            
            <div class="jzTime">
                <h5>就诊时间</h5>
                <p><span>${doctor.outpatientDate}</span><span>${doctor.doctorSOffice}</span></p>
            </div>
            
            <div class="intro">
                <h5>简介</h5>
                <p>${doctor.doctorIntro}</p>
            </div>
            
            
        </div>
        <button type="button" name="doSubmit" class="doSubmit">提交</button>
    </body>
    <script>
       $(function(){
    	   var from=$('input[name="from"]').val();
		   var departmentCode=$('input[name="departmentCode"]').val();
		   var startDate=$('input[name="startDate"]').val();
		   var endDate=$('input[name="endDate"]').val();
		   var scheduleItemCode=$('input[name="scheduleItemCode"]').val();
    	   showText();
    	   function showText(){
    		   if(from=='1'){
    			   $('button[name="doSubmit"]').html("查看门诊排班");
        	   }else if(from=='2'){
        		   $('button[name="doSubmit"]').html("挂号");
        	   }
    	   }
    	   
    		   
    	   $('button[name="doSubmit"]').on('click',function(){
    		   if(from=='1'){
    			   window.location.href="outpatient.html?departmentCode="+departmentCode+"&startDate="+startDate+"&endDate="+endDate;
        		   return false;
    		   }else if(from=='2'){
        		   window.location.href="order.html?departmentCode="+departmentCode+"&startDate="+startDate+"&endDate="+endDate+"&scheduleItemCode="+scheduleItemCode;
        		   return false;
        	   }
			  
    	   });
		  
       });
    </script>
</html>