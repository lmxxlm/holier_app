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
        <title></title>
        <meta name="description" content="">
        <meta content=”width=device-width;  initial-scale=no; maximum-scale=1.0; user-scalable=0;″ name=”viewport” />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
        
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
        <link href="assets/css/productAdmin/outpatient.css" rel="stylesheet">
        
       <!-- <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" > --> 
	   <script src="assets/script/productAdmin/jquery.min.js"></script>
        <!--手机移动端web资源的整合  start
             1.强制让文档宽度与设备宽度保持1：1
             ，文档中最大宽度比例是1.0，且不润许点击屏幕放大浏览
             2.忽略将页面中的数字识别为电话号码
             3.忽略Android平台中对邮箱地址的识别
             4.当网站添加到主屏幕快速启动方式，可隐藏地址栏，仅针对io
             5.将网站添加到主屏幕快速启动方式，仅针对ios的safari顶端状态条的样式s的safari
        -->
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
<style>
.headWrap{ z-index:999; position:fixed;top:0;left:0; height:81px; width:100%;}
.timeLine{ font-size:14px; background:#fff;}
.timeLine{ height:2.857em; overflow:hidden; border-bottom:1px solid #dedede;}
.leftB,.rightB{ width:12%; height:100%; float:left; overflow:hidden; text-indent:-9999em; text-decoration:none;}
.leftB{ background:url("assets/image/productAdmin/outpatient/left.gif") no-repeat center center;}
.rightB{ background:url("assets/image/productAdmin/outpatient/right.gif") no-repeat center center;}
.lineWrap{ height:100%; width:76%; float:left; overflow:hidden; position:relative;}
.aWrap{ width:686px; position:absolute; left:0; top:0;}
.lineWrap a{ text-decoration:none; color:#999; float:left; line-height:2.857em; padding:0 10px;}
.lineWrap .active{ color:#41b2b6; border-bottom:2px solid #41b2b6; height:2.714em;}
.head{ top:41px;}
</style>
    
        
        <!--手机移动端web资源的整合  end-->
           
     </head>
     <body>
     <div class="headWrap">
		<div class="timeLine">
		    <a class="leftB" href="javascript:void(0)" title="上一天">上一天</a>
		    <div class="lineWrap">
		    <input type="hidden" value="${start_date}" name="activeTime"/>
		        <div class="aWrap">
		        
		         <a data-order="1"  class="active" href="javascript:void(0)"></a>
		         <a data-order="2" href="javascript:void(0)"></a>
		         <a data-order="3" href="javascript:void(0)"></a>
		         <a data-order="4" href="javascript:void(0)"></a>
		         <a data-order="5" href="javascript:void(0)"></a>
		         <a data-order="6" href="javascript:void(0)"></a>
		         <a data-order="7" href="javascript:void(0)"></a>
		         </div>
		    </div>
		    <a class="rightB" href="javascript:void(0)" title="下一天">下一天</a>
		</div>
        <div class="head">
             <input type="hidden" name="departmentCode" value="${DepartmentCode}"/>
            <a href="#" >${DepartmentName}</a><span data-count="${count}" class="data-count">(${count})名</span>
        </div>
        </div>
        <div class="content" style="margin-top:91px;">
        
        <a href="javascript:void(0)" class="gotoOrder" style="text-decoration:none;color:#999999;">
            <section>
	               <div class="doc_info">
	                  <div class="img">
	                  <img src="assets/image/productAdmin/outpatient/doc.png"/>
	                  </div>
	                  <div class="info">
	                     <input type="hidden" name="scheduleItemCode" value="${record.scheduleItemCode}">
	                     <p class="p1 introP"> <span class="span1">${record.doctorName}</span><span class="span2">${record.doctorTitle}</span>
	                     <span class="sw">sdsd</span><span class="sw">（sfdf）</span> <span>${record.startTime}-${record.endTime}</span></p>
	                     <p class="p2"><span class="span1">线上接诊</span><a>&nbsp;0</a>&nbsp;|&nbsp;&nbsp;<span class="span2">评价-</span></p>
	                  </div>
	               </div>
	              
	               <div class="intro">
	                   <p ></p><a href="javascript:void(0);" data-wz="" data-sl=""><img src="assets/image/productAdmin/outpatient/drop.png"/></a>
	                   <div class="clear"></div>
	               </div>
	                
           </section>
         </a>   
            
        <!-- 后台渲染数据 -->
           <c:forEach items="${data}" var="record">
             <a href="javascript:void(0)" class="gotoOrder" style="text-decoration:none;color:#999999;">
                <section>
	               <div class="doc_info">
	                  <div class="img">
	                  <img src="assets/image/productAdmin/outpatient/doc.png"/>
	                  </div>
	                  <div class="info">
	                     <input type="hidden" name="scheduleItemCode" value="${record.scheduleItemCode}">
	                     <p class="p1 introP"> <span class="span1">${record.doctorName}</span><span class="span2">${record.doctorTitle}</span>
	                     <span class="sw"></span><span>（${record.sessionName}）</span> <span>${record.startTime}-${record.endTime}</span></p>
	                     <p class="p2"><span class="span1">线上接诊</span><a>&nbsp;0</a>&nbsp;|&nbsp;&nbsp;<span class="span2">评价-</span></p>
	                  </div>
	               </div>
	              
	               <div class="intro">
	                   <p ></p><a href="javascript:void(0);" data-wz="" data-sl=""><img src="assets/image/productAdmin/outpatient/drop.png"/></a>
	                   <div class="clear"></div>
	               </div>
               </section>
           </a>
           </c:forEach>
        </div>
        
  <script type="text/javascript">
		//做功能
		//循环遍历生成挂号时间；
		
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
				var topTime=$('.aWrap').find('a');;
				//var str=tdDT.getFullYear() + "/" + (tdDT.getMonth()+1)+ "/" + tdDT.getDate() + "/" + aryDay[dw];
				var str=tdDT.getFullYear() + "/" + (tdDT.getMonth()+1)+ "/" + tdDT.getDate();
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

		$(function(){
			
			
		     //当点击时间定在当前
		     
		     var showTime = function(){
		    	 var _order = 1;
		    	 var activeTime=$('input[name="activeTime"]').val();
		    	 //console.log(activeTime);
		    	 $('.aWrap a').each(function(i,o){
		    		 if($(o).val()==activeTime){
		    			 $(this).addClass('active');
		    			 //TODO 让当前的active组件移动到屏幕最左侧
		    			 var order = $(this).data('order');
		    			 _order = order;
		    			 var step = order - 1;
		    			 //console.log('step : '+step);
		    			 turn_right({'data':step,'flag':true});
		    		 }else{
		    			 $(this).removeClass('active');
		    		 }
		    		 
		    	 });
		    	 return function(){
		    		 return _order ;
		    	 }
		    	 
		     };
			
			var _f = showTime();//parseInt($(".aWrap .active").attr("data-order"));
			var order = _f();
			//console.log(order());
			var aWidth = $(".aWrap a").first().width()+20;
			var maxStepLeft = 7 - order;
			var maxStepRight = order-1;
			var pro = true;
			$(".aWrap").css("left",-maxStepRight*aWidth+"px");
			
		    $(".rightB").on("click",1,turn_left);
			$(".leftB").on("click",1,turn_right);
			
			function turn_left(step){
				if(maxStepLeft&&pro){
					  pro = false;
					  var oldLeft = parseInt($(".aWrap").css("left"));
					  leftLen = (oldLeft-aWidth*step.data)+"px";
					  console.log("距离左边 ："+leftLen);
					  $(".aWrap").animate({left:leftLen},"fast",function(){
						  pro = true;
					  });
					  if(!step.flag){
					  	maxStepRight++;
					  	maxStepLeft--;
					  	console.log("turn_left ### "+maxStepRight +" - "+maxStepLeft);
					  }
				  }
			}
			
			function turn_right(step){
				//console.log("right");
				//console.log(maxStepRight + " ## "+pro);
				if(maxStepRight&&pro){
					  pro = false;
					  var oldLeft = parseInt($(".aWrap").css("left"));
					//  console.log(oldLeft+"-"+aWidth);
					  leftLen = (oldLeft+aWidth*step.data)+"px";
					  console.log("距离左边 ："+leftLen);
					  $(".aWrap").animate({left:leftLen},"fast",function(){
						  pro = true;  
					  });
				  	if(!step.flag){
					  maxStepRight--;
					  maxStepLeft++;
					  console.log("turn_right ### "+maxStepRight +" - "+maxStepLeft);
					}
				  }
			}
			


		     //showTime();
			
			
		})
		
		$(function(){
			  
			//移动页面滚动后不触发touchend、
			//解决方法是在滚动时就给停止touchend事件冒泡，实现如下：
			stopTouchendPropagationAfterScroll();
			function stopTouchendPropagationAfterScroll(){
			    var locked = false;
			    window.addEventListener('touchmove', function(ev){
			        locked || (locked = true, window.addEventListener('touchend', stopTouchendPropagation, true));
			    }, true);
			    function stopTouchendPropagation(ev){
			        ev.stopPropagation();
			        window.removeEventListener('touchend', stopTouchendPropagation, true);
			        locked = false;
			    }
			}
		});
		
		
	//如果没数据，显示提示
	$(function(){
		    //显示当前没有列表
			 noList();
		     function noList(){
		    	 var count=$('.head').find('span[class="data-count"]').attr('data-count');
		    	 if(count=='0'){
		    		 $('.head').find('span[class="data-count"]').html("当前没有门诊列表");
		    	 }
		     }

				
				//点击去挂号
		     $('.gotoOrder').on('click',function(){
		    	  var startDate=$('.aWrap a.active').val();
		    	  var endDate=startDate;
		    	  var departmentCode=$('input[name="departmentCode"]').val();
		    	  var scheduleItemCode=$(this).find('input[name="scheduleItemCode"]').val();
		    	  var url='order.html';
		    	  window.location=url+"?departmentCode="+departmentCode+"&startDate="+startDate+"&endDate="+endDate+"&scheduleItemCode="+scheduleItemCode;
		     });

		    //点击顶部时间进行跳转
		    $('.aWrap a').on('click',function(){
		    	$(this).addClass('active').siblings().removeClass('active');
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
    	  
      	 //模态框
         
		
		
	});
	
         
	
         
     </script>
    </body>
</html>
