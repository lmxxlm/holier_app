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
		<title>康复医院</title>
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
		<link rel="stylesheet" href="assets/css/public.css">

		<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js">
		</script>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=dGpUeSCX5PEZ5KRMhivnULribEclEEIv"></script>
		<script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
		<script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>
		<!--手机移动端web资源的整合  end-->
		<style>
			html,
			body,
			.main {
				width: 100%;
				height: 100%;
				font-family: "黑体";
				background: #f1f1f1;
			}
			
			.main {
				padding-top: 55px;
			}
			
			.main .drop {
				padding-bottom: 100px;
			}
			/* .main ul.hosList{
               margin-bottom:100px;
         }*/
			
			i {
				position: absolute;
				display: inline-block;
			}
			
			a {
				text-decoration: none;
				color: #BCBCBC;
			}
			/*列表部分*/
			
			.main,
			ul,
			li {
				width: 100%;
			}
			
			.main ul li a {
				margin-top: 10px;
				width: 100%;
				display: inline-block;
				padding: 20px 17px;
				background: #fff;
				font-size: 14px;
				padding-left: 112px;
				position: relative;
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				box-sizing: border-box;
			}
			
			.main ul li a i.medal {
				width: 40px;
				height: 40px;
				background: url(assets/image/turn_hospital/medal.png);
				background-size: cover;
				top: 0;
				right: 0;
			}
			
			.main ul li a img {
				position: absolute;
				border: 1px solid #999999;
				width: 80px;
				height: 62px;
				/*垂直居中*/
				left: 17px;
				top: 50%;
				margin-top: -31px;
			}
			
			.main ul li a .hosName {
				color: #333333;
				font-size: 16px;
				margin-bottom: 5px;
			}
			
			.main ul li a .distance {
				font-size: 14px;
				color: #999999;
				margin-bottom: 3px;
			}
			
			.main ul li a .cara {
				font-size: 10px;
				line-height: 20px;
				color: #999999;
			}
			
			.main ul li a .cara span {
				border: 1px solid #999999;
				border-radius: 3px;
			}
			
			.main ul li a .cara span.first {
				border: 1px solid #fdac1d;
				color: #fdac1d;
			}
			/*尾部*/
			
			.footer {
				width: 100%;
				position: fixed;
				left: 0;
				bottom: 0;
				background: #f6f6f6;
				border-top: 1px solid #D6DADB;
				z-index: 100;
			}
			
			.footer span {
				display: inline-block;
				width: 25%;
				float: left;
				text-align: center;
			}
			
			.footer span img {
				width: 24px;
				margin-top: 10px
			}
			
			.footer span b {
				color: #666666;
				line-height: 20px;
				font-size: 12px;
				font-weight: normal;
			}
			/*模态框*/
			
			.bg {
				z-index: 10000;
				width: 100%;
				height: 100%;
				background: #fff;
				position: fixed;
				left: 0;
				bottom: 0;
				/*这样才能从下弹出*/
				font-size: 16px;
				display: none;
			}
			
			.bg,
			.bg .modal,
			.bg ul {
				height: 100%;
			}
			
			.bg ul.city {
				width: 20%;
				background: #ECF0F0;
				height: 100%;
				text-align: center;
			}
			
			.bg li {
				width: 100%;
				height: 40px;
				line-height: 40px;
				font-size: 16px;
				border-bottom: 1px solid #E8E7E4;
			}
			
			.bg ul.area {
				position: absolute;
				width: 80%;
				right: 0;
				top: 0;
				background: #fff;
				text-align: center;
			}
			
			.active {
				background: #fff;
			}
			
			.addRight {
				margin-right: 5px;
			}
			
			.head {
				padding: 10px 0;
				background: #a5d3a7;
				text-align: center;
				z-index: 999;
				position: fixed;
				top: 0;
				left: 0;
				width: 100%;
			}
			
			.head input {
				width: 80%;
				height: 30px;
				line-height: 30px;
				border-radius: 15px;
				border: 1px solid #fff;
				background: #fff url(assets/image/turn_hospital/seach2.png) no-repeat 97% 50%;
				background-size: 14px 14px;
				text-align: center;
				box-sizing: border-box;
				-webkit-box-sizing: border-box;
			}
			
			.head input.focus {
				background: #fff url(assets/image/turn_hospital/seach2.png) no-repeat 15px 50%;
				background-size: 14px 14px;
				text-align: left;
				padding-left: 35px;
			}
			/*下拉刷新*/
			
			#slideDown {
				margin-top: 0;
				width: 100%;
			}
			
			#slideDown1,
			#slideDown2 {
				width: 100%;
				height: 70px;
				;
				background: #e9f4f7;
				display: none;
			}
			
			#slideDown1 {
				height: 20px;
			}
			
			#slideDown1>p,
			#slideDown2>p {
				margin: 20px auto;
				text-align: center;
				font-size: 14px;
				color: #a5d3a7;
			}
			
			#slideDown2>p i {
				diasplay: inline-block;
				width: 20px;
				height: 20px;
				background: url(assets/image/turn_hospital/round1.gif);
				background-size: 20px, 20px;
				margin-left: 10px;
			}
			/*地图样式*/
			
			.map {
				padding: 5px 10px;
				border-radius: 5px;
				border: none;
				background:#DDDDDD;
			}
			
			html #allmap {
				width: 100%;
				height: 100%;
				display: none;
			}
			html #return{
				width:30px;
				height:30px;
				position:absolute;
				z-index:999;
				background-image:url(assets/image/eg/return2.png);
				background-size:100% 100%;
				color:#fff;
				top:10px;
				left:10px;
				display:none;
				border:none;
				border-radius:50%;
			}
			
		</style>
	</head>

	<body>
		<button id="return"></button>
		<div id="allmap">
			 
		</div>

		<div class="main">

			<div class="head">
				<input type="hidden" name="selectArea" value="杭州市" data-count="7" data-flag="city" data-province="浙江省" data-city="杭州市" data-area="" />
				<form action="search_kf_hospital_by_name.do" method="post">
					<input type="search" name="hosName" placeholder="
            搜索康复医院" /> <button type="button" class="map" name="map">地图</button>
				</form>
				<button class="ceshi">测试</button>
			</div>

			<div id="slideDown">
				<div id="slideDown1">
					<p>松开刷新</p>
				</div>
				<div id="slideDown2">
					<p>正在刷新 <i></i></p>
				</div>
			</div>

			<div class="drop" id="content">
				<ul class="hosList">

					<c:if test="${nolist==true}">
						<p>当前没有医院列表</p>
					</c:if>
					<c:forEach items="${data}" var="hospital">
						<li>
							<a href="ward_list.html?hosId=${hospital.hospital_id}">
								<c:choose>
									<c:when test="${hospital.auth==true}">
										<i class="medal"></i>
									</c:when>
									<c:otherwise></c:otherwise>
								</c:choose>

								<c:choose>
									<c:when test="${not empty hospital.hospital_image.middle}">
										<img src="${hospital.hospital_image.middle}" />
									</c:when>
									<c:otherwise><img src="assets/image/hos.jpg" /></c:otherwise>
								</c:choose>

								<p class="hosName">${hospital.hospital_name}</p>
								<p class="distance">距离您${hospital.distance}-公里${hospital.district}</p>
								<p class="cara">
									<c:forEach items="cara" var="cara">
										<c:if test="${hospital.pss == true}">
											<span class="first">转运车接送</span>
										</c:if>
										<c:forEach items="${hospital.departments}" var="department">
											<span>${department}</span>
										</c:forEach>
									</c:forEach>
								</p>

							</a>
						</li>

					</c:forEach>
				</ul>
				<p class="showP" style="text-align:center;height:30px;line-height:30px;margin-top:10px;">上拉加载更多......</p>
			</div>
		</div>

		<div class="footer">
			<span class="span1" data-area="" data-city="" data-status="0"><img src="assets/image/turn_hospital/footer/area.png"><br><b>地区</b></span>
			<span class="span2" data-status="0"><img src="assets/image/turn_hospital/footer/awarding.png"><br><b>授牌</b></span>
			<span class="span3" data-status="0"><img src="assets/image/turn_hospital/footer/distance.png"><br><b>距离排序</b></span>
			<span class="span4" data-status="0"><img src="assets/image/turn_hospital/footer/bed.png"><br><b>床位</b></span>
		</div>

		<div class="bg">
			<div class="modal">
				<ul class="city">
				</ul>
				<ul class="area">
				</ul>
			</div>
		</div>
		<input type="hidden" name="config" value="${wx_config}" />
		<input type="hidden" name="cp" value="" />

		<script type="text/javascript">
			$(function(){
				$('.ceshi').on('click',function(){
					$.ajax({
				        url: "http://10.0.56.6:8080/FSFY/disPatchJson?clazz=READDATA&UITYPE=PFD_USER_LAND&sUserID=1&data=[{D0:0,D1:15268586328,D2:1213}]",
				        type: 'GET',
				        dataType: 'JSONP',
				        success: function (data) {
				        	var result=eval('('+data+')');
				        	alert("成功了");
				        },
				        error: function(data){
				        	//console.log("失败"+data);
				        	alert("失败了");
				        }
				    });
				});
			});
			$('button[name="map"]').on('click', function(e) {
				e.preventDefault();
				$('#allmap').css('display', 'block');
				$('.main').css('display', 'none');
				$('.footer').css('display', 'none');
				$('#return').css('display', 'block');
				init();
			});
			
			$('#return').on('click',function(){
				$('#allmap').css('display', 'none');
				$('.main').css('display', 'block');
				$('.footer').css('display', 'block');
				$(this).css('display', 'none');
			});

			//百度地图API功能
			function loadJScript() {
				var script = document.createElement("script");
				script.type = "text/javascript";
				script.src = "http://api.map.baidu.com/api?v=2.0&ak=QWAs2agSioUSrbRoxKpu7Zgb0OZVqtGc&callback=init";
				document.body.appendChild(script);
			}

			function init() {

				// 百度地图API功能
				var map = new BMap.Map("allmap", {
					minZoom: 4,
					maxZoom: 17
				});
				//var point = new BMap.Point(120.22, 30.3);   // 经度在前，纬度在后
				var zoom_level = 6; // 缩放等级 , 数值越大,能看到的景物越细微 , 范围3-18级

				//获取筛选的城市(筛选先去掉)
				$('input[name="selectArea"]').val('');
				var selectName = $('input[name="selectArea"]').val();
				if(selectName) {
					var selectObj = $('input[name="selectArea"]');
					var type = selectObj.attr('data-flag');
					var localSearch = new BMap.LocalSearch(map);
					localSearch.enableAutoViewport(); //允许自动调节窗体大小
					function searchByStationName() {
						localSearch.search(selectName);　　
						localSearch.setSearchCompleteCallback(function(searchResult) {　　　　
							var poi = searchResult.getPoi(0);
							var searchPoint = new BMap.Point(poi.point.lng, poi.point.lat);
							var zoom;
							var rangeLev;
							var fun;
							switch(type) {
								case "province":
									zoom = 6;
									rangeLev = {
										min: 4,
										max: 7
									};
									fun = province_cb_func;
									break;
								case "city":
									zoom = 8;
									rangeLev = {
										min: 7,
										max: 10
									};
									fun = region_city_cb_func;
									break;
								case "area":
									zoom = 12;
									rangeLev = {
										min: 10,
										max: 13
									};
									fun = region_city_cb_func;
									break;
								default:
									zoom = 14;
									rangeLev = {
										min: 13,
										max: 16
									};
									fun = hos_cb_func;
							}

							var count = selectObj.attr('data-count');
							var content = '<p>' + selectName + '</p>' + '<p>' + count + '家</p>';
							var markerSearch = addLabel(searchPoint, content, zoom);
							markerSearch.rangeLev = rangeLev;　　　　
							map.centerAndZoom(poi.point, zoom);
							//给这个search加上省 城市  区域的属性
							markerSearch.provinceName = selectObj.attr('data-province');
							markerSearch.cityName = selectObj.attr('data-city');
							markerSearch.areaName = selectObj.attr('data-area');

							markerSearch.addEventListener("click", fun);

							　　
						});　　
					}

					searchByStationName();

				} else {
					map.centerAndZoom("浙江省", zoom_level);
					//先得到浙江省  上海市
					multClickFunc('getPoints.do', {
						province: '浙江省',
						city: '',
						area: ''
					}, province_cb_func, 'province')
					multClickFunc('getPoints.do', {
						province: '上海市',
						city: '',
						area: ''
					}, province_cb_func, 'province')
				}

				//家地图的控件
				var top_left_control = new BMap.ScaleControl({
					anchor: BMAP_ANCHOR_TOP_LEFT
				}); // 左上角，添加比例尺
				var top_left_navigation = new BMap.NavigationControl(); //左上角，添加默认缩放平移控件
				var top_right_navigation = new BMap.NavigationControl({
					anchor: BMAP_ANCHOR_TOP_RIGHT,
					type: BMAP_NAVIGATION_CONTROL_SMALL
				}); //右上角，仅包含平移和缩放按钮

				//添加控件和比例尺
				function add_control() {
					map.addControl(top_left_control);
					map.addControl(top_left_navigation);
					map.addControl(top_right_navigation);
				}

				add_control();

				function multClickFunc(url, req_json, cb_func, click_source_type) {
					switch(click_source_type) {
						case "province":
							cb_func = province_cb_func
							break;
						case "city" || "area":
							cb_func = region_city_cb_func
							break;
						case "hospital":
							cb_func = hos_cb_func
							break;
					}
					$.post(url, req_json, cb_func);
				}

				function province_cb_func(result) {
					result = eval('(' + result + ')');
					if(result.status == true) {
						var name = result.data.name;
						var count = result.data.count;

						var proPoint;
						if(name == "浙江省") {
							proPoint = new BMap.Point(120.22, 30.3);
						} else if(name = "上海市") {
							proPoint = new BMap.Point(121.49, 31.3);
						}

						var content = '<p>' + name + '</p><p>' + count + '家</p>';
						var proMarker = addLabel(proPoint, content, map.getZoom());
						
						proMarker.rangeLev = {
							min: 4,
							max: 7
						};
						proMarker.provinceName = name;
						proMarker.addEventListener("click", region_city_cb_func);

					} else {
						alert("当前木有数据");
						return false;
					}
				}

				function region_city_cb_func(e) {
					var p = e.target;
					var pName = p.provinceName ? p.provinceName : '';
					var cName = p.cityName ? p.cityName : '';
					var aName = p.areaName ? p.areaName : '';
					var questArr = {
						province: pName,
						city: cName,
						area: aName
					}

					console.log(questArr);

					var questURL = 'getPoints.do';

					$.post(questURL, questArr, function(result) {
						console.log(result);
						result = eval('(' + result + ')');

						if(result.status == true) {
							var children = result.data.children;
							var times;
							(result.data.flag == 'province' || result.data.flag == 'area') ? times = 2: times = 4;
							rollUp(p, times);
							var provinceName = result.data.name;
							for(var i = 0; i < children.length; i++) {
								var cityName = children[i].name;
								var chilCount = children[i].count;
								var flag = children[i].flag;
								var lng = children[i].lng;
								var lat = children[i].lat;
								var point = new BMap.Point(lng, lat);
								var content = '<p>' + cityName + '</p><p>' + chilCount + '家</p>';
								var marker ;
								var type = children[i].flag;
								if(type == 'city') {
									marker= addLabel(point, content, map.getZoom());
									marker.rangeLev = {
										min: 7,
										max: 10
									};
									marker.cityName = cityName;
									marker.provinceName = provinceName;
									marker.addEventListener('click', region_city_cb_func);
								} else if(type == 'area') {
									marker = addLabel(point, content, map.getZoom());
									marker.rangeLev = {
										min: 10,
										max: 13
									};
									marker.provinceName = result.data.prename;
									marker.cityName = provinceName;
									marker.areaName = cityName;
									marker.addEventListener('click', region_city_cb_func);
								} else {
									content = children[i].name;
									marker = addLabel(point, content, map.getZoom());
									marker.rangeLev = {
										min: 13,
										max: 16
									};
									marker.hospital_id = children[i].id;
									console.log(marker);
									marker.addEventListener('click', hos_cb_func);
								}
							}
						} else {
							alert("当前木有数据");
							return false;
						}

					});

				}

				function hos_cb_func(e) {
					window.location.href='ward_list.html?hosId=' + e.target.hospital_id;
				}

				/* 
					以当前点为中信息 进行放大
					param: _this 当前标注的经纬度
					param: times 缩放倍数 默认为2
				*/
				function rollUp(p, times) {
					if(!times) {
						times = 2;
					}
					var now_zoom_lv = map.getZoom();
					var tar_zoom_lv = now_zoom_lv > 16 ? now_zoom_lv : now_zoom_lv + times;
					map.centerAndZoom(new BMap.Point(p.getPosition().lng, p.getPosition().lat), tar_zoom_lv)
				}

				//先给杭州上海加上标签
				function addLabel(point, content, zoom) {
					var opts = {
						position: point, // 指定文本标注所在的地理位置
						offset: new BMap.Size(0, 0) //设置文本偏移量
					}
					var label = new BMap.Label(content, opts);
					console.log(zoom)
					if(zoom >= 14) {
						label.setStyle({
							color: "#fff",
							fontSize: "12px",
							padding: "5px",
							border: "none",
							borderRadius: "5px",
							textAlign: "center",
							fontFamily: "微软雅黑",
							backgroundColor: "rgba(83,166,78,0.8)"
						});
					} else {
						label.setStyle({
							color: "#fff",
							fontSize: "12px",
							width: "50px",
							padding:"15px 5px",
							textAlign: "center",
							fontFamily: "微软雅黑",
							border: "none",
							borderRadius: "50%",
							backgroundColor: "rgba(83,166,78,0.8)"

						});
					}

					map.addOverlay(label);
					label.addEventListener("mouseover", function() {
						this.setStyle({
							backgroundColor: "rgba(251,88,46,0.8)"
						});
					})

					label.addEventListener("mouseout", function() {
						this.setStyle({
							backgroundColor: "rgba(83,166,78,0.8)"
						});
					})

					label.point = point;

					//给label添加一个范围
					label.zoom = zoom
					return label;

				}

				//缩放结束后  TODO
				map.addEventListener("zoomend", function() {
					test(); 
					
				});
				
				function test(){
					var zoomend = map.getZoom();
					var allOverlay = map.getOverlays();
					for(var i = 0; i < allOverlay.length; ++i) {
						//var range = allOverlay[i].rangeLev;
						if(allOverlay[i].rangeLev && (zoomend >= allOverlay[i].rangeLev.min) && (zoomend < allOverlay[i].rangeLev.max)){
							 allOverlay[i].show();
						}else{
							allOverlay[i].hide();
						}
					}
				}

				/*
    
    
    //获得当前的经纬度
	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			var mk = new BMap.Marker(r.point);
			map.addOverlay(mk);
			map.panTo(r.point);
			alert('您的位置：'+r.point.lng+','+r.point.lat);
		}
		else {
			alert('failed'+this.getStatus());
		}        
	},{enableHighAccuracy: true});
    
   */

				map.enableDragging(); //两秒后开启拖拽
				map.enableContinuousZoom(); //启用地图惯性拖拽，默认禁用

			}
			window.onload = function() {
				$('input[name="selectArea"]').val('');
				loadJScript();
			}
		</script>

		<script>
			//第一步：下拉过程 
			var slideDown1 = $('#slideDown1'),
				slideDown2 = $('#slideDown2');

			function slideDownStep1(dist) { // dist 下滑的距离，用以拉长背景模拟拉伸效果 
				slideDown2.hide();
				slideDown1.show();
				slideDown1.height(20 - dist);
			}

			//第二步：下拉，然后松开， 
			function slideDownStep2() {
				slideDown1.hide();

				slideDown2.show();
				slideDown1.height(20);
				//刷新数据 
				setTimeout(function() {
					location.reload();
				}, 1000);

			}

			//第三步：刷新完成，回归之前状态 
			function slideDownStep3() {
				slideDown1.hide('slow');
				slideDown2.hide('slow');
			}

			//下滑刷新调用 
			k_touch("content", "y");
			//contentId表示对其进行事件绑定，way==>x表示水平方向的操作，y表示竖直方向的操作 
			function k_touch(contentId, way) {
				var _start = 0,
					_end = 0,
					_content = document.getElementById(contentId);
				_content.addEventListener("touchstart", touchStart, false);
				_content.addEventListener("touchmove", touchMove, false);
				_content.addEventListener("touchend", touchEnd, false);

				function touchStart(event) {
					//var touch = event.touches[0]; //这种获取也可以，但已不推荐使用 

					var touch = event.targetTouches[0];
					if(way == "x") {
						_start = touch.pageX;
					} else {
						_start = touch.pageY;
					}
				}

				function touchMove(event) {
					var touch = event.targetTouches[0];
					if(way == "x") {
						_end = (_start - touch.pageX);
					} else {
						_end = (_start - touch.pageY);
						//下滑才执行操作 
						if(_end < 0) {
							slideDownStep1(_end);
						}
					}

				}

				function touchEnd(event) {

					if(_end > 0) {
						console.log("左滑或上滑  " + _end);
					} else if(_end < 0) {
						console.log("右滑或下滑" + _end);
						slideDownStep2();

						//刷新成功则 
						//模拟刷新成功进入第三步 
						setTimeout(function() {
							slideDownStep3();
						}, 2500);
					}
				}
			}

			var latitude = '';
			var longitude = '';
			var counter = 2;
			var flag = '';

			$(function() {
				//移动端解决fixed和input获取焦点软键盘弹出影响定位的狗问题 
				$('input[name="hosName"]').bind('focus', function() {
					$('.footer').css('position', 'static');
					$('.head').css({
						'position': 'static',
						'margin-top': '-55px'
					});
					//或者
					$('.main').height($(window).height() + $(window).scrollTop() + 'px');

				}).bind('blur', function() {
					$('.footer').css({
						'position': 'fixed',
						'bottom': '0'
					});
					$('.head').css({
						'position': 'fixed',
						'top': '0',
						'margin-top': '0px'
					});
					//或者
					$('.main').height('auto');

				});

				$(document).bind('orientationchange', function() {
					$('input[name="hosName"]').bind('focus', function() {
						$('.footer').css('position', 'static');
						$('.head').css({
							'position': 'static',
							'margin-top': '-55px'
						});
						//或者
						$('.main').height($(window).height() + $(window).scrollTop() + 'px');
					}).bind('blur', function() {
						$('.footer').css({
							'position': 'fixed',
							'bottom': '0'
						});
						$('.head').css({
							'position': 'fixed',
							'top': '0',
							'margin-top': '0px'
						});
						//或者
						$('.main').height('auto');

					});

					// if(window.orientation==90 || window.orientation==-90){
				});

				//做搜索
				$('input[name="hosName"]').on('focus', function(event) {
					event.preventDefault();
					$(this).addClass('focus');
				});
				$('input[name="hosName"]').on('blur', function() {
					$(this).removeClass('focus');
				});

				$(document).keydown(function(e) { //jquery获取keycode值
					if(e.keyCode.toString() == 13) {
						$("form").submit();
					}
				})

				$(window).scroll(function() {
					/* if ($(document).scrollTop() <= 0) {}*/

					if($(document).scrollTop() >= $(document).height() - $(window).height()) {
						if(flag == 1) {
							return false;
						} else {
							$.ajax({
								type: 'GET',
								async: true,
								url: 'search_kf_hospital.do',
								dataType: 'json',
								data: {
									cp: counter,
									city: getFilterVal().city,
									district: getFilterVal().district,
									auth: getFilterVal().auth,
									sort_key: getFilterVal().sort_key,
									lat: getFilterVal().jd,
									lng: getFilterVal().wd
								},
								beforeSend: function(XMLHttpRequest) {
									setTimeout(function() {
										$('.showP').html("正在加载....");
									}, 1000);
									//$('.showP').html("正在加载...."); //在后台返回success之前显示loading图标
								},
								success: function(result) {
									if(result.data.length == 0) {
										setTimeout(function() {
											$('.showP').html("没有更多数据");
											flag = 1;
										}, 1000);
										//$('.showP').html("没有更多数据");
										return false;
									};
									var str = '';
									var resultObj = result.data;
									var str = xrNum(resultObj);

									$('input[name="cp"]').val(counter);
									counter++;
									// 为了测试，延迟1秒加载
									setTimeout(function() {
										$('.hosList').append(str);
										// 每次数据加载完，必须重置
									}, 1000);
								},
								error: function(xhr, type) {
									//  alert('加载错误!');
								}
							});

						}

					}
				});

				//去掉alert的网址
				window.alert = function(name) {
					var iframe = document.createElement("IFRAME");
					iframe.style.display = "none";
					iframe.setAttribute("src", 'data:text/plain,');
					document.documentElement.appendChild(iframe);
					window.frames[0].window.alert(name);
					iframe.parentNode.removeChild(iframe);
				}

				/*
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
        	*/

				var wx_obj = ${
					wx_config
				};

				//获取当前的地理位置

				wx.config({
					debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。    
					appId: wx_obj.appId, // 必填，公众号的唯一标识    
					timestamp: wx_obj.timestamp, // 必填，生成签名的时间戳    
					nonceStr: wx_obj.nonceStr, // 必填，生成签名的随机串    
					signature: wx_obj.signature, // 必填，签名，见附录1   
					jsApiList: ['checkJsApi',
							'chooseImage',
							'previewImage',
							'uploadImage',
							'downloadImage',
							'getNetworkType', //网络状态接口  
							'openLocation', //使用微信内置地图查看地理位置接口  
							'getLocation' //获取地理位置接口  
						] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2    
				});

				wx.ready(function() {

					wx.getLocation({
						type: 'wgs84', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
						success: function(res) {
							latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
							longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
							var speed = res.speed; // 速度，以米/每秒计
							var accuracy = res.accuracy; // 位置精度
						}
					});

				});

				//通过城市id获取区域
				function getArea(cityName) {
					var questURL = 'get_area.do';
					var questArr = {
						city: cityName
					};
					$.post(questURL, questArr, function(result) {
						if(result) {
							var obj = $.parseJSON(result);
							//清空区域
							$('.area').html('');
							var str = '';
							for(var i = 0; i < obj.data.length; i++) {
								str += '<li>' + obj.data[i] + '</li>';
							};

							$('.area').html(str);

						} else {
							alert("没有区域");
							return false;
						}

						$('.area').css('display', 'block');

					});

				};

				//点击城市获取区域
				$('.bg ul.city li').live('touchend', function(event) {
					event.preventDefault();
					$(this).addClass('active').siblings().removeClass('active');

					//请求区域
					//var id=$(this).find('a').attr('data-id');
					var cityName = $(this).html();
					getArea(cityName);

				});

				//获取城市
				function getCity() {

					var questURL = "get_city.do";
					$.post(questURL, function(result) {
						if(result) {
							var obj = $.parseJSON(result);
							var city = $('.bg').find('.city');
							var str = '';

							for(var i = 0; i < obj.data.length; i++) {
								str += '<li >' + obj.data[i] + '</li>';
							};

							city.html(str);
							//先默认渲染第一个数据
							$('.city li:first').addClass('active');
							var cityName = $('.city li:first').html();

							getArea(cityName);

							$('.bg').slideDown();

						} else {
							alert("没数据");
							return false;

						}
					});

				};

				//点击区域
				$('.bg .area li').live('touchend', function(event) {
					event.preventDefault();
					event.stopPropagation();
					var city = $('.city').find('.active').html();
					var areaName = $(this).html();
					var obj = $('.footer .span1');
					obj.attr('data-area', areaName);
					obj.attr('data-city', city);
					getHosNum();

					$('.bg').slideUp();

				});

				$('.footer span').on('touchend', function() {

					var status = $(this).attr('data-status');
					var pre_status = status;

					var className = $(this).attr('class');
					//先判断span3
					switch(className) {
						case 'span1':

							if(status == "0") {
								$(this).attr('data-status', 1);
								//调用城市
								getCity();
								changeColor($(this), 'span1');
								return;
							} else if(status == "1") {
								$(this).attr('data-status', 0);
								$(this).find('b').html('地区');
							};
							break;
						case 'span2':
							if(status == 0) {
								$(this).attr('data-status', '1');
							} else {
								$(this).attr('data-status', '0');
							};
							break;
						case 'span3':
							if(status == 0) {
								$(this).attr('data-status', '1');
								$('.span4').attr('data-status', '0');

							} else {
								$(this).attr('data-status', '0');
							};
							break;
						case 'span4':
							if(status == 0) {
								$(this).attr('data-status', '1');
								$('.span3').attr('data-status', '0');
							} else {
								$(this).attr('data-status', '0');
							};
							break;
					};

					getHosNum();
					var obj = $(this);
					changeColor(obj, className);

				});

				//改变图片背景
				function changeColor(obj, className) {

					var srcStr = obj.find('img').attr('src');
					var imgName = srcStr.substring(srcStr.lastIndexOf("/") + 1, srcStr.lastIndexOf("."));
					var preStr = "assets/image/turn_hospital/footer/";

					if(imgName.indexOf('checked') > 0) { //取消

						var newName = imgName.substring(0, imgName.lastIndexOf("_"));
						obj.find('img').attr('src', preStr + newName + '.png');
						obj.find('b').css('color', '#666666');

						if(className == "span3") {
							obj.find('b').html('距离排序');
						} else if(className == "span4") {
							obj.find('b').html('床位');
						}

					} else { //选中
						obj.find('img').attr('src', preStr + imgName + '_checked.png');
						obj.find('b').css('color', '#1eae6e');

						if(className == "span3") {
							obj.find('b').html('距离近->远');
							obj.siblings('.span4').find('b').css('color', '#666666');
							obj.siblings('.span4').find('img').attr('src', 'assets/image/turn_hospital/footer/bed.png');
						} else if(className == "span4") {
							obj.find('b').html('床位多->少');
							obj.siblings('.span3').find('b').css('color', '#666666');
							obj.siblings('.span3').find('img').attr('src', 'assets/image/turn_hospital/footer/distance.png');
						}
					}

				};

			});

			//渲染在页面上的数据
			function xrNum(resultObj) {
				var str = '';
				$.each(resultObj, function(i, o) {
					var carPass = '';
					var src = '';
					var awarding = '';
					if(o.pss == true) {
						carPass += '<span class="first addRight">转运车接送</span>';
					}

					$.each(o.departments, function(j, car) {
						// carPass+='<span '+ j==0?'class="first"':''+'>car</span>';
						carPass += '<span class="addRight">' + car + '</span>';
					});

					if(o.hospital_image.middle != "") {
						src = o.hospital_image.middle;
					} else {
						src = "assets/image/hos.jpg";
					}

					if(o.auth == true) {
						awarding = '<i class="medal"></i>';
					}
					str += '<li><a href="ward_list.html?hosId=' + o.hospital_id + '">' +
						awarding +
						'<img src="' + src + '"/>' +
						'<p class="hosName">' + o.hospital_name + '</p>' +
						'<p class="distance">距离您' + o.distance + '公里-' + o.district + '</p>' +
						'<p class="cara">' + carPass + '</p>' +
						' </a></li>';

				});
				return str;

			};

			//获取筛选值
			function getFilterVal() {
				var obj = $('.footer');

				//获得区域的状态
				var area = obj.find('.span1').attr('data-status');
				if(area == 1) {
					//获取城市和区域
					var district = obj.find('.span1').attr('data-area');
					var city = obj.find('.span1').attr('data-city');
					$('.span1 b').html(district);
				} else {
					var district = '';
					var city = '';
				};

				//获得奖励
				var awarding = obj.find('.span2').attr('data-status');
				if(awarding == 1) {
					var auth = true;
				} else {
					var auth = false;
				}

				var sort_key = '';
				//获得床位数
				var bedNum = obj.find('.span4').attr('data-status');

				//获得距离
				var distance = obj.find('.span3').attr('data-status');
				//获得精度和纬度
				var j = latitude;
				var w = longitude;

				if(bedNum == 1) {
					var sort_key = "bednumber";
				} else if(distance == 1) {
					var sort_key = "geo";
				} else {
					var sort_key = "";
				}

				var result = {
					'city': city,
					'district': district,
					'sort_key': sort_key,
					'auth': auth,
					'j': j,
					'w': w,
					'sort_key': sort_key
				};
				return result;

			};

			//根据条件获取数据
			function getHosNum() {
				var cp = $('input[name="cp"]').val();
				var filterVal = getFilterVal();
				var city = filterVal.city;
				var district = filterVal.district;
				var sort_key = filterVal.sort_key;
				var auth = filterVal.auth;
				var jd = filterVal.j;
				var wd = filterVal.w;
                var selectArea=$('input[name="selectArea"]');
//				$(district) {
//					selectArea.val(district);
//					selectArea.attr('data-flag', 'area');
//				} else {
//					selectArea.val(city);
//					selectArea.attr('data-flag', 'city');
//				}
				//还差个省和医院的个数
				selectArea.attr("data-count",'');
				selectArea.attr("data-province",'');
				selectArea.attr("data-city",city);
				selectArea.attr("data-area",district);

				var questURL = 'search_kf_hospital.do';
				var questArr = {
					city: city,
					district: district,
					auth: auth,
					sort_key: sort_key,
					lat: jd,
					lng: wd

				};

				$.post(questURL, questArr, function(result) {
					if(result) {

						//置空列表
						$('.main ul.hosList').empty();
						var dataObj = eval("(" + result + ")");
						var str = xrNum(dataObj.data);
						$('.main ul.hosList').html(str);

						//判断页面数据的个数
						counter = 2;
						if($('.hosList li').length < 10) {
							$('.showP').html("没有更多数据");
							flag = 1;
						} else if($('.hosList li').length >= 10) {
							$('.showP').html("上拉加载更多......");
							flag = '';
						}

					} else {
						alert("获取失败");
						location.reload();
					};

				});

			};

			//下拉加载页面

			$(function() {
				//fy();
			});
		</script>
	</body>

</html>