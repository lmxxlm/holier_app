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
 
<head>
<meta charset="utf-8">
 <title>部落整合</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<style>
/*
.ui-listview .ui-li-has-thumb>img:first-child, .ui-listview .ui-li-has-thumb>.ui-btn>img:first-child, .ui-listview .ui-li-has-thumb .ui-li-thumb {
    position: absolute;
    
    margin:0.5em;
    max-height: 5em;
    max-width: 5em;
}



.ui-listview>li h1, .ui-listview>li h2, .ui-listview>li h3, .ui-listview>li h4, .ui-listview>li h5, .ui-listview>li h6 {
    display: block;
    margin: .01em 0;
}
*/

.ui-listview .ui-li-has-thumb>img:first-child, .ui-listview .ui-li-has-thumb>.ui-btn>img:first-child, .ui-listview .ui-li-has-thumb .ui-li-thumb {
    margin:0.6em;
    max-height: 6em;
    max-width: 6em;
}
.ui-listview>.ui-li-has-thumb>.ui-btn, .ui-listview>.ui-li-static.ui-li-has-thumb {
    padding-left: 7.3em;
    height: 4.5em;
}
.ui-listview>li h1, .ui-listview>li h2, .ui-listview>li h3, .ui-listview>li h4, .ui-listview>li h5, .ui-listview>li h6 {
    display: block;
    margin: .1em 0;
    line-height:2.2em;
}
.ui-page-theme-a .ui-btn.ui-btn-active,
html .ui-bar-a .ui-btn.ui-btn-active,
html .ui-body-a .ui-btn.ui-btn-active,
html body .ui-group-theme-a .ui-btn.ui-btn-active,
html head + body .ui-btn.ui-btn-a.ui-btn-active,
/* Active checkbox icon */
.ui-page-theme-a .ui-checkbox-on:after,
html .ui-bar-a .ui-checkbox-on:after,
html .ui-body-a .ui-checkbox-on:after,
html body .ui-group-theme-a .ui-checkbox-on:after,
.ui-btn.ui-checkbox-on.ui-btn-a:after,
/* Active flipswitch background */
.ui-page-theme-a .ui-flipswitch-active,
html .ui-bar-a .ui-flipswitch-active,
html .ui-body-a .ui-flipswitch-active,
html body .ui-group-theme-a .ui-flipswitch-active,
html body .ui-flipswitch.ui-bar-a.ui-flipswitch-active,
/* Active slider track */
.ui-page-theme-a .ui-slider-track .ui-btn-active,
html .ui-bar-a .ui-slider-track .ui-btn-active,
html .ui-body-a .ui-slider-track .ui-btn-active,
html body .ui-group-theme-a .ui-slider-track .ui-btn-active,
html body div.ui-slider-track.ui-body-a .ui-btn-active {
	background-color: 		#41b2a6/*{a-active-background-color}*/;
	border-color:	 		#3388cc /*{a-active-border}*/;
	color: 					#fff /*{a-active-color}*/;
	text-shadow: 0 /*{a-active-shadow-x}*/ 1px /*{a-active-shadow-y}*/ 0 /*{a-active-shadow-radius}*/ #005599 /*{a-active-shadow-color}*/;
}

</style>
<div data-role="page">
  <div data-role="header" data-position="fixed">
 <!--  <a href="#" class="ui-btn ui-btn-left ui-corner-all ui-shadow ui-icon-home ui-btn-icon-left">主页</a> -->
    <h1>衢州兴趣部落</h1>
  </div>

  <div data-role="main" class="ui-content">
     <ul data-role="listview" data-inset="true">
      <li >
          <a href="http://buluo.qq.com/p/barindex.html?bid=324124" data-transition="fade"  data-theme="z">
              <img src="assets/image/productAdmin/xqbl/qzys.jpg"  > 
	          <h2>衢州月嫂帮</h2>
	          <p>以关爱母婴的健康与幸福为己任,月嫂是一种需要多种知识、急救、饮食等与常识性的工种。</p>
          </a>
      </li>
      <li>
          <a href="http://buluo.qq.com/p/barindex.html?bid=324236" data-transition="flip" >
	          <img src="assets/image/productAdmin/xqbl/qzlm.jpg" >
	          <h2>衢州辣妈帮</h2>
	          <p>辣妈帮，是女性必备的手机移动应用社交平台。</p>
          </a>
      </li>
      <li>
          <a href="http://buluo.qq.com/p/barindex.html?bid=324125" data-transition="flow">
	          <img src="assets/image/productAdmin/xqbl/qzjzh.jpg" >
	          <h2>衢州家长慧</h2>
	          <p>帮助家长了解学生将要面对的问题,让家长联手处理好即将来临的事情。</p>
          </a>
      </li>
      <li>
          <a href="http://buluo.qq.com/p/barindex.html?bid=313419" data-transition="turn">
	          <img src="assets/image/productAdmin/xqbl/qzqz.jpg" >
	          <h2>衢州亲子帮</h2>
	          <p>联结了亲子之间的情感联系,有助于个性的完善和发展。</p>
          </a>
      </li>
      <li>
          <a href="http://buluo.qq.com/mobile/barindex.html?_bid=128&_wv=1027&bid=326707" data-transition="turn">
	          <img src="assets/image/productAdmin/xqbl/qzqz.jpg" >
	          <h2>孕妈家园</h2>
	          <p>孕妈家园是你的专属的怀孕育儿指南,我们致力于提供更方便的知识内容,亲密的工具服务。</p>
          </a>
      </li>
     </ul>
     
  </div>
  
  
  
  
  
  <div data-role="footer" data-position="fixed" style="text-align:center;">
   <p>衢州兴趣部落，健康你我，快乐大家！</p>
  </div>
  
  

</div> 

</body>
</html>
