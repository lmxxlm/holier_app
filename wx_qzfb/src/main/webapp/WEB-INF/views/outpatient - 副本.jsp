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
        
    
        
        <!--手机移动端web资源的整合  end-->
           
     </head>
     <body>
        <div class="head">
             <input type="hidden" name="departmentCode" value="${DepartmentCode}"/>
            <a href="#">${DepartmentName}</a><span>(${count}名)</span>
        </div>
        <div class="content">
        
            
        <!-- 后台渲染数据 -->
           <c:forEach items="${data}" var="record">
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
	                
	               <div class="list">
                      <ul class="first_three_days">
                        <li data-val=""  class="detail show" data-flag="detail">
                           <a href="javascript:void(0);"><span></span></a>
                       </li  >
                        <li data-val="" class="detail show" data-flag="detail"> 
                           <a href="javascript:void(0);"><span></span></a>
                       </li >
                       <li data-val="" class="detail show" data-flag="detail">
                           <a href="javascript:void(0);"><span></span></a>
                       </li >
                        <li>
                           <a href="javascript:void(0);" class=" more show" data-flag="more"><span>查看更多</span></a>
                       </li>
                   </ul>
               </div>
               
           </section>
           
           </c:forEach>
        <!-- 挂号须知  模态框-->
            <div id="notes">
                <span class="register">挂号须知</span>
                <p>
                    1.本系统挂号需支付挂号费</br>
                    2.每次挂号限制：限同时挂号三次、每个科室限挂一次、每月6次。</br>
                    3.请携带身份证前往对应科室就诊、体检、治疗、取药等。</br>
                    4.每天当班不就诊，医院不再安排就诊及退费。
                    
                </p>
                <a ><button class="cancel hide" data-flag="cancel">取消</button></a><a ><button class="confirm">确认</button></a>
            </div>
           
          <!-- 显示更多 模态框 -->
          <div id="modal">
              <div class="intro"><span>妇科门诊（普诊）</span></div>
               <div class="list">
                   <ul class="last_4_days">
                       <li data-val=""  class="detail show" data-flag="detail">
                           <a href="javascript:void(0);"><span></span></a>
                       </li  >
                        <li data-val="" class="detail show" data-flag="detail"> 
                           <a href="javascript:void(0);"><span></span></a>
                       </li >
                       <li data-val="" class="detail show" data-flag="detail">
                           <a href="javascript:void(0);"><span></span></a>
                       </li >
                        <li data-val="" class="detail show" data-flag="detail">
                           <a href="javascript:void(0);"><span></span></a>
                       </li >
                        
                   </ul>
               </div>
               <a class="button return hide" data-flag="return"><button >返回</button></a>
           </div>
           
           
           <div id="bg"></div>
           <div id="bg1"></div>
           <!-- 模态框 -->
           
        </div>
        
        
