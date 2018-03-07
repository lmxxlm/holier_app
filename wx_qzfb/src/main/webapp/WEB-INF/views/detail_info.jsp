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
        <link href="assets/css/productAdmin/detail_info.css" rel="stylesheet">
        
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" >
        
    <!--    <link href="css/bootstrap.min.css" rel="stylesheet">-->
       
	   <script src="assets/script/productAdmin/jquery.min.js"></script>
       <script src="assets/script/productAdmin/bootstrap.min.js"></script>
        
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
         <input type="hidden" name="wex_id" value="${card.wex_id}">
         <input type="hidden" name="status" value="${card.dft }">
         <div class="part1">
            <p><span class="span1">头像</span><span class="span2">
            <c:choose>
						<c:when test="${card.hasImage==true}">
							<img src=${card.image }/>
						</c:when>
						<c:otherwise>
							 <img src="assets/image/productAdmin/my_info/my_Info.png"/>
						</c:otherwise>
					</c:choose>
            </span></p>
            <p><span class="span1">姓名</span><span class="span2">${card.patient_name}</span></p>
            <p><span class="span1">性别</span><span class="span2">${sns_user_info.sex}</span></p>
            <p><span class="span1">
            <c:choose>
   <c:when test="${card.c_type == '02'}">
                                            身份证号
   </c:when>  
   <c:when test="${card.c_type == '04'}">
                                            医保卡号
   </c:when>
   <c:otherwise>
                                            卡号
   </c:otherwise>
</c:choose>
            </span><span class="num span2 " id="card_no">${card.card_no}</span></p>
         </div>
         <!-- 
         <div class="part2">
             <p><span class="span1">卡号</span><span class="num span2 " id="card_no">23230119910225</span></p>
             <p><span class="span1">二维码名片</span><span  class="span2">二维码</span></p>
             <p><span class="span1">条形码名片</span><span class="span2">条形码</span></p>
         </div >
          -->
         <div class="button">
          <button class="default"  onclick="bind('default');">设为默认</button>
            <button class="disbind jc"  onclick="bind('disbind');">解除绑定</button>
         </div>
         
         
         <!-- 模态框 -->
         <div id="disbind" class="bgCancel">
             <p>是否要解除绑定?</p>
             <a ><button class="yes">解除绑定</button></a>
             <button class="cancel">取消</button>
         </div>
          <div id="default" class="bgCancel">
             <p>是否要设为默认卡号？</p>
             <a ><button class="yes">设为默认</button></a>
             <button class="cancel">取消</button>
         </div>
         <div id="bg"></div>
         
    </body>
    <script>
       
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
        	
        	
        	//是否显示默认按钮
            default_button();
        	function default_button(){
        		var status=$('input[name="status"]').val();
            	if(status == "true"){
            		$('.button button.default').hide();
            	}
        	}
        	
        	//删除绑定号
        	$('#disbind .yes').on('touchend',function(){
        		var card_no=$('#card_no').html();
        		var wex_id=$('input[name="wex_id"]').val();
        		var questURL="myinfo_card_remove_bind.do";
        		var questArr={
        			wex_id:wex_id,
        			card_no:card_no
        		};
        		$.post(questURL,questArr,function(result){
        			if(result){
        				alert("解除绑定成功！");
        				window.location.href="my_info.html";
        			}else{
        				alert("解除绑定失败");
        				location.reload;
        			}
        		});
        	});
        	
        	//设置默认卡号
        	$('#default .yes').on('touchend',function(){
        		var card_no=$('#card_no').html();
        		var wex_id=$('input[name="wex_id"]').val();
        		var questURL="setting_card_default.do";//设置默认卡号
        		var questArr={
        			wex_id:wex_id,
        			card_no:card_no
        		};
        		$.post(questURL,questArr,function(result){
        			if(result==true){
        				alert("设置卡号成功！");
        				//跳转到卡号列表那一页看默认情况
        				window.location.href="my_info.html?wex_id="+wex_id;
        			}else{
        				alert("设置默认卡号失败，请重新设置");
        				location.reload;
        			}
        		});
        	});
        	
        	
        });
        
	   //模态框的显示
	   function bind(x){
		   $('#bg').show(2,function(){
			   $('#'+x).slideDown(500);
		   });
	   }
	   //点击取消按钮
	   $('.cancel').on('touchend',function(){
		    $(this).parent().slideUp(500,function(){
		    	bgHide();
		    });
       	
       });
	   
	   //把背景隐藏
	   function bgHide(){
		   $('#bg').hide();
	    }
	   //点击背景蒙层，模态框隐藏
	   $('#bg').on('touchend',function(){
		    var bg=$(this); 
		    setTimeout('bgHide()', 500);
		   // bg.delay(3000).hide();
		    $('.bgCancel').slideUp(500);
		});
	   
	   /*
	   
	    
	   $('.default').click(function(){
		   $('#bg').show(2,function(){
			   $('#default').slideDown(1000);
		   });
	   });
	   
	   
        var bg=document.getElementById('bg');
		
		function bind(x){
			show(x);
			}
        $('.cancel').on('touchend',function(){
			var y=$(this).parent();
        	hide(y);
        	
        });
        $('#bg').on('touchend',function(){
			 var y=$('.bgCancel');
			 
			 y.each(function(i,o){
				hide(o);
			 });
		});
        
        
       
        function show(x){
			var x=$("#"+x).get(0);
        	 x.style.display = "block";
			 bg.style.display = "block";
        }
        
        function hide(y){
			 y=$(y).get(0);
			 y.style.display = "none";
			 bg.style.display = "none";
		 }
        */
     
    
    </script>
</html>
