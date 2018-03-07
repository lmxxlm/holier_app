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
<title>手机端幻灯片</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no"/>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="stylesheet" href="../assets/css/public.css">

<style>
#banner { position:relative;}
.banner-box { position:relative; height:100%; margin:0 auto; overflow:hidden}
.banner-show { position:absolute; width:100%; min-height:160px; left:0}
.banner-show li { position:relative; float:left;}
.banner-show img { width:100%; height:100%;}

.banner-tab { width:100%; height:26px; background:rgba(0,0,0,0.5); left:0; bottom:0; position:absolute}
.banner-tab p { position:absolute; height:13px; line-height:13px; font-size:0.8125rem; top:6px; left:12px; color:#fff}
.banner-tab ul { position:absolute; height:7px; top:10px; right:5px;}
.banner-tab li { position:relative; float:left; width:7px; height:7px; background:rgba(255,255,255,0.7); border-radius:3px; margin-right:5px; cursor:pointer}
.banner-tab .active { background:#007edf}

</style>
</head>

<body>
<div id="banner">
	<div class="banner-box" id="banner-box">
    	<ul class="banner-show">
        	<li data-t="1111"><a href=""><img src="../assets/image/eg/hos_1.jpg"></a></li>
            <li data-t="2222"><a href=""><img src="../assets/image/eg/hos_2.jpg"></a></li>
            <li data-t="3333"><a href=""><img src="../assets/image/eg/hos_3.jpg"></a></li>
            <li data-t="4444"><a href=""><img src="../assets/image/eg/hos_4.jpg"></a></li>
            <li data-t="5555"><a href=""><img src="../assets/image/eg/hos_5.jpg"></a></li>
        </ul>
        <div class="banner-tab"><p>1111</p><ul><li class="active"></li><li></li><li></li><li></li><li></li></ul></div>
    </div>
</div>
</body>
<script src="../assets/script/productAdmin/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var iNow = 0, index = 1, nStartX = 0;
	var oBanner = document.getElementById('banner-box');
	bannerShow();
	$(window).resize(function(){
		bannerShow();
	});

	oBanner.addEventListener('touchstart', function(event) {
		event.preventDefault();
		nStartX = event.targetTouches[0].pageX ;
	}, false);
	
	oBanner.addEventListener('touchend', function(event) {
		event.preventDefault();
		var mw = $('.banner-show li').width(); // 获取可视区域宽度
		var _l = mw + $('.banner-show').position().left%mw, _w = mw/2, _m = $('.banner-show li').length - 1;
		alert(_l);
		var ml = $('.banner-show').position().left; //这里要重新获取left值
		if(_l <= _w){ //中点判断
			ml = ml - _l
		}else{
			ml = ml + (mw - _l)
		}
		if(ml >= 0){
			ml = 0;
		}else if (ml <= -mw * _m){
			ml = -mw * _m;
		}
		$('.banner-show').animate({'left': ml}, 200);
		var _now = parseInt(-ml/mw);
		$('.banner-tab li').eq(_now).addClass('active').siblings('li').removeClass('active');
		$('.banner-tab p').html($('.banner-show li').eq(_now).attr('data-t'));
	}, false);
	
	oBanner.addEventListener('touchmove', function(event) {
		event.preventDefault();
		var touch = event.targetTouches[0];
		var _l = $('.banner-show').position().left + touch.pageX - nStartX;
		nStartX = touch.pageX;
		$('.banner-show').css('left', _l);
	}, false);
});

//自动切换
function tabBanner(n){
	$('.banner-show').animate({'left': -n * $(window).width()});
	$('.banner-tab li').eq(n).addClass('active').siblings('li').removeClass('active');
	$('.banner-tab p').html($('.banner-tab li').eq(n).attr('data-title'));
}

//自适应
function bannerShow(){
	var _w = $(window).width();
	var _h = _w * 0.5
	$('.banner-box').height(_h);
	$('.banner-show').width(_w * 5);
	$('.banner-show li').width(_w);
};
</script>
</html>

