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
var map = new BMap.Map("container");    // 创建地图实例  
var point = new BMap.Point(120.2, 30.3);// 创建点坐标
map.centerAndZoom(point, 14);                 // 初始化地图，设置中心点坐标和地图级别  

/*
var local = new BMap.LocalSearch(map, {
  renderOptions:{map: map}
});
local.searchInBounds("医院", map.getBounds());

map.addEventListener("dragend",function(){
  map.clearOverlays();
  local.searchInBounds("医院", map.getBounds());
});
*/

/**
 *  缩放控件
 */
var opts = {type: BMAP_NAVIGATION_CONTROL_LARGE}    
map.addControl(new BMap.NavigationControl(opts));

var customLayer=new BMap.CustomLayer({  
    geotableId: 157295,   
    q: '', //检索关键字  
    tags: '', //空格分隔的多字符串  
    filter: '' //过滤条件,参考http://developer.baidu.com/map/lbs-geosearch.htm#.search.nearby  
});
map.addTileLayer(customLayer);
customLayer.addEventListener('onhotspotclick',callback);//单击图层事件  

function callback(e)//单击热点图层  
{  
  var customPoi = e.customPoi,  //获取poi对象  
            str = [];  
  str.push("address = " + customPoi.address);  
  str.push("title = " + customPoi.title);  
  var content = '<p style="width:280px;margin:0;line-height:20px;">地址：' + customPoi.address + '<br>系统自带名称：' + customPoi.title + '<br>自定义name：'+customPoi.name+'</p>';

  var searchInfoWindow = new BMapLib.SearchInfoWindow(map, content, {  //带检索的信息窗口  
      title: customPoi.title, //标题  
      width: 290, //宽度  
      height: 40, //高度  
      panel : "panel" , //检索结果面板  
      enableAutoPan : true, //自动平移  
      enableSendToPhone: false, //是否显示发送到手机按钮  
      
      searchTypes :[  
/*
          BMAPLIB_TAB_SEARCH,   //周边检索  
          BMAPLIB_TAB_TO_HERE,  //到这里去  
          BMAPLIB_TAB_FROM_HERE //从这里出发  
*/
      ] 
  	  
  });  
  var point_003 = new BMap.Point(customPoi.point.lng, customPoi.point.lat);  
  map.centerAndZoom(point_003, 14);  
  searchInfoWindow.open(point_003);
  console.log(searchInfoWindow);
  //map.openInfoWindow(searchInfoWindow, map.getCenter())
//}  
 
}
</script>  
<!-- 
    谷歌地图
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script>
var x=document.getElementById("demo");
function getLocation()
  {
  if (navigator.geolocation)
    {
    navigator.geolocation.getCurrentPosition(showPosition,showError);
    }
  else{x.innerHTML="Geolocation is not supported by this browser.";}
  }

function showPosition(position)
  {
  lat=position.coords.latitude;
  lon=position.coords.longitude;
  latlon=new google.maps.LatLng(lat, lon)
  mapholder=document.getElementById('mapholder')
  mapholder.style.height='250px';
  mapholder.style.width='500px';

  var myOptions={
  center:latlon,zoom:14,
  mapTypeId:google.maps.MapTypeId.ROADMAP,
  mapTypeControl:false,
  navigationControlOptions:{style:google.maps.NavigationControlStyle.SMALL}
  };
  var map=new google.maps.Map(document.getElementById("mapholder"),myOptions);
  var marker=new google.maps.Marker({position:latlon,map:map,title:"You are here!"});
  }

function showError(error)
  {
  switch(error.code) 
    {
    case error.PERMISSION_DENIED:
      x.innerHTML="User denied the request for Geolocation."
      break;
    case error.POSITION_UNAVAILABLE:
      x.innerHTML="Location information is unavailable."
      break;
    case error.TIMEOUT:
      x.innerHTML="The request to get user location timed out."
      break;
    case error.UNKNOWN_ERROR:
      x.innerHTML="An unknown error occurred."
      break;
    }
  }
</script>
 -->

</body>
</html>
