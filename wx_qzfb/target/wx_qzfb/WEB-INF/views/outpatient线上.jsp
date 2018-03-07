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
        <title>门诊排班</title>
        <meta name="description" content="">
        <meta content=”width=device-width;  initial-scale=no; maximum-scale=1.0; user-scalable=0;″ name=”viewport” />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
        
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
        <link href="assets/css/productAdmin/outpatient.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css2/idangerous.swiper.css">
	   <script src="assets/script/productAdmin/jquery.min.js"></script>

        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
<style>
.headWrap{ z-index:999; position:fixed;top:0;left:0; height:101px; width:100%;background:#fff;}
.swiper-container{border-bottom:1px solid #ccc;height:3.89em;}
.swiper-slide:hover{background:none;}
.swiper-slide a{padding:0.5em 1em;text-decoration:none;display:inline-block;color:#555;text-align:center;}
.swiper-slide a span{display:block;}

.headImg{border-radius:50%;}
</style>
    
        
        <!--手机移动端web资源的整合  end-->
           
     </head>
     <body>
     <div class="headWrap">
   	    <a class="arrow-left" href="javascript:void(0);" style="display:none;">←</a>
    	<a class="arrow-right" href="javascript:void(0)" style="display:none;">→</a>
	  	<div class="swiper-container">
		    <div class="swiper-wrapper">
		      	<div class="swiper-slide">
		        	<a data-order="1" href="javascript:void(0)"></a>
		      	</div>
		      	<div class="swiper-slide">
	       	 		<a data-order="2" href="javascript:void(0)"></a>
		      	</div>
		      	<div class="swiper-slide">
		        	<a data-order="3" href="javascript:void(0)"></a>
		      	</div>
		      	<div class="swiper-slide">
		        	<a data-order="4" href="javascript:void(0)"></a>
		      	</div>
		      	<div class="swiper-slide">
		        	<a data-order="5" href="javascript:void(0)"></a>
		      	</div>
		      	<div class="swiper-slide">
		        	<a data-order="5" href="javascript:void(0)"></a>
		      	</div>
		      	<div class="swiper-slide">
		        	<a data-order="7" href="javascript:void(0)"></a>
		      	</div>
		    </div>
	  	</div>
        <div class="head">
        	<input type="hidden" value="${start_date}" name="activeTime"/>
            <input type="hidden" name="departmentCode" value="${DepartmentCode}"/>
            <a href="#" style="text-decoration:none;">${DepartmentName}</a><span data-count="${count}" class="data-count">(${count})名</span>
        </div>
      </div>
        <div class="content" style="margin-top:111px;">
        <!-- 后台渲染数据 -->
           <c:forEach items="${data}" var="record">
             <a href="javascript:void(0)" class="gotoOrder" style="text-decoration:none;color:#555;">
               <section>
	               <div class="doc_info" style="position:relative;">
	                  <img src="${record.doctorImage}" style="top:0.7em;" class="headImg"/>
	                  <div class="info">
	                     <input type="hidden" name="scheduleItemCode" value="${record.scheduleItemCode}">
	                     <input type="hidden" name="doctorName" value="${record.doctorName}">
	                     <p class="p1 introP" style="color:#333; margin:0.8em 0;"> <span class="span1 doctorName">${record.doctorName}</span></p>
	                     <p class="p2" style="margin:0.8em 0;"><span class="span2">${record.doctorTitle}</span></p>
<!-- 	                     <p class="p2"><span class="span1">线上接诊</span><a>&nbsp;0</a>&nbsp;|&nbsp;&nbsp;<span class="span2">评价-</span></p> -->
	                     <p class="p2" style="margin:0.8em 0;"><span class="sw"></span><span>${record.sessionName}</span>&nbsp;&nbsp;<span>${record.startTime}&nbsp;-&nbsp;${record.endTime}</span></p>
	                  </div>
	               </div>
	              
<!-- 	               <div class="intro"> -->
<!-- 	                   <p ></p><a href="javascript:void(0);" data-wz="" data-sl=""><img src="assets/image/productAdmin/outpatient/drop.png"/></a> -->
<!-- 	                   <div class="clear"></div> -->
<!-- 	               </div> -->
               </section>
           </a>
           </c:forEach>
        </div>
  <script src="assets/script/productAdmin/vendor/jquery-1.10.2.min.js"></script>
  <script src="assets/script/productAdmin/vendor/idangerous.swiper-2.1.min.js"></script>        
<script type="text/javascript">


//显示医生的姓名，去掉英文字母
function getDocName(){
	$('.content .gotoOrder').each(function(i,o){
		var doctorName=$(this).find('input[name="doctorName"]').val();
		doctorName=doctorName.split('-');
		$('.doctorName').html(doctorName[1]);
	});
}

$(function(){
	//去掉英文字母的医生姓名
	getDocName()
	//如果没数据，显示提示
    //显示当前没有列表
	 noList();
     function noList(){
    	 var count=$('.head').find('span[class="data-count"]').attr('data-count');
    	 if(count=='0'||!count){
    		 $('.head').find('span[class="data-count"]').css("color","#999999").html("该天没有门诊排班。");
    	 }
     }
     
  	 //TODO 模态框
  	
    var mySwiper1 = new Swiper('.swiper-container',{
     	slidesPerView: 4,
     	grabCursor: true
   	}); 
  	
    var mySwiper = $('.swiper-container').swiper({
        grabCursor: true,
        slidesPerView: 4
    });
  
	var currDT; 
	var aryDay = new Array("日","一","二","三","四","五","六");//显示星期  
	initDate()
	function initDate() {
		currDT = new Date();
		var dw = currDT.getDay();//从Date对象返回一周中的某一天(0~6)
		var tdDT;//日期  
		for(var i=0;i<aryDay.length;i++) {
			tdDT = getDays()[i];
			dw = tdDT.getDay();//星期几
			var topTime=$('.swiper-wrapper').find('a');
			$(topTime).first().parents(".swiper-slide").hide();
			var str=tdDT.getFullYear() + "/" + (tdDT.getMonth()+1)+ "/" + tdDT.getDate() + '<span>星期' + aryDay[dw] + '</span>';
			var strVal=tdDT.getFullYear() + "-" + (tdDT.getMonth()+1)+ "-" + tdDT.getDate();
			for(var j=0;j<topTime.length;j++){
				topTime.eq(i).html(str);
				topTime.eq(i).val(strVal);
			}
		}
	} 
	
	//取得当前日期一周内的七天
	function getDays() {
		var days = new Array();
		for(var i=1;i<=7;i++) {
			days[i-1] = getWeek(i);
		}
		return days;
	}
	
	//取得当前日期一周内的某一天
	function getWeek(i) {
		var start = new Date();
		start.setDate(start.getDate() + i-1);//取得一周内的第一天、第二天、第三天...
		return start;
	}
     
    var showTime = function(){
   	 var activeTime=$('input[name="activeTime"]').val();
   	 var tdDT = getDays()[0];
   	 var tdStr = tdDT.getFullYear() + "-" + (tdDT.getMonth()+1)+ "-" + tdDT.getDate();
   	 if(activeTime != tdStr){
   	   	 var today = tdDT.getDate();
   	   	 var active_day = activeTime.split("-")[2];
   	   	 var step = active_day - today -1;
   	   	// var unit_width = $(".swiper-wrapper .swiper-slide:first").width();
   	   	 //var animate_width = unit_width*step+'px';
	   	 $.each($('.swiper-wrapper a'),function(i,o){
   	   		 if($(o).val()==activeTime){
   	   			 // 下面这行 是加个active的样式，突出显示之前点击的是哪个
   	   			// $(o).parents(".swiper-slide").attr('style',"background:#eee;");/*style样式被覆盖*/
   	   		     $(o).css({
   	     			'background':'#eee',
   	    			'color':'#41b2a6',
   	    			'border-bottom':'2px solid #41b2a6'
   	    		});
   	   		    $(o).addClass('active');
   	   		 	$(o).parents('.swiper-wrapper').siblings('.swiper-wrapper').find('a').removeClass('active');
   	   		 }
   	   	 });
   	   	//自动向左滑动 
   	 	mySwiper.swipeTo(step, 500, false);
   	 }else{
   		$(".swiper-wrapper .swiper-slide").eq(0).hide();
   		//$(".swiper-wrapper .swiper-slide").eq(1).attr('style',"background:#eee;")//.addClass('swiper-active-switch').siblings().removeClass('swiper-active-switch');
   		$(".swiper-wrapper .swiper-slide").eq(1).children('a').css({
   			'background':'#eee',
   			'color':'#41b2a6',
   			'border-bottom':'2px solid #41b2a6'
   		});
   		$(".swiper-wrapper .swiper-slide").eq(1).children('a').addClass('active');
   	 }
    };
    showTime();
		
	 //点击去挂号
     $('.gotoOrder').on('click',function(){
    	  var startDate=$('.swiper-wrapper a.active').val();
    	  var endDate=startDate;
    	  var departmentCode=$('input[name="departmentCode"]').val();
    	  var scheduleItemCode=$(this).find('input[name="scheduleItemCode"]').val();
    	  var url='order.html';
    	  window.location=url+"?departmentCode="+departmentCode+"&startDate="+startDate+"&endDate="+endDate+"&scheduleItemCode="+scheduleItemCode;
     });

   	//点击顶部时间进行跳转
   	$('.swiper-wrapper a').on('click',function(){
   		$(this).parents(".swiper-slide").addClass('swiper-active-switch');//.siblings().removeClass('swiper-active-switch');
   		var startDate=$(this).val();
   		var endDate=startDate;
   		var scheduleItemCode=$('input[name="scheduleItemCode"]').val();
   		var departmentCode=$('input[name="departmentCode"]').val();
   		var url='outpatient.html';
  	    window.location=url+"?departmentCode="+departmentCode+"&startDate="+startDate+"&endDate="+endDate;
   	});

  	  //判断文字超过100个字，就加省略号
  	  $('.intro p').each(function(){
  		  var str=$(this).parent().find('a').attr('data-wz');
  		  
  		  if(str.length>100){
           	 str=str.substring(0,100)+"...";
           	 
           	 $(this).html(str);
            }else{
          	 $(this).parent().find('a').hide();
          	 $(this).html(str);
          	  
            }
  		  $(this).siblings('a').attr('data-sl',str);
  		  
  	  });
  	  
  	  
    	  
  	  $('.intro a').on('touchend',function() {
     		  var src=$(this).find('img').attr('src');
     		 var drop="assets/image/productAdmin/outpatient/drop.png";
     		 var up="assets/image/productAdmin/outpatient/up.png";
     		
     		 var wz=$(this).attr('data-wz');
     		 var sl=$(this).attr('data-sl');
     		 
     		  if(src==drop){
     			  $(this).find('img').attr('src',up);
     			  $(this).parent().find('p').html(wz);
     			 
     		  }else{
     			$(this).find('img').attr('src',drop);
     			$(this).parent().find('p').html(sl);
     		  }
     		  
     	 });
  	  //时间轮播 左右按钮 
  	  $('.arrow-left').on('click', function(e){
  	    e.preventDefault()
  	    var swiper = $(this).siblings('.swiper-container').data('swiper');
  	    swiper.swipePrev();
  	  });
  	  $('.arrow-right').on('click', function(e){
  	    e.preventDefault()
  	    var swiper = $(this).siblings('.swiper-container').data('swiper');
  	    swiper.swipeNext();
  	  });
  
	
});
	
         
     </script>
    </body>
</html>
