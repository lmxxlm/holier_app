<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang=”zh”>
	<!--<![endif]-->

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>专家列表</title>
		<meta name="description" content="">

		<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
		<meta content="yes" name="apple-mobile-web-app-capable">
		<meta content="black" name="apple-mobile-web-app-status-bar-style">
		<meta name="format-detection" content="telephone=no" />
		<meta name="format-detection" content="email=no" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="apple-mobile-web-app-status-bar-style" content="black" />

		<script src="assets/script/js/jquery.min.js"></script>
		<script src="assets/script/js/jquery-migrate.min.js"></script>
		<script src="assets/script/js/dropload.min.js"></script>
		<link rel="stylesheet" href="assets/css/public.css">

		<link rel="stylesheet" href="assets/css/dropload.css">

		<!--手机移动端web资源的整合  end-->
		<style>
			html,
			body,
			.main {
				width: 100%;
				height: 100%;
			}
			
			ul,
			ul li,
			ul li a {
				width: 100%;
			}
			
			ul li a {
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				display: inline-block;
				text-decoration: none;
				color: #000;
				position: relative;
				border-bottom: 1px solid #e3e3e3;
				padding: 15px;
				white-space: nowrap;
			}
			
			ul li a img {
				max-width: 70px;
				height: 90px;
				float: left;
				width: 25%;
			}
			
			ul li a span {
				display: inline-block;
				padding: 3px 0;
				margin-left: 14px;
				white-space: normal;
				word-wrap: break-word;
				word-break: break-all;
				width: 65%;
			}
			
			ul li a span b.name {
				color: #333333;
				font-size: 16px;
				margin-bottom: 10px;
			}
			
			ul li a span b {
				display: block;
				color: #999999;
				font-size: 14px;
				font-weight: 500;
				white-space: normal;
				word-wrap: break-word;
				word-break: break-all;
			}
			
			ul li a i {
				display: inline-block;
				width: 24px;
				/* height:48px;
                 border-radius:50%;
                 background:url("assets/image/expert_list/default_collection.png");
                 background-size:cover;*/
				position: absolute;
				top: 20px;
				right: 15px;
			}
			
			ul li a i img {
				width: 100%;
				border-radius: 50%;
			}
			
			hr {
				margin: 0;
				padding: 0;
				margin-left: 15px;
				margin-top: 0.7em;
				color: #bcbcbc;
				border-top: 0px;
				border-bottom: 2px solid #dcdcdc;
				height: 0;
			}
			
			.clear {
				clear: both;
			}
			/*模态框*/
			
			.bg {
				z-index: 99;
				position: fixed;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				background: rgba(0, 0, 0, 0.3);
				display: none;
				/* padding: 50px 20px;*/
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				box-sizing: border-box;
				overflow-y: auto;
			}
			
			.bg .modal {
				background: #f1f1f1;
				width: 90%;
				position: absolute;
				border-radius: 10px;
			}
			
			.bg .modal div.info {
				background: #a5d3a7;
				padding: 20px 4%;
				border-radius: 10px 10px 0px 0px;
			}
			
			.bg .modal div.title {
				width: 100%;
				position: relative;
			}
			
			.bg .modal div.info .title span {
				display: inline-block;
				line-height: 1.2em;
				color: #fff;
				font-size: 18px;
			}
			/*
               .bg .modal div.info .title i.close{
                  position:absolute;
                  display:inline-block;
                  right:10px;
                  width:20px;
                  height:20px;
                  background:url(assets/image/experts_details/close.png) no-repeat;
                  background-size:cover;
               }
               */
			
			.bg .modal div.info .title i.close {
				position: absolute;
				display: inline-block;
				margin-top: -15px;
				right: 0px;
				width: 30px;
				height: 40px;
				background: url(assets/image/experts_details/close.png) no-repeat 50% 50%;
				background-size: 20px 20px;
			}
			
			.bg .modal div.info .img {
				width: 100%;
				text-align: center;
				margin-top: 20px;
			}
			
			.bg .modal div.info .img img {
				/*width:23%;*/
				max-width: 170px;
				width: 85px;
				height: 85px;
				border-radius: 50%;
			}
			
			.bg .modal div.info .intro {
				text-align: center;
				color: #fff;
				margin-top: 20px;
			}
			
			.bg .modal div.info .intro p {
				line-height: 23px;
			}
			
			.bg .modal div.info .intro p:first-child {
				font-size: 16px;
			}
			
			.bg .modal div.info .intro p:first-child b:last-child {
				margin-left: 10px;
			}
			/*专长*/
			
			.bg .modal div.special {
				padding: 18px;
				background: #fff;
				margin-top: 0.7em;
				line-height: 1.5em;
			}
			
			.bg .modal div.special .p1 {
				padding-left: 35px;
				font-size: 0.9em;
				color: #333333;
				position: relative;
				height: 30px;
				line-height: 30px;
				font-size: 16px;
			}
			
			.bg .modal div.special .p1 i {
				position: absolute;
				display: inline-block;
				width: 30px;
				height: 30px;
				background: url(assets/image/experts_details/good.png) no-repeat;
				left: 0;
				background-size: cover;
				z-index: 10;
			}
			
			.bg .modal div.special .p2,
			.bg .modal div.introduce .p2 {
				font-size: 15px;
				color: #666666;
				margin-top: 13px;
				margin-left: 5px;
			}
			/*简介*/
			
			.bg .modal div.introduce {
				padding: 18px;
				background: #fff;
				margin-top: 0.7em;
				border-radius: 0px 0px 10px 10px;
			}
			
			.bg .modal div.introduce .p1 {
				height: 30px;
				line-height: 30px;
				padding-left: 35px;
				color: #4D4D4D;
				position: relative;
				font-size: 16px;
			}
			
			.bg .modal div.introduce .p1 i {
				position: absolute;
				display: inline-block;
				width: 30px;
				height: 30px;
				background: url(assets/image/experts_details/intro.png) no-repeat;
				left: 0;
				background-size: cover;
			}
			
			.bg {
				overflow: auto;
				-webkit-overflow-scrolling: touch;
			}
			
			.main {
				overflow: auto;
				-webkit-overflow-scrolling: touch;
			}
		</style>
	</head>

	<body>
		<div class="main scroller">
			<div class="wrap scroller">

				<ul class="lists scroller">
					<%--<c:if test="${nolist==true}">
						<p>当前没有医生</p>
					</c:if>
					<c:forEach items="${doctors}" var="doctor">
						<li>

							<a href="#" class="scroller">
								<input type="hidden" name="showVal" data_name="${doctor.name}" data_doctorTitle="${doctor.doctorTitle}" data_referDepartments="${doctor.referDepartments}" data_referHospital="${doctor.referHospital}" data_doctorSpecial="${doctor.specialties}" data_doctorIntroduce="${doctor.remark}" />
								<img class="docImg" <c:choose>
								<c:when test="${not empty doctor.headPic.middle}">src="${doctor.headPic.middle}"</c:when>
								<c:otherwise>src="assets/image/expert_list/head.png"</c:otherwise>
								</c:choose>>
								<span>
		                   <b class="name">${doctor.name}</b>
		                   <b>${doctor.doctorTitle}</b>
		                   <b>${doctor.referDepartments}</b>
		                   <b>${doctor.referHospital}</b>
	                     </span>
								<!--  <i class="collection"><img src="assets/image/expert_list/default_collection.png"></i> -->

							</a>

						</li>
					</c:forEach>--%>

					<%--测试开始--%>
					<li>
						<a href="#" class="scroller">
							<input type="hidden" name="showVal" data_name="${doctor.name}" data_doctorTitle="${doctor.doctorTitle}" data_referDepartments="${doctor.referDepartments}" data_referHospital="${doctor.referHospital}" data_doctorSpecial="${doctor.specialties}" data_doctorIntroduce="${doctor.remark}" />
							<img class="docImg" <c:choose>
								 <c:when test="${not empty doctor.headPic.middle}">src="${doctor.headPic.middle}"</c:when>
								 <c:otherwise>src="assets/image/expert_list/head.png"</c:otherwise>
							</c:choose>>
							<span>
		                   <b class="name">李医生</b>
		                   <b>${doctor.doctorTitle}很友好的一个医生</b>
		                   <b>${doctor.referDepartments}心内科</b>
		                   <b>${doctor.referHospital}浙江杭州第一医院</b>
	                     </span>
							<!--  <i class="collection"><img src="assets/image/expert_list/default_collection.png"></i> -->

						</a>

					</li>
						<li>
							<a href="#" class="scroller">
								<input type="hidden" name="showVal" data_name="${doctor.name}" data_doctorTitle="${doctor.doctorTitle}" data_referDepartments="${doctor.referDepartments}" data_referHospital="${doctor.referHospital}" data_doctorSpecial="${doctor.specialties}" data_doctorIntroduce="${doctor.remark}" />
								<img class="docImg" <c:choose>
									 <c:when test="${not empty doctor.headPic.middle}">src="${doctor.headPic.middle}"</c:when>
									 <c:otherwise>src="assets/image/expert_list/head.png"</c:otherwise>
								</c:choose>>
								<span>
		                   <b class="name">李医生</b>
		                   <b>${doctor.doctorTitle}很友好的一个医生</b>
		                   <b>${doctor.referDepartments}心内科</b>
		                   <b>${doctor.referHospital}浙江杭州第一医院</b>
	                     </span>
								<!--  <i class="collection"><img src="assets/image/expert_list/default_collection.png"></i> -->

							</a>

						</li>
						<li>
							<a href="#" class="scroller">
								<input type="hidden" name="showVal" data_name="${doctor.name}" data_doctorTitle="${doctor.doctorTitle}" data_referDepartments="${doctor.referDepartments}" data_referHospital="${doctor.referHospital}" data_doctorSpecial="${doctor.specialties}" data_doctorIntroduce="${doctor.remark}" />
								<img class="docImg" <c:choose>
									 <c:when test="${not empty doctor.headPic.middle}">src="${doctor.headPic.middle}"</c:when>
									 <c:otherwise>src="assets/image/expert_list/head.png"</c:otherwise>
								</c:choose>>
								<span>
		                   <b class="name">李医生</b>
		                   <b>${doctor.doctorTitle}很友好的一个医生</b>
		                   <b>${doctor.referDepartments}心内科</b>
		                   <b>${doctor.referHospital}浙江杭州第一医院</b>
	                     </span>
								<!--  <i class="collection"><img src="assets/image/expert_list/default_collection.png"></i> -->

							</a>

						</li>
						<li>
							<a href="#" class="scroller">
								<input type="hidden" name="showVal" data_name="${doctor.name}" data_doctorTitle="${doctor.doctorTitle}" data_referDepartments="${doctor.referDepartments}" data_referHospital="${doctor.referHospital}" data_doctorSpecial="${doctor.specialties}" data_doctorIntroduce="${doctor.remark}" />
								<img class="docImg" <c:choose>
									 <c:when test="${not empty doctor.headPic.middle}">src="${doctor.headPic.middle}"</c:when>
									 <c:otherwise>src="assets/image/expert_list/head.png"</c:otherwise>
								</c:choose>>
								<span>
		                   <b class="name">李医生</b>
		                   <b>${doctor.doctorTitle}很友好的一个医生</b>
		                   <b>${doctor.referDepartments}心内科</b>
		                   <b>${doctor.referHospital}浙江杭州第一医院</b>
	                     </span>
								<!--  <i class="collection"><img src="assets/image/expert_list/default_collection.png"></i> -->

							</a>

						</li>

					<%--测试结束--%>
				</ul>

			</div>

		</div>

		<div class="bg">
			<div class="modal">
				<div class="info">
					<div class="title"><span>专家详情</span><i class="close"></i></div>
					<div class="img"><img src="assets/image/experts_details/defult_head.png"></div>
					<div class="intro">
						<p><b class="name">将攻打</b><b class="doctorTitle">副主任医师</b></p>
						<p class="referDepartments">康复科</p>
						<p class="referHospital">浙江明州康复医院</p>
					</div>
				</div>

				<div class="special">
					<p class="p1"><i></i>专长</p>
					<p class="p2 doctorSpecial">高压氧治疗领域</p>
				</div>

				<div class="introduce">
					<p class="p1"><i></i>简介</p>
					<p class="p2 doctorIntroduce">
						dhdjkjlfdskjlfdskldsfk，觉得手机开放的健康的是否健康的是否健康开放的数据库开发的艰 苦奋斗空间的首付款健康的说法加快分解开放的健康的是否健康考了多少分艰苦奋斗时间肯定是妇科健康的 看课件发到手机开放的设计的设计的数据库看肌肤抵抗力降低首付款决定是否健康的说法开朗大方款式的罚款决定书 疯狂的疯狂就是对方可能是对方考虑的是快乐简单快乐的克里夫抵抗力降低首付款了解对方考虑加分来看风口浪尖的付款即 可京东方科技的方式空间发动机肯定是凤姐开放的时间都是风景进口发动机考古发掘开放的健康的酒店房间靠进口发动机发动 机客服电话酒店房间开发空间的疯狂觉得十分艰苦地方即可打发时间空间打开的风景浪费大家看看对方健康减肥快点放开经历过的快乐 苦奋斗空间的首付款健康的说法加快分解开放的健康的是否健康考了多少分艰苦奋斗时间肯定是妇科健康的 看课件发到手机开放的设计的设计的数据库看肌肤抵抗力降低首付款决定是否健康的说法开朗大方款式的罚款决定书 疯狂的疯狂就是对方可能是对方考虑的是快乐简单快乐的克里夫抵抗力降低首付款了解对方考虑加分来看风口浪尖的付款即 可京东方科技的方式空间发动机肯定是凤姐开放的时间都是风景进口发动机考古发掘开放的健康的酒店房间靠进口发动机发动 机客服电话酒店房间开发空间的疯狂觉得十分艰苦地方即可打发时间空间打开的风景浪费大家看看对方健康减肥快点放开经历过的快乐 苦奋斗空间的首付款健康的说法加快分解开放的健康的是否健康考了多少分艰苦奋斗时间肯定是妇科健康的 看课件发到手机开放的设计的设计的数据库看肌肤抵抗力降低首付款决定是否健康的说法开朗大方款式的罚款决定书 疯狂的疯狂就是对方可能是对方考虑的是快乐简单快乐的克里夫抵抗力降低首付款了解对方考虑加分来看风口浪尖的付款即 可京东方科技的方式空间发动机肯定是凤姐开放的时间都是风景进口发动机考古发掘开放的健康的酒店房间靠进口发动机发动 机客服电话酒店房间开发空间的疯狂觉得十分艰苦地方即可打发时间空间打开的风景浪费大家看看对方健康减肥快点放开经历过的快乐 苦奋斗空间的首付款健康的说法加快分解开放的健康的是否健康考了多少分艰苦奋斗时间肯定是妇科健康的 看课件发到手机开放的设计的设计的数据库看肌肤抵抗力降低首付款决定是否健康的说法开朗大方款式的罚款决定书 疯狂的疯狂就是对方可能是对方考虑的是快乐简单快乐的克里夫抵抗力降低首付款了解对方考虑加分来看风口浪尖的付款即 可京东方科技的方式空间发动机肯定是凤姐开放的时间都是风景进口发动机考古发掘开放的健康的酒店房间靠进口发动机发动 机客服电话酒店房间开发空间的疯狂觉得十分艰苦地方即可打发时间空间打开的风景浪费大家看看对方健康减肥快点放开经历过的快乐
					</p>
				</div>

			</div>
		</div>
		<script>
			//document.getElementsByTagName('body')[0].addEventListener('touchstart', function(e) {e.preventDefault();}, false);

			$(function() {

				//去掉alert的网址
				window.alert = function(name) {
					var iframe = document.createElement("IFRAME");
					iframe.style.display = "none";
					iframe.setAttribute("src", 'data:text/plain,');
					document.documentElement.appendChild(iframe);
					window.frames[0].window.alert(name);
					iframe.parentNode.removeChild(iframe);
				}

				//移动页面滚动后不触发touchend、
				//解决方法是在滚动时就给停止touchend事件冒泡，实现如下：
				stopTouchendPropagationAfterScroll();

				function stopTouchendPropagationAfterScroll() {
					var locked = false;
					window.addEventListener('touchmove', function(ev) {
						locked || (locked = true, window.addEventListener('touchend', stopTouchendPropagation, true));
					}, true);

					function stopTouchendPropagation(ev) {
						ev.stopPropagation();
						window.removeEventListener('touchend', stopTouchendPropagation, true);
						locked = false;
					}
				}

				var counter = 2;
				// 每页展示4个
				var num = 10;
				var pageStart = 0,
					pageEnd = 0;
				// dropload
				$('.main').dropload({

					scrollArea: window,
					loadDownFn: function(me) {
						$.ajax({
							type: 'GET',
							async: true,
							url: 'get_more_doctor_records.do',
							dataType: 'json',
							data: {
								cp: counter
							},
							success: function(result) {
								if(result.data.length == 0) {
									// 锁定
									me.lock();
									// 无数据
									me.noData();
									// break;
								};

								counter++;
								var Length = result.data.length;
								var resultStr = '';

								for(var i = 0; i < Length; i++) {
									var picSrc = '';
									if(!result.data[i].headPic.middle) {
										picSrc = 'assets/image/expert_list/head.png';
									} else {
										picSrc = result.data[i].headPic.middle;
									}

									resultStr += ' <li><a href="#">' +
										' <input type="hidden" name="showVal" ' +
										' data_name="' + result.data[i].name + '" ' +
										' data_doctorTitle="' + result.data[i].doctorTitle + '" ' +
										' data_referDepartments="' + result.data[i].referDepartments + '" ' +
										' data_referHospital="' + result.data[i].referHospital + '" ' +
										' data_doctorSpecial="' + result.data[i].specialties + '" ' +
										' data_doctorIntroduce="' + result.data[i].remark + '" ' +
										'/>' +
										'<img src=' + picSrc + '><span>' +
										'<b class="name">' + result.data[i].name + '</b>' +
										'<b>' + result.data[i].doctorTitle + '</b>' +
										'<b>' + result.data[i].referDepartments + '</b>' +
										'<b>' + result.data[i].referHospital + '</b>' +
										'</span></a></li>';
									/*
   	                		 if((i + 1) >= result.data.length){
	   	                            // 锁定
	   	                            me.lock();
	   	                            // 无数据
	   	                            me.noData();
	   	                            break;
	   	                         }; 
	                    	    */

								};

								// 为了测试，延迟1秒加载
								setTimeout(function() {
									$('.lists').append(resultStr);
									// 每次数据加载完，必须重置
									me.resetload();
								}, 1000);
							},
							error: function(xhr, type) {
								alert('加载错误!');
								// 即使加载出错，也得重置

								me.resetload();
							}
						});
					}
				});
			});

			$(function() {
				init();
				//初始化模态框
				function init() {
					$('.modal').find('.name').html('');
					$('.modal').find('.doctorTitle').html('');
					$('.modal').find('.referDepartments').html('');
					$('.modal').find('.referHospital').html('');
					$('.modal').find('.doctorSpecial').html('');
					$('.modal').find('.doctorIntroduce').html('');
					$('.modal').find('.img img').attr('src', '');
				}

				function center(obj) {
					//obj这个参数是弹出框的整个对象  
					var screenWidth = $(window).width(),
						screenHeigth = $(window).height();
					//获取屏幕宽高  
					var scollTop = $('.bg').scrollTop();
					//当前窗口距离页面顶部的距离  
					var objLeft = (screenWidth - obj.width()) / 2;
					if(obj.height() > screenHeigth) {
						var objTop = 0;
					} else {
						var objTop = (screenHeigth - obj.height()) / 2 + scollTop;
					}
					///弹出框距离左侧距离  

					///弹出框距离顶部的距离  
					obj.css({
						left: objLeft + "px",
						top: objTop + "px"
					});
					obj.fadeIn(500);
					//弹出框淡入  
					isOpen = 1;
					//弹出框打开后这个变量置1 说明弹出框是打开装填  
					//当窗口大小发生改变时  
					$(window).resize(function() {
						//只有isOpen状态下才执行  
						if(isOpen == 1) {
							//重新获取数据  
							screenWidth = $(window).width();
							screenHeigth = $(window).height();
							var scollTop = $(document).scrollTop();
							objLeft = (screenWidth - obj.width()) / 2;
							var objTop = (screenHeigth - obj.height()) / 2 + scollTop;
							obj.css({
								left: objLeft + "px",
								top: objTop + "px"
							});
							obj.fadeIn(500);
						}
					});
					//当滚动条发生改变的时候  
					$('.bg').scroll(function() {
						if(isOpen == 1) {
							//重新获取数据  
							screenWidth = $('.bg').width();
							screenHeigth = $('.bg').height();
							var scollTop = $('.modal').scrollTop();
							objLeft = (screenWidth - obj.width()) / 2;
							// var objTop =(screenHeigth - obj.height()) / 2 + scollTop;  
							var objTop = scollTop;
							obj.css({
								left: objLeft + "px",
								top: objTop + "px"
							});
							obj.fadeIn(500);
						}
					});
				}

				$('li a').live('touchend', function() {
					init();
					//获取值
					var name = $(this).find('input[name="showVal"]').attr('data_name');
					var doctorTitle = $(this).find('input[name="showVal"]').attr('data_doctorTitle');
					var referDepartments = $(this).find('input[name="showVal"]').attr('data_referDepartments');
					var referHospital = $(this).find('input[name="showVal"]').attr('data_referHospital');
					var doctorSpecial = $(this).find('input[name="showVal"]').attr('data_doctorSpecial');
					var doctorIntroduce = $(this).find('input[name="showVal"]').attr('data_doctorIntroduce');

					var src = $(this).find('img.docImg').attr('src');
					//赋值
					$('.modal').find('.name').html(name);
					$('.modal').find('.doctorTitle').html(doctorTitle);
					$('.modal').find('.referDepartments').html(referDepartments);
					$('.modal').find('.referHospital').html(referHospital);
					$('.modal').find('.doctorSpecial').html(doctorSpecial);
					$('.modal').find('.doctorIntroduce').html(doctorIntroduce);
					$('.modal').find('.img img').attr('src', src);

					$(".bg").fadeIn(500);

					center($('.modal'));

					$('html').css({
						"height": "100%",
						"overflow": "hidden"
					});
					$('body').css({
						"height": "100%",
						"overflow": "hidden"
					});
					/*$('.main').css({"height":"100%","overflow":"hidden"});*/
				});

				$('.close').on('touchend', function() {
					$('.bg').fadeOut("slow");

					$('html').css({
						"height": "100%",
						"overflow": "visible"
					});
					$('body').css({
						"height": "100%",
						"overflow": "auto"
					});
					/*$('.main').css({"height":"100%","overflow":"auto"});*/
				});

				//收藏
				/*  $('.collection').on('click',function(event){
        	    	var src=$(this).find('img').attr('src');
        	    	if(src=='assets/image/expert_list/check_collection.png'){
        	    		$(this).find('img').attr('src','assets/image/expert_list/default_collection.png');
        	    	}else{
        	    	    $(this).find('img').attr('src','assets/image/expert_list/check_collection.png');
        	    	}
        	    	 event.stopPropagation();
        	    });
				*/

			});
		</script>

	</body>

</html>