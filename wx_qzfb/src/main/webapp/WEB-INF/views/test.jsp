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
        <title>妇科的科室列表</title>
        <meta name="description" content="">
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <link rel="stylesheet" href="assets/css2/idangerous.swiper.css">
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
	    <script src="assets/script/productAdmin/jquery.min.js"></script>
        <script src="assets/script/productAdmin/vendor/modernizr-2.6.2.min.js"></script>
        <script src="assets/script/productAdmin/vendor/idangerous.swiper-2.1.min.js"></script>     
<style>
*{margin:0;padding:0;}
body{font-size:16px;background:#EEF1F3; padding-top:10px;}
h3{margin:0;padding:0;}
.halfPxBorderBottom{
	background-image: -webkit-linear-gradient(bottom,#dedede 50%,transparent 50%); 
	background-image: linear-gradient(bottom,#dedede 50%,transparent 50%); 
	background-size:  100% 1px; 
	background-repeat: no-repeat; 
	background-position: bottom right;
}
.halfPxBorderTop{
	background-image: -webkit-linear-gradient(top,#fafafa 50%,transparent 50%); 
	background-image: linear-gradient(top,#fafafa 50%,transparent 50%); 
	background-size:  100% 1px; 
	background-repeat: no-repeat; 
	background-position: top right; 
}
section{ background-color:#fff; margin-bottom:10px; padding:0 10px; padding-bottom:10px;}
section h3{ height:40px; line-height:40px; font-size:16px; color:#41b2a6;text-shadow:0 1px 0 hsla(0,0%,100%,0.75);}
.docList{ padding-bottom:15px;}
.docTitle,.depTitle{ font-size:14px; line-height:40px;}
.doctor{ width:60px; overflow:hidden; float:left; padding-right:15px; font-size:13px;}
.doctor img{ width:60px; height:60px; border-radius:30px;}
.doctor span{ display:block; text-align:center; padding-top:5px;}
.doctor .line1{ color:#999; font-size:12px; padding-top:2px;}
.depInfo{ font-size:14px; line-height:2em;}
.submit{ background:#41b2a6; color:#fff; display:block; text-align:center; text-decoration:none; height:40px; line-height:40px; font-size:16px; margin-top:10px;}
.swiper-wrapper{ width:1000px;height:101px;overflow:hidden;}
</style>
</head>
<body>
<c:if test="${nolist==true}">没有门诊</c:if>
<c:forEach items="${depList}" var="dep">
	<section class="halfPxBorderBottom">
	    <h3 class="halfPxBorderBottom">妇科专家门诊1</h3>
	    <div class="docTitle">医生团队</div>
	    <div class="docList halfPxBorderBottom swiper-container">
	        <div class="swiper-wrapper">
	        <c:if test="${nodoc==true}">当前没医生</c:if>
	        <c:forEach items="docList">
	            <div class="doctor swiper-slide">
	            <img src="assets/image/productAdmin/toux.jpg">
	            <span>梁海杰</span>
	            <span class="line1">主任医师</span>
	        </div>
	        </c:forEach>
	        <div style="clear:both"></div>
	        </div>
	    </div>
	    <div class="depTitle">科室介绍</div>
	    <div class="depInfo">北京协和医院妇产科专业分组：产科、妇科常规、妇科肿瘤、生殖内分泌、计划生育、绒癌。各专业组均有教授为组长,并请经验丰富的著名专家作顾问；已经形成了各自的特点，有着明确的研究方向；都有独到的建树。</div>
	    <a href="#" class="submit">点击挂号</a>
	</section>

</c:forEach>
<section class="halfPxBorderBottom">
    <h3 class="halfPxBorderBottom">妇科专家门诊1</h3>
    <div class="docTitle">医生团队</div>
    <div class="docList halfPxBorderBottom swiper-container">
        <div class="swiper-wrapper">
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">副主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">副主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div style="clear:both"></div>
        </div>
    </div>
    <div class="depTitle">科室介绍</div>
    <div class="depInfo">北京协和医院妇产科专业分组：产科、妇科常规、妇科肿瘤、生殖内分泌、计划生育、绒癌。各专业组均有教授为组长,并请经验丰富的著名专家作顾问；已经形成了各自的特点，有着明确的研究方向；都有独到的建树。</div>
    <a href="#" class="submit">点击挂号</a>
</section>
<section class="halfPxBorderBottom">
    <h3 class="halfPxBorderBottom">妇科专家门诊1</h3>
    <div class="docTitle">医生团队</div>
    <div class="docList halfPxBorderBottom swiper-container">
        <div class="swiper-wrapper">
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">副主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">副主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div style="clear:both"></div>
        </div>
    </div>
    <div class="depTitle">科室介绍</div>
    <div class="depInfo">北京协和医院妇产科专业分组：产科、妇科常规、妇科肿瘤、生殖内分泌、计划生育、绒癌。各专业组均有教授为组长,并请经验丰富的著名专家作顾问；已经形成了各自的特点，有着明确的研究方向；都有独到的建树。</div>
    <a href="#" class="submit">点击挂号</a>
</section>
<section class="halfPxBorderBottom">
    <h3 class="halfPxBorderBottom">妇科专家门诊1</h3>
    <div class="docTitle">医生团队</div>
    <div class="docList halfPxBorderBottom swiper-container">
        <div class="swiper-wrapper">
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">副主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">副主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div class="doctor swiper-slide">
            <img src="assets/image/productAdmin/toux.jpg">
            <span>梁海杰</span>
            <span class="line1">主任医师</span>
        </div>
        <div style="clear:both"></div>
        </div>
    </div>
    <div class="depTitle">科室介绍</div>
    <div class="depInfo">北京协和医院妇产科专业分组：产科、妇科常规、妇科肿瘤、生殖内分泌、计划生育、绒癌。各专业组均有教授为组长,并请经验丰富的著名专家作顾问；已经形成了各自的特点，有着明确的研究方向；都有独到的建树。</div>
    <a href="#" class="submit">点击挂号</a>
</section>
<script>
$('.swiper-container').each(function(){
	var mySwiper = $(this).swiper({
	    grabCursor: true,
	    slidesPerView: "auto"
	});
});
</script>
  </body>
</html>