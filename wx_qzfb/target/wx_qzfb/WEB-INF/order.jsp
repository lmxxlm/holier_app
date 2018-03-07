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
        <title>预定挂号页</title>
        <meta name="description" content="">
        <meta content=”width=device-width;  initial-scale=no; maximum-scale=1.0; user-scalable=0;″ name=”viewport” />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">      
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
        <link href="assets/css/productAdmin/order.css" rel="stylesheet">
	   <script src="assets/script/productAdmin/jquery.min.js"></script>
        <script src="assets/script/productAdmin/jquery.mobile.min.js"></script>
        <script src="assets/script/productAdmin/vendor/modernizr-2.6.2.min.js"></script>
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
        
    
        <!--手机移动端web资源的整合  end-->
        
   </head>
     <body>
         <div class="part1">
             <input type="hidden" name="card_no" value="${default_card.card_no}">
             <input type="hidden" name="scheduleItemCode" value="${schedule.scheduleItemCode}">
             <div class="head">
                 <img src="assets/image/productAdmin/order/doc.png"/>
                 <div class="intro">
                     <p class="p1"><span class="span1">${schedule.doctorName}</span><span class="span2">${schedule.doctorTitle}</span></p>
                     <p class="p2">${schedule.departmentName}</p>
                 </div>
                 <div class="clear"></div>
             </div>
             
             <div class="pre_intro">
                 <p class="p1"><span class="span1" id="department">${schedule.departmentName}</span><span class="span2" id="date">${schedule.serviceDate}</span></p>
                 <p class="p2"><span class="span1">挂号费</span><span class="span2"><a>${schedule.fee}</a>元</span></p>
                 <p class="p3"><span class="span1">就诊人</span><span class="span2"><a>${default_card.patient_name}</a></span></p>
             </div>
             <div class="clear"></div>
         </div>
         
         <div class="list">
         
             <ul>
                  <c:if test="${nolist==true}">
                      <li style="background:#fff;">
             			<p style="background:#fff;font-size:1em;color:red;">
                     		  今天的号已挂完。
                      </p> 
	                  </li>
                  </c:if>
	              <c:forEach items="${data}" var="record">
	                  <li>
	                   <p>
                        <span class="span2 " name="time">${record.startTime}-${record.endTime}</span>
                        <span class="span3" name="yHao">余号<a class="yHao">${record.count}</a>个</span>
                        <input type="hidden" name="next_no" value="${record.no}">
                      </p> 
	                  </li>
	             
	              </c:forEach>
            </ul>
         <div class="clear"></div>
         </div>
        <div class="fixed">
                   <!-- register_success.html -->
                   <a href="javascript:void(0);" class="confirm_register"><span><button type="button">确定挂号</button></span></a>
         </div>
         
         
          <script type="text/javascript">
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
	  		
	  		
		  //点击确认提交
		    $('.confirm_register').on('click',function(){
				
				//判断有没有选择时间
				var checkL=$('ul li ').find('p[data-val="1"]').length;
				var pObj=$('ul li ').find('p[data-val="1"]');
				var yhao=pObj.find('.yHao').html();
				var next_no = pObj.find('input[name="next_no"]').val();
				
				if(checkL==0){
					alert("您没有选择挂号，请重新选择！");
					return false;
				}else if(yhao==0){
					alert("当前的号子为0个，不能预约挂号");
					return false;
				}else{
					 tChecked(next_no);
				}
				
		    });
		
		    //进行挂号函数
		    function tChecked(hao){
				var department=$('#department').html();
				var date=$('#date').html();
			  $('ul li p').each(function(i,o){
		    		var pVal=$(this).attr('data-val');/*这个姓名不能为带-*/
		    		var card_no=$('input[name="card_no"]').val();
		    		var scheduleItemCode=$('input[name="scheduleItemCode"]').val();
		    	    if(pVal==1){
						if(confirm('您当前的挂号码为'+hao+'\n您当前的科室为'+department+'\n您挂号的时间为'+date+'\n是否确定继续挂号?')){
						}else{
							alert("挂号失败！");
							return false;
							}
				       
		    	    	var questURL="orderSubmit.do";
		    	    	var questArr={
		    	    			scheduleItemCode:scheduleItemCode,
		    	    			seqCode:hao,
		    	    			cardNo:card_no
		    	    	}  
		    	    	$.post(questURL,questArr,function(result){
		    	    		if(result){
		    	    			alert("挂号成功");
		    	    			window.location.href="final.html";
		    	    		}else{
		    	    			alert("挂号失败，您还未建卡，请先建卡");
		    	    			reload.location;
		    	    		}
		    	    		
		    	    	});
		    	    }
		    	});	
				
		   }
		
		
	  		
	  		
	  		
		    
		    
			$('ul li').on('click',function(){
				/*var target=$(this).slibings().find('li');*/
				$(this).children('p').css({
					 'background':'url("assets/image/productAdmin/order/checked.png") left center no-repeat',
					 'background-size':'1.3em'
					 }).attr('data-val',1); 
				$(this).siblings().children('p').css({
					  'background':'url("assets/image/productAdmin/order/defaut.png") left center no-repeat',
					 'background-size':'1.3em'
					 }).attr('data-val',0);
				});
				
				
			
         </script>
      
      
        
         
    </body>
</html>
