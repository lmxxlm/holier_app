<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Demo</title>
  <link rel="stylesheet" href="../assets/css2/idangerous.swiper.css">
  <style>
/* Demo Styles */
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 13px;
  line-height: 1.5;
}
.swiper-container {
  width: 660px;
  height: 250px;
  color: #fff;
  text-align: center;
}
.red-slide {
  background: #ca4040;
}
.blue-slide {
  background: #4390ee;
}
.orange-slide {
  background: #ff8604;
}
.green-slide {
  background: #49a430;
}
.pink-slide {
  background: #973e76;
}
.swiper-slide .title {
  font-style: italic;
  font-size: 42px;
  margin-top: 80px;
  margin-bottom: 0;
  line-height: 45px;
}

a.swiper-slide {
  font-style: italic;
  font-size: 42px;
  margin-top: 80px;
  margin-bottom: 0;
  line-height: 45px;
}
.pagination {
  position: absolute;
  z-index: 20;
  left: 10px;
  bottom: 10px;
}
.swiper-pagination-switch {
  display: inline-block;
  width: 8px;
  height: 8px;
  border-radius: 8px;
  background: #222;
  margin-right: 5px;
  opacity: 0.8;
  border: 1px solid #fff;
  cursor: pointer;
}
.swiper-visible-switch {
  background: #aaa;
}
.swiper-active-switch {
  background: #fff;
}

.swiper-slide{
  background:gray;
}
  </style>
</head>
<body>
  <div class="swiper-container">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
        <div class="title"><a data-order="1" href="javascript:void(0)">1</a></div>
      </div>
      <div class="swiper-slide">
        <div class="title"><a data-order="2" href="javascript:void(0)">2</a></div>
      </div>
      <div class="swiper-slide">
        <div class="title"><a data-order="3" href="javascript:void(0)">3</a></div>
      </div>
      <div class="swiper-slide">
        <div class="title"><a data-order="4" href="javascript:void(0)">4</a></div>
      </div>
      <div class="swiper-slide">
        <div class="title"><a data-order="5" href="javascript:void(0)">5</a></div>
      </div>
      <div class="swiper-slide">
        <div class="title"><a data-order="5" href="javascript:void(0)">6</a></div>
      </div>
      <div class="swiper-slide">
        <div class="title"><a data-order="7" href="javascript:void(0)">7</a></div>
      </div>
    </div>
  </div>

  <script src="../assets/script/productAdmin/vendor/jquery-1.10.2.min.js"></script>
  <script src="../assets/script/productAdmin/vendor/idangerous.swiper-2.1.min.js"></script>
  <script>
  
  	var mySwiper = new Swiper('.swiper-container',{
    	slidesPerView: 3
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
			//var str=tdDT.getFullYear() + "/" + (tdDT.getMonth()+1)+ "/" + tdDT.getDate() + "/" + aryDay[dw];
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
  
  	//点击顶部时间进行跳转
  	$('.swiper-wrapper a').on('click',function(){
  		$(this).parents(".swiper-slide").addClass('swiper-active-switch').siblings().removeClass('swiper-active-switch');
  		var startDate=$(this).val();
  		var endDate=startDate;
  		var scheduleItemCode=$('input[name="scheduleItemCode"]').val();
  		var departmentCode=$('input[name="departmentCode"]').val();
  		var url='outpatient.html';
 	    window.location=url+"?departmentCode="+departmentCode+"&startDate="+startDate+"&endDate="+endDate;
  	});
  </script>
</body>
</html>