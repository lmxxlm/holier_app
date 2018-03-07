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
    <meta charset="UTF-8">
    <meta name = "viewport" content= "width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name = "apple-mobile-web-app-capable" content= "yes" />
    <meta name = "apple-mobile-web-app-status-bar-style" content= "black" />
    <meta name = "format-detection" content= "telephone=no" >
    <script src="../assets/script/productAdmin/jquery.min.js"></script>
    <title>HTML5 调用手机拍照并压缩上传</title>
    <style>
     	html{height:100%}  
		body{height:100%;margin:0px;padding:0px}  
		#container{height:100%} 
    </style>
</head>
<body>
<div id="container"></div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=QWAs2agSioUSrbRoxKpu7Zgb0OZVqtGc"></script>
<!-- 要用到 下面js中的 BmapLib对象 -->
<script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.4/src/SearchInfoWindow.js"></script>
<script type="text/javascript"> 
	var map = new BMap.Map("container");          // 创建地图实例  
	var point = new BMap.Point(116.404, 39.915);  // 创建点坐标  
	map.centerAndZoom(point, 15);
	
	// 定义自定义覆盖物的构造函数  
	function SquareOverlay(center, length, color){    
	 this._center = center;    
	 this._length = length;    
	 this._color = color;    
	}    
	// 继承API的BMap.Overlay    
	SquareOverlay.prototype = new BMap.Overlay();
	
	// 实现初始化方法  
	SquareOverlay.prototype.initialize = function(map){    
	// 保存map对象实例   
	 this._map = map;        
	 // 创建div元素，作为自定义覆盖物的容器   
	 var div = document.createElement("div");    
	 div.style.position = "absolute";        
	 // 可以根据参数设置元素外观   
	 div.style.width = this._length + "px";    
	 div.style.height = this._length + "px";    
	 div.style.background = this._color;      
	// 将div添加到覆盖物容器中   
	 map.getPanes().markerPane.appendChild(div);      
	// 保存div实例   
	 this._div = div;      
	// 需要将div元素作为方法的返回值，当调用该覆盖物的show、   
	// hide方法，或者对覆盖物进行移除时，API都将操作此元素。   
	 return div;    
	}
	
	
	// 实现绘制方法   
	SquareOverlay.prototype.draw = function(){    
	// 根据地理坐标转换为像素坐标，并设置给容器    
	 var position = this._map.pointToOverlayPixel(this._center);    
	 this._div.style.left = position.x - this._length / 2 + "px";    
	 this._div.style.top = position.y - this._length / 2 + "px";    
	}
	
	
	
	
	
	var polyline = new BMap.Polyline([    
          new BMap.Point(116.399, 39.910),    
          new BMap.Point(116.405, 39.920)    
	        ],    
	        {strokeColor:"yellow", strokeWeight:6, strokeOpacity:0.5}    
	       );    
	       map.addOverlay(polyline);
	
	//弹出的信息框
	var opts = {    
			 width : 250,     // 信息窗口宽度    
			 height: 100,     // 信息窗口高度    
			 title : "你大爷的破地图！"  // 信息窗口标题   
			}    
	var infoWindow = new BMap.InfoWindow("啦啦啦啦啦啦。。。。。。", opts);  // 创建信息窗口对象    
	map.openInfoWindow(infoWindow, map.getCenter());      // 打开信息窗口
	
	var marker = new BMap.Marker(point);        // 创建标注    
	map.addOverlay(marker);                     // 将标注添加到地图中
	
	marker.addEventListener("click", function(){    
		 alert("您点击了标注");    
		});
	
	//对于标注可以进行拖拽
	marker.enableDragging();    
	marker.addEventListener("dragend", function(e){    
	 alert("当前位置：" + e.point.lng + ", " + e.point.lat);    
	})
	
	//内存释放
	map.removeOverlay(marker);    
    //marker.dispose(); // 1.1 版本不需要这样调用
	
	//自定义图标
	function addMarker(point, index){  // 创建图标对象   
	var myIcon = new BMap.Icon("../assets/image/eg/hos_1.jpg", new BMap.Size(23, 25), {    
	// 指定定位位置。   
	// 当标注显示在地图上时，其所指向的地理位置距离图标左上    
	// 角各偏移10像素和25像素。您可以看到在本例中该位置即是   
	   // 图标中央下端的尖角位置。    
	   offset: new BMap.Size(10, 25),    
	   // 设置图片偏移。   
	   // 当您需要从一幅较大的图片中截取某部分作为标注图标时，您   
	   // 需要指定大图的偏移位置，此做法与css sprites技术类似。    
	   imageOffset: new BMap.Size(0, 0 - index * 25)   // 设置图片偏移    
	 });      
	// 创建标注对象并添加到地图   
	 var marker = new BMap.Marker(point, {icon: myIcon});    
	 map.addOverlay(marker);    
	}    
	// 随机向地图添加10个标注    
	var bounds = map.getBounds();    
	var lngSpan = bounds.maxX - bounds.minX;    
	var latSpan = bounds.maxY - bounds.minY;    
	for (var i = 0; i < 10; i ++) {    
	 var point = new BMap.Point(bounds.minX + lngSpan * (Math.random() * 0.7 + 0.15),    
	                            bounds.minY + latSpan * (Math.random() * 0.7 + 0.15));    
	 addMarker(point, i);    
	}
	

	
	//var opts = {type: BMAP_NAVIGATION_CONTROL_SMALL}    
	//map.addControl(new BMap.NavigationControl(opts));
	//map.addControl(new BMap.NavigationControl());//平移缩放控件
	
	var opts = {offset: new BMap.Size(150, 5)}  //可以设置比例尺这个控件在页面上的位置  
	map.addControl(new BMap.ScaleControl(opts));//比例尺
	//map.addControl(new BMap.ScaleControl()); //比例尺
	
	map.addControl(new BMap.OverviewMapControl());//缩略地图控件
	map.addControl(new BMap.MapTypeControl()); //地图类型控件
	map.addControl(new BMap.CopyrightControl());//版权控件，默认位于地图左下方。显示是“百度地图”
	map.addControl(new BMap.GeolocationControl());//定位控件，针对移动端开发，默认位于地图左下方。   “点击能获取到当前的你所在的地理位置”
	map.setCurrentCity("北京"); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用
	
	//自定义控件
	
	// 定义一个控件类，即function    
	function ZoomControl(){    
	    // 设置默认停靠位置和偏移量  
	    this.defaultAnchor = BMAP_ANCHOR_TOP_LEFT;    
	    this.defaultOffset = new BMap.Size(10, 10);    
	}    
	// 通过JavaScript的prototype属性继承于BMap.Control   
	ZoomControl.prototype = new BMap.Control();
	
	// 自定义控件必须实现initialize方法，并且将控件的DOM元素返回   
	// 在本方法中创建个div元素作为控件的容器，并将其添加到地图容器中   
	ZoomControl.prototype.initialize = function(map){    
	// 创建一个DOM元素   
	 var div = document.createElement("div");    
	// 添加文字说明    
	 div.appendChild(document.createTextNode("放大2级"));    
	 // 设置样式    
	 div.style.cursor = "pointer";    
	 div.style.border = "1px solid gray";    
	 div.style.backgroundColor = "white";    
	 // 绑定事件，点击一次放大两级    
	 div.onclick = function(e){  
	  map.zoomTo(map.getZoom() + 2);    
	 }    
	 // 添加DOM元素到地图中   
	 map.getContainer().appendChild(div);    
	 // 将DOM元素返回  
	 return div;    
	 }
	
	// 创建控件实例    
	var myZoomCtrl = new ZoomControl();
	
	map.addControl(myZoomCtrl);
	
	
	/*
	window.setTimeout(function(){  
	    map.panTo(new BMap.Point(116.409, 39.918));    
	}, 2000);// 初始化地图，设置中心点坐标和地图级别  
	*/
</script>  
   
</body>
</html>