<script type="text/javascript">
		//做功能
        //循环遍历生成挂号时间；
        
        var currDT; 
		var aryDay = new Array("日","一","二","三","四","五","六");//显示星期  
		$.each($('section'),function(index,obj){
			initDate(index);
		});
		//初始化日期加载
		function initDate(index) {
			currDT = new Date();
			var dw = currDT.getDay();//从Date对象返回一周中的某一天(0~6)
			var tdDT;//日期  
			//分别在两个ul中显示日期
			//var first_3_ul = document.getElementById("first_three_days");
			//var last_4_ul = document.getElementById("last_4_days");
			var first_3_ul = $(".first_three_days")[index];
			var last_4_ul = $('.last_4_days')[index];
			for(var i=0;i<aryDay.length;i++) {
				tdDT = getDays()[i];
				dw = tdDT.getDay();//星期几
				var three_li_nodes = $(first_3_ul).find("li");
				var four_li_nodes = $(last_4_ul).find("li");
				
				if(i < three_li_nodes.length-1){
					for(var j =0 ;j<three_li_nodes.length ; j++){
						var three = $(three_li_nodes[i]);
						three.find('span')[0].innerHTML = tdDT.getFullYear() + "年" + (tdDT.getMonth()+1)+ "月" + tdDT.getDate() + "日 星期" + aryDay[dw];//显示
						var str=tdDT.getFullYear() + "-" + (tdDT.getMonth()+1)+ "-" + tdDT.getDate();
						three.attr('data-val',str);
					}
				}else{
					if(index == 0){ //只在第一次 去给模态框生成时间 ,为了效率
						for(var p = 0 ; p<four_li_nodes.length ; p++){
							var four = $(four_li_nodes[i-three_li_nodes.length+1]);
							four.find('span')[0].innerHTML =tdDT.getFullYear() + "年" + (tdDT.getMonth()+1)+ "月" + tdDT.getDate() + "日 星期" + aryDay[dw];
							var str=tdDT.getFullYear() + "-" + (tdDT.getMonth()+1)+ "-" + tdDT.getDate();
							four.attr('data-val',str);
						}
					}
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

		
		
		
	/*----------------------------------------------------------------------------------*/	
		
		//模态框的弹出，显示，及隐藏
		var modalMore=$('#modal');/*显示更多*/
		var notesDetail=$('#notes');/*显示注释*/
		var bgMore=$('#bg');
		var bgDetail=$('#bg1');
		var departmentCode=$('input[name="departmentCode"]').val();
		
		var startDate='';
		var endDate='';
		
		$('.show').on('click',function(){
			var x=$(this).attr('data-flag');
			if(x=='detail'){
				startDate=$(this).attr('data-val');
				endDate=startDate;
				//显示--详情模态框
				bgDetail.show(1,function(){
					notesDetail.fadeIn(500);
				});
				
				//隐藏--显示更多模态框
				 modalMore.slideUp(500,function(){
						bgMore.hide();
				});
				
				//获取数据
	        	$('.confirm').on('click',function(){
	        		var scheduleItemCode=$('input[name="scheduleItemCode"]').val();
	        		var url='order.html';
	        		window.location=url+"?departmentCode="+departmentCode+"&startDate="+startDate+"&endDate="+endDate+"&scheduleItemCode="+scheduleItemCode;
	        	});
			}else{
				//显示更多---模态框
				bgMore.show(1,function(){
					modalMore.slideDown(500);
				});
				
				//隐藏--详情模态框
				 notesDetail.fadeOut(500,function(){
						bgDetail.hide();
				 });
			}
		});
		
		$('.hide').on('click',function(){
			var y=$(this).attr('data-flag');
			hide(y);
		});
		
		//隐藏模态框
		  function hide(y){
			  if(y=='return'){
				  modalMore.slideUp(500,function(){
						bgMore.hide();
					});
			  }else if(y=='cancel'){
				  notesDetail.fadeOut(500,function(){
						bgDetail.hide();
					});
			  }
		  }
		
		  /*----------------------------------------------------------------------------------*/		
			 
         $(function(){
        	 //按钮被点击了变成灰色,把该id传过去
	       	  $('.doc_info button').on('click',function(){
	       		  var obj=$(this);
	       		  $(this).html('已收藏');
	       		  $(this).css({
	       			  'border':'0.5px solid #999999',
	       			  'color':'#999999'
	       		  });
	       		 var departmentCode = $('input[name="departmentCode"]').val();
	       		 var questArr={
	       				departmentCode:departmentCode 
	       		 }
	       		 var questURL="collect.do";
	       		 $.post(questURL,questArr,function(result){
	       			 if(result==1){
	       				 alert("收藏成功");
	       				 obj.html('已收藏');
		   	       		  obj.css({
		   	       			  'border':'0.5px solid #999999',
		   	       			  'color':'#999999'
		   	       		  });
	       			 }else{
	       				 alert("收藏失败");
	       				 location.reload;
	       			 }
	       		 });
	       		  
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
         
         
         
         
         
         
         
         
         
         
         /*
 		
 		function confirm(startDate,endDate){
 			
 			//获取数据
         	$('.confirm').on('click',function(){
         		
         		alert(startDate+"得到了");
         		return false;
         		
         		
         		var url='order.html';
         		window.location=url+"?departmentCode="+departmentCode+"&startDate"+startDate+"&endDate"+endDate;
         	});
 			
 		}
 		//显示模态框
 		function show(x){
 			if(x=='more'){
 				//显示更多---模态框
 				bgMore.show(1,function(){
 					modalMore.slideDown(500);
 					//点击详情，弹出一个详情框
 					$('.detail').on('click',function(){
 			        	var startDate=$(this).attr('data-val');
 			        	var endDate=startDate;
 			        	alert(startDate);
 						//隐藏显示更多的那个模态框
 						modal.slideUp(500,function(){
 							//详情框的弹出
 							notes.fadeIn(500);
 						});
 						
 						confirm(startDate,endDate);
 					});
 					
 				});
 				
 				//隐藏--详情模态框
 				 notesDetail.fadeOut(500,function(){
 						bgDetail.hide();
 				 });
 				
 			}else if(x=='detail'){
 				//显示--详情模态框
 				bgDetail.show(1,function(){
 					notesDetail.fadeIn(500);
 				});
 				
 				//隐藏--显示更多模态框
 				 modalMore.slideUp(500,function(){
 						bgMore.hide();
 				});
 			}
 		}
 	 
 	  
 		
 		
 	  
 		$('.more').on('click',function(){
 			modal.slideDown(500,function(){
 				bg.show();
 				$('.detail').on('click',function(){
 					modal.slideUp(500);
 				});
 			});
 			
 		});
 		
 		$('.return').on('click',function(){
 			modal.slideUp(500,function(){
 				bg.hide();
 			});
 		});
 		
 		
 		
 		$('.detail').on('click',function(){
 			bg.show(1,function(){
 				notes.fadeIn(500);
 			});
 		});
 		
 		$('.cancel').on('click',function(){
 			notes.fadeOut(500,function(){
 				bg.hide();
 			});
 		});
 		
 	
         //模态框的显示
         var modal=document.getElementById('modal');
         var bg=document.getElementById('bg');
         var notes=document.getElementById('notes');
         $('.more').on('touchend',function(){
         	//e.preventDefault();
         	show(modal);
         	$('.detail').on('touchend',function(){
         		//e.preventDefault();
         		$('#modal').hide();
         	});
         });
         $('.return ').on('touchend',function(){
         	hide(modal);
         	
         });
         
         $('.detail').on('touchend',function(){
         	var departmentCode=$('input[name="departmentCode"]').val();
         	var startDate=$(this).attr('data-val');
         	var endDate=startDate;
         	//获取数据
         	show(notes);
         	$('.confirm').on('touchend',function(){
         		var url='order.html';
         		window.location=url+"?departmentCode="+departmentCode+"&startDate"+startDate+"&startDate"+startDate;
         	});
         });
         $('.cancel').on('touchend',function(){
         	hide(notes);
         });
         
         
         function show(x){
         	 x.style.display = "block";
 			 bg.style.display = "block";
         }
         
         function hide(y)
 		 {
 			 y.style.display = "none";
 			 bg.style.display = "none";
 		 }
         
        */
         
         
         
         
         
         
     </script>
    </body>
</html>
