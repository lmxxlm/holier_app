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
        <title>我的挂号</title>
        <meta name="description" content="">
        <meta content=”width=device-width;  initial-scale=no; maximum-scale=1.0; user-scalable=0;″ name=”viewport” />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
        
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
        <link href="assets/css/productAdmin/register.css" rel="stylesheet">
        
	   <script src="assets/script/productAdmin/jquery.min.js"></script>
       <script src="assets/script/productAdmin/bootstrap.min.js"></script>
        
        <script src="assets/script/productAdmin/vendor/modernizr-2.6.2.min.js"></script>
        
      <script src="assets/script/productAdmin/idangerous.swiper.min.js"></script>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        
    
        
   </head>
   <style>
     .small_content div.outpatient {
	    line-height: 1.9em;
    }
   </style>
        <body>
           
           <div class="tab">
                   <span class="tab1 tab_hover">当前挂号（${tb_rcount}）</span><span class="tab2">历史挂号（${pcount}）</span>
                   <input type="hidden" name="dqgh" value="${tb_rcount}">
                   <input type="hidden" name="lsgh" value="${pcount}">
           </div>
          <!-- 当前挂号 -->
           <div class="main main1">
               <!-- 后台开始渲染数据 -->
               <div class="content">
                 <c:if test="${notb_r==true }">
                 	您没有挂号记录。
                 </c:if>
                 <c:forEach items="${tb_r}" var="history">
                     <div class="part">
	                  <section>
	                     <input type="hidden" name="wyid" value="${history.orderCode}">
	                     <input type="hidden" name="payParam" 
	                     data-orderCode="${history.orderCode}"
	                     data-orderApptDate="${history.orderApptDate}" 
	                     data-orderStatus="${history.orderStatus}"
	                     data-payFlag="${history.payFlag}"
	                     data-orderApptUser="${history.orderApptUser}"
	                     data-patientNo="${history.patientNo}"
	                     data-admitDate="${history.admitDate}"
	                     data-doctor="${history.doctor}"
	                     data-doctorTitle="${history.doctorTitle}"
	                     data-regFee="${history.regFee}"
	                     data-seqCode="${history.seqCode}"
	                     data-sessionName="${history.sessionName}">
	                     <p class="firstP"><span>费用:${history.regFee}元</span><span>状态:${history.payFlag}</span></p>
	                     <div class="small_content">
	                         <div class="img">
	                         <img   src="assets/image/productAdmin/doc/doc.png" />
	                         </div>
	                         <div class="outpatient">
	                            <span class="outpatient1">${history.doctorTitle}</span>
	                            <span class="outpatient2 " name="doctor">${history.doctor}</span>
	                            <span class="outpatient3">衢州市妇幼保健院</span>
	                         </div>
	                            <button class="button cancel">取消预约</button>
	                            <button class="button pay" style="color:#fff;background:#41B2A6;">去支付</button>
	                         <div class="clear"></div>
	                     </div>
	                       <p ><span>就诊人</span><span class="orderApptUser">${history.orderApptUser}</span></p>
	                       <p><span>就诊时间</span><span class="admitDate">${history.admitDate}</span></p>
	                       <p><span>序号</span><span>${history.seqCode}</span></p>
	                  </section>
	               </div>
                 </c:forEach>
                 <!-- 渲染结束 -->
              </div>
           </div>
           
           <!-- 历史挂号 -->
             <div class="main main2" >
               
               <div class="content">
               <!-- 后台开始渲染数据 -->
                <c:if test="${nop==true }">
                 	您没有挂号记录。
                 </c:if>
                 <c:forEach items="${p}" var="history">
                     <div class="part">
	                  <section>
	                     <p class="firstP"><span>费用:${history.regFee}元</span><span>状态:${history.payFlag}</span></p>
	                     <div class="small_content">
	                         <div class="img">
	                         <img   src="assets/image/productAdmin/doc/doc.png" />
	                         </div>
	                         <div class="outpatient">
	                          
	                            <span class="outpatient1">${history.doctorTitle}</span>
	                            <span class="outpatient2">${history.doctor}</span>
	                            <span class="outpatient3">衢州妇幼保健中心</span>
	                            
	                         </div>
	                         <div class="clear"></div>
	                     </div>
	                       <p ><span>就诊人</span><span>${history.orderApptUser}</span></p>
	                      <p><span>就诊时间</span><span>${history.admitDate}</span></p>
	                       <p><span>序号</span><span>${history.seqCode}</span></p>
	                  </section>
	               </div>
                 </c:forEach>
               <!-- 渲染结束 -->
              </div>
           </div>
           
        <script>
        $(function(){
        	  hidePage();
        	  function hidePage(){
        		  var dqgh=$('input[name="dqgh"]').val();
        		  var lsgh=$('input[name="lsgh"]').val();
        		  if(!dqgh && !lsgh){
        			  $('.tab').html('<span class="tab1 tab_hover">当前挂号（&nbsp;0&nbsp;）</span><span class="tab2">历史挂号（&nbsp;0&nbsp;）</span>');
        		      $('.content').html('您没有挂号记录。');
        		  }
        	  }   
        	
        	   $('.main2').hide();
            	//tab的显示及隐藏
			    $('.tab1').on('touchstart mousedown',function(e){
			    	e.preventDefault();
					//$(this).css({'border-bottom':'2px solid #09F','color':'#09F'}); 
				   $(this).addClass('tab_hover').siblings().removeClass('tab_hover'); 
				      
				   $('.main1').show();
				   $('.main2').hide();
				   //另外一个隐藏
			    }).trigger('click');
				
				$('.tab2').on('touchstart mousedown',function(e){
					e.preventDefault()
					//$(this).css({'border-bottom':'2px solid #09F','color':'#09F'}); 
				   $(this).addClass('tab_hover').siblings().removeClass('tab_hover'); 
				    
				   $('.main1').hide();
				   $('.main2').show();
				   //另外一个隐藏
			    })
			    
			    
			    //当亲挂号取消预约
			    $('.main1 button.cancel').on('click',function(){
			    	var wyid=$(this).parents('.part').find('input[name="wyid"]').val();
			    	var orderApptUser=$(this).parents('.part').find('span[class="orderApptUser"]').html();
			    	var admitDate=$(this).parents('.part').find('span[class="admitDate"]').html();
			    	var doctor=$(this).parents('.part').find('span[name="doctor"]').html();
			    	var questArr={
			    			orderCode:wyid,
			    			orderApptUser:orderApptUser,
			    			admitDate:admitDate,
			    			doctor:doctor
			    			};
			    	var questURL="cancelRegister.do";
			    	$.post(questURL,questArr,function(result){
			    		if(result){
			    			alert("取消预约成功");
			    			window.location.href=window.location.href+"?id="+10000*Math.random();
			    		}else{
			    			alert("取消预约失败");
			    			return false;
			    		}
			    	});
			    });
				
				
				
				//去支付
	        	$('.pay').on('click',function(){
	        		
	        		var oInput=$(this).parents('.part').find('input[name="payParam"]');
	        		
	        		var orderCode=oInput.attr('data-orderCode');
	        		var orderApptDate=oInput.attr('data-orderApptDate');
	        		var orderStatus=oInput.attr('data-orderStatus');
	        		var payFlag=oInput.attr('data-payFlag');
	        		var orderApptUser=oInput.attr('data-orderApptUser');
	        		var patientNo=oInput.attr('data-patientNo');
	        		var admitDate=oInput.attr('data-admitDate');
	        		var doctor=oInput.attr('data-doctor');
	        		var doctorTitle=oInput.attr('data-doctorTitle');
	        		var regFee=oInput.attr('data-regFee');
	        		var seqCode=oInput.attr('data-seqCode');
	        		var sessionName=oInput.attr('data-sessionName');

	        		var questArr={
	        				orderCode:orderCode,
	        				orderApptDate:orderApptDate,
	        				orderStatus:orderStatus,
	        				payFlag:payFlag,
	        				orderApptUser:orderApptUser,
	        				patientNo:patientNo,
	        				admitDate:admitDate,
	        				doctor:doctor,
	        				doctorTitle:doctorTitle,
	        				regFee:regFee,
	        				seqCode:seqCode,
	        				sessionName:sessionName
	        		};
	        		var questURL="get_wex_pay_param.do";
			    	$.post(questURL,questArr,function(result){
			    		if(result){
			    			alert(result);
			    		}else{
			    			alert("失败");
			    			return false;
			    		}
			    	});
	        		
	        	});
			    
			});
        </script>
  </body>
</html>