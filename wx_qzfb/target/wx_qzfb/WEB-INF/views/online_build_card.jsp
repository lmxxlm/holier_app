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
        <title>在线建卡</title>
        <meta name="description" content="">
        <meta content=”width=device-width;  initial-scale=no; maximum-scale=1.0; user-scalable=0;″ name=”viewport” />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
        
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
        <link href="assets/css/productAdmin/online_build_card.css" rel="stylesheet">
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
        <div class="content">
          <section>
            <p><span>姓名：</span><input type="text" name="name" placeholder="请输入您的姓名"/></p>
            <p class="radio"><span>性别：</span><input type="radio" name="sex" value="1">男<input type="radio" name="sex" value="2">女</p>
            <p><span>身份证号：</span><input type="text" name="idNo" placeholder="请输入您的身份证"></p>
            <p><span>出生日期：</span><input type="text" name="birthday" placeholder="请输入您的出生日期" data-value=""></p>
            <p><span>常住地址：</span><input type="text" name="address" placeholder="请输入您的常住地址"></p>
            <p><span>联系号码：</span><input type="text" name="telephone" placeholder="请输入您的联系号码"></p>
            <span class="button"><input type="button" value="确认建卡"></span>
          </section>
        </div>
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
    	   
    	   
    	   
		       // 验证身份证 
				function isCardNo(card) { 
				 var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
				 return pattern.test(card); 
				} 
		       $('input[name="idNo"]').on('blur',function(){
				   // 验证身份证
				  
				   var objCard=$(this);
				   
				   if($.trim(objCard.val()).length == 0) { 
				  
				    alert('身份证号码没有输入\n');
				
					objCard.focus();
				   } else{
					if(isCardNo($.trim(objCard.val())) == false) {
					 alert('身份证号不正确；\n');
					
					 objCard.focus();
					}else{
					    //获取到年月日
			     
					  var year = objCard.val(). substr(6,4);
					  var month = objCard.val(). substr(10,2);
					  var day = objCard.val(). substr(12,2);
					  var birth=year+"年"+month+"月"+day+"日";
					  var birthVal=year+"-"+month+"-"+day;
				      $('input[name="birthday"]').val(birth); 
				      $('input[name="birthday"]').attr('data-value',birthVal);
					}
				   }
				  
			   });
			   
			   $('input[name="telephone"]').on('blur',function(){
				  tel();
				   });
			   function tel(){
				     var phone = $('input[name="telephone"]').val();
                   if(!phone || !(/^1[3|4|5|8]\d{9}$/.test(phone))){
					  alert("您输入的手机号不对，请重新输入");
					  return false;
				   } 
				}
			 $('input[type="button"]').on('touchstart',function(){
				 $(this).addClass('buttonHover');
				 $(this).css({
					 'background':'#41b2a6',
					 'color':'#fff'
				 });
				 /*
				 $(this).css({color:#fff; background:#41b2a6;
		    	 background:"#41b2a6",
		    	 color:"#fff"
		     });
				 */
			 });	
			 $('input[type="button"]').on('touchend',function(){
				 $(this).css({
					 'background':'#fff',
					 'color':'#41b2a6'
				 });
				   $(this).removeClass('buttonHover');
				     var name=$('input[name="name"]').val();
					 var sex=$('input[name="sex"]:checked').val();
					 var idNo=$('input[name="idNo"]').val();
					 var birthday=$('input[name="birthday"]').attr('data-value');
					 var address=$('input[name="address"]').val();
					 var telephone=$('input[name="telephone"]').val();
					 if(!name){
					    alert("没有输入姓名");
						return false;
							 
					 }
					 if(!sex){
					    alert("请选择性别");
						return false;
							 
					 }
					 if(!idNo){
					   alert("请输入身份证号");
					   return false;
					 }
					 if(!address){
						 alert("请输入地址");
						 return false;
					 }
					 if(!telephone){
						 alert("请输入手机号");
						 return false;
						 }
						 
					var questArr={
					    name:name,
						sex:sex,
						idNo:idNo,
						birthday:birthday,
						address:address,
						telephone:telephone
					}
					
					var questURL="onlineBuildCard.do";
					$.post(questURL,questArr,function(result){
						if(result){
							alert("建卡成功");
							window.location.href="my_info.html";
							}else{
								alert("建卡失败");
								location.reload();
							}
						});
					
				 });
			 
	
	  });
    </script>
</html>
