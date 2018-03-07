<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=”zh”> <!--<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css2/jquery.mobile-1.4.3.css">
<link rel="stylesheet" href="assets/css2/idangerous.swiper.css">
<script src="assets/script/productAdmin/jquery.min.js"></script>
<script src="assets/script/productAdmin/vendor/jquery.mobile-1.4.3.js"></script>
<script src="assets/script/productAdmin/vendor/idangerous.swiper-2.1.min.js"></script>
</head>
<body>
<style>


body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 13px;
  
}
.device {
  border-radius: 20px;
  background: #111;
  border: 3px solid white;
  margin: 5px auto;
  position: relative;
  box-shadow: 0px 0px 5px #000;
}
.swiper-container{height:2em;line-height:2em;font-size:1.2em;}
.swiper-container a{text-decoration:none;color:fff;}
.ui-page-theme-a a{color:#fff;}
/*
, html .ui-bar-a a, html .ui-body-a a, html body .ui-group-theme-a a
.arrow-left,.arrow-right{ width:12%; height:100%; float:left; overflow:hidden; text-indent:-9999em; text-decoration:none;}
.arrow-left{ background:url("assets/image/productAdmin/outpatient/left.gif") no-repeat center center;}
.arrow-right{background:url("assets/image/productAdmin/outpatient/right.gif") no-repeat center center;}
a{display:inline-block;margin:0;padding:0;height:0.5em;margin-top:0.5em;}




.device .arrow-left {
  background: url("assets/image/productAdmin/outpatient/left.gif") no-repeat left top;
  position: absolute;
  left: 0px;
  top: 50%;
  margin-top: -15px;
  width: 17px;
  height: 30px;
  z-index:999;
}
.device .arrow-right {
  background: url("assets/image/productAdmin/outpatient/right.gif") no-repeat left bottom;
  position: absolute;
  right: 0px;
  top: 50%;
  margin-top: -15px;
  width: 17px;
  height: 20px;
   z-index:999;
}
*/

.swiper-wrapper{margin-left:1em;}

</style>
<div data-role="page">
  <div data-role="header">
     <div class="device">
	  <!-- <a class="arrow-left" href="#">左面</a> -->
		  <div class="swiper-container">
		    <div class="swiper-wrapper">
			      <a data-order="1"  class="swiper-slide red-slide" class="active" href="javascript:void(0)"></a>
			      <a data-order="2" class="swiper-slide blue-slide" href="javascript:void(0)"></a>
			      <a data-order="3"  class="swiper-slide orange-slide" href="javascript:void(0)"></a>
			      <a data-order="4"  class="swiper-slide green-slide" href="javascript:void(0)"></a>
			      <a data-order="5"  class="swiper-slide pink-slide" href="javascript:void(0)"></a>
			      <a data-order="6"   class="swiper-slide red-slide" href="javascript:void(0)"></a>
			      <a data-order="7"   class="swiper-slide blue-slide" href="javascript:void(0)"></a>
		    </div>
		    <div class="pagination"></div>
		  </div>
		<!-- <a class="arrow-right" href="#">右面</a> --> 
	  </div>
	 
	 <p><a style="margin-left:0.6em;font-size:1.2em;">体检中心</a><span>（1）名</span></p>
	  
  </div>

  <div data-role="main" class="ui-content">
	  <ul data-role="listview">
		  <li>
		    <a href="#">
		    <img src="assets/image/productAdmin/outpatient/doc.png">
		    <h2> TJZXH-体检中心号 普通号 （全天） 00:01-23:59</h2>
		    <p>线上接诊 0 |  评价-。</p>
		    </a>
		  </li>
		   <li>
		    <a href="#">
		    <img src="assets/image/productAdmin/outpatient/doc.png">
		    <h2>Google Chrome</h2>
		    <p>Google Chrome 免费的开源 web 浏览器。发布于 2008 年。</p>
		    </a>
		  </li>
		   <li>
		    <a href="#">
		    <img src="assets/image/productAdmin/outpatient/doc.png">
		    <h2>Google Chrome</h2>
		    <p>Google Chrome 免费的开源 web 浏览器。发布于 2008 年。</p>
		    </a>
		  </li>
      </ul>
	  
	  
  </div>

  <div data-role="footer">
    <h1>底部文本</h1>
  </div>
</div> 



  
  <script src="js/jquery-1.10.1.min.js"></script>
  <script src="../dist/idangerous.swiper.min.js"></script>
  <script>

  $(function(){
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
				var topTime=$('.swiper-wrapper').find('a');;
				var str=tdDT.getFullYear() + "/" + (tdDT.getMonth()+1)+ "/" + tdDT.getDate() + "/" + aryDay[dw];
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
		
		/*进行轮播
		  var mySwiper = new Swiper('.swiper-container',{
			    pagination: '.pagination',
			    paginationClickable: true,
			    slidesPerView: 4,
			    loop: true,
			    grabCursor: true,
			    paginationClickable: true
			  })
			  
*/
		  var mySwiper = $('.swiper-container').swiper({
			    pagination: '.pagination',
			    paginationClickable: true,
			    slidesPerView: 4,
			    loop:true,
			    grabCursor: true,
			    paginationClickable: true
			  });
		
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