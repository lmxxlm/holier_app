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
        <title>预产期计算</title>
        <meta name="description" content="">
        <meta content=”width=device-width;  initial-scale=no; maximum-scale=1.0; user-scalable=0;″ name=”viewport” />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
        <link href="assets/css/productAdmin/ycqcount.css" rel="stylesheet">
	   <script src="assets/script/productAdmin/jquery.min.js"></script>
       <script src="assets/script/productAdmin/bootstrap.min.js"></script>
        <script src="assets/script/productAdmin/vendor/modernizr-2.6.2.min.js"></script>
         <link href="assets/css/productAdmin/mobiscroll.custom-2.5.0.min.css" rel="stylesheet" type="text/css" /><!--时间插件的样式-->
	      <script src="assets/script/productAdmin/mobiscroll.custom-2.5.0.min.js" type="text/javascript"></script>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    </head>
 <body>
 <style>
    
    .countButton{background:#41b2a6;color:#fff;}
    input{border:1px solid #41b2a6;}
 </style>
<div class="main">
  <form class="f" name="health" method=get onsubmit="return haha()" id="health">
       <p><strong>请输入你最后一次来月经的时间：</strong></br>
           <input type="text" name="year" size="6" value="">
			年
			<input type="text" name="month" size="3" value="">
			月
			<input type="text" name="day" size="3" value="">
			日
       </p>
       <p><strong>你的月经周期是</strong> <select name="mweek">
		<option value="20">20</option>
		<option value="21">21</option>
		<option value="22">22</option>
		<option value="23">23</option>
		<option value="24">24</option>
		<option value="25">25</option>
		<option value="26">26</option>
		<option value="27">27</option>
		<option value="28" selected>28</option>
		<option value="29">29</option>
		<option value="30">30</option>
		<option value="31">31</option>
		<option value="32">32</option>
		<option value="33">33</option>
		<option value="34">34</option>
		<option value="35">35</option>
		<option value="36">36</option>
		<option value="37">37</option>
		<option value="38">38</option>
		<option value="39">39</option>
		<option value="40">40</option>
		<option value="41">41</option>
		<option value="42">42</option>
		<option value="43">43</option>
		<option value="44">44</option>
		<option value="45">45</option>
		</select> 天</p>
<hr/>
 <p>
<input class="countButton" type=button onclick="return haha()" value="      计算预产期      "></p>
 <p>√&nbsp;<strong>您的预产期：</strong><input type=text name="yuchan" value="" readonly size=18> 日</p>
 <p>√&nbsp;<strong>您现在正处于孕期的第 </strong><input type=text name=yuchan2 value="" readonly size=8> 周</p>
<!-- <div class="border">
 <span><strong >算法说明</strong></span> -->
<fieldset style="border:1px solid #41b2a6;" >
<legend style="font-weight:bold;margin-left:2em;padding:0.3em;"> 算法说明:</legend>
<pre>
整个孕期约为40周，即9个月零7天左右，可以通过下面的方法测算预产期。但是只有不到５％的孕妇会刚好在预产期那天分娩。
    
<strong>按最后月经时间计算：</strong>
预产期日期为：<strong>月份 = 最后月经月份+9（或-3） 日期 = 最后月经日期+7。</strong>例如：最后月经日期为2008年5月13日，预产期应是2009年2月20日。

<strong>按引起怀孕的同房日期计算</strong>
<strong>从同房日期算起的第266天</strong>，即为预产期。

<strong>按初觉胎动日期计算</strong>
最后一次月经不清楚或月经不顺的人，上面的方法不可靠，就<strong>以母体第一次感到胎动的日子加二十二个星期（第一次分娩的产妇），或加二十四个星期（已有分娩经历的产妇）</strong>。第一次分娩的产妇一般在十八个星期后会感到胎动，已有分娩经历的产妇一般在十六周后会感胎动，但此法较不可靠。

<strong>祝妈妈和宝宝们健康快乐！</strong>
</pre>
</fieldset>
<!--</div>  -->

</form>    
 </div>
       
<script type="text/javascript">
	   var health=document.getElementById("health");
	   function healthtime()
			{
			var heihei = new Date();
			var countyear = heihei.getFullYear();
			var countmonth = heihei.getMonth();
			var countday = heihei.getDate();
			document.health.year.value = countyear;
			document.health.month.value = countmonth+1;
			document.health.day.value = countday;	
			}
			function haha()
			{
			if (health.year.value=="" || health.month.value=="" || health.day.value =="")
			{
			alert("请填写完整年月日!");
			return false;
			}
			if (health.year.value>2050 || health.year.value<1990)
			{
			alert("请填写正确年份!");
			health.year.focus();
			return false;
			}
			if (health.month.value>12 || health.month.value<1)
			{
			alert("请填写正确月份!");
			health.month.focus();
			return false;
			}
			if (health.day.value>31 || health.day.value<1)
			{
			alert("请填写正确日子!");
			health.day.focus();
			return false;
			}
			if (!isDate(health.year.value ,health.month.value ,health.day.value))
			{
			alert("年月日组合有错,请重新填写!");
			return false;
			}
			function isDate (year, month, day)
			{
			// month argument must be in the range 1 - 12
			month = month - 1;  // javascript month range : 0- 11
			var tempDate = new Date(year,month,day);
			if ( (year2k(tempDate.getFullYear()) == year) && (month == tempDate.getMonth()) && (day == tempDate.getDate()) )
			{
			return true;
			}
			else
			{
			return false;
			}
			}
			function year2k(d)
			{
			return (d < 1000) ? d + 1900 : d;
			}
			var stime = new Date();
			stime.setFullYear(health.year.value);
			stime.setMonth(health.month.value-1);
			stime.setDate(health.day.value);
			var yue = health.mweek.value;
			var true_number=280;
			if (yue<28)
			{
			true_number=280-(28-yue);
			}
			else if (yue>28)
			{
			true_number=280+(yue-28);
			}
			else if (yue==28)
			{
			true_number=280;
			}
			if (health.mweek.value!='')
			{
			var temptime=stime.getTime();
			stime.setTime((stime.getTime()+ true_number*24*3600*1000))
			var yuchan = stime.getFullYear()+"-"+(stime.getMonth()+1)+"-"+stime.getDate();
			var nowt = new Date();
			var chatime =  nowt.getTime()-temptime;
			var chaweek = Math.floor((chatime)/(1000*60*60*24*7));
			var chaweek_1 = Math.floor((chatime)/(1000*60*60*24));
			if (chaweek<0) chaweek=0;
			if (chaweek_1>(true_number+14)) alert("你的预产期已过!");		
			document.health.yuchan.value = yuchan;
			document.health.yuchan2.value = chaweek;
			return false;
			}
}


/*
$("#scroller").mobiscroll().date();

var currYear = (new Date()).getFullYear();  

	//初始化日期控件
var opt = {
	preset: 'date', //日期，可选：date\datetime\time\tree_list\image_text\select
	theme: 'ios', //皮肤样式，可选：default\android\android-ics light\android-ics\ios\jqm\sense-ui\wp light\wp
	display: 'modal', //显示方式 ，可选：modal\inline\bubble\top\bottom
	mode: 'scroller', //日期选择模式，可选：scroller\clickpick\mixed
	lang:'zh',
	dateFormat: 'yyyy-mm-dd', // 日期格式
	setText: '确定', //确认按钮名称
	cancelText: '取消',//取消按钮名籍我
	dateOrder: 'yyyymmdd', //面板中日期排列格式
	dayText: '日', monthText: '月', yearText: '年', //面板中年月日文字
	showNow: false,  
		nowText: "今",  
	startYear:currYear, //开始年份  
	endYear:currYear + 100 //结束年份  
	//endYear:2099 //结束年份
};

$("#scroller").mobiscroll(opt);
*/
</script>
	    
    
    
    </body>
</html>
