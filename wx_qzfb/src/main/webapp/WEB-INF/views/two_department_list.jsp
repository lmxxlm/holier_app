<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang=”zh”> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${firstDepartmentName}的科室列表</title>
    <meta name="description" content="">
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="format-detection" content="telephone=no"/>
    <meta name="format-detection" content="email=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <link rel="stylesheet" href="assets/css2/idangerous.swiper.css">
    <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
    <link rel="stylesheet" href="assets/css/productAdmin/main.css">
    <script src="assets/script/productAdmin/jquery.min.js"></script>
    <script src="assets/script/productAdmin/vendor/modernizr-2.6.2.min.js"></script>
    <script src="assets/script/productAdmin/vendor/idangerous.swiper-2.1.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            font-size: 16px;
            background: #EEF1F3;
            padding-top: 10px;
        }

        h3 {
            margin: 0;
            padding: 0;
        }

        .halfPxBorderBottom {
            background-image: -webkit-linear-gradient(bottom, #dedede 50%, transparent 50%);
            background-image: linear-gradient(bottom, #dedede 50%, transparent 50%);
            background-size: 100% 1px;
            background-repeat: no-repeat;
            background-position: bottom right;
        }

        .halfPxBorderTop {
            background-image: -webkit-linear-gradient(top, #fafafa 50%, transparent 50%);
            background-image: linear-gradient(top, #fafafa 50%, transparent 50%);
            background-size: 100% 1px;
            background-repeat: no-repeat;
            background-position: top right;
        }

        section {
            background-color: #fff;
            margin-bottom: 10px;
            padding: 0 10px;
            padding-bottom: 10px;
        }

        section h3 {
            height: 40px;
            line-height: 40px;
            font-size: 16px;
            color: #41b2a6;
            text-shadow: 0 1px 0 hsla(0, 0%, 100%, 0.75);
        }

        .docList {
            padding-bottom: 15px;
        }

        .docTitle, .depTitle {
            font-size: 14px;
            line-height: 40px;
        }

        .doctor {
            width: 60px;
            overflow: hidden;
            float: left;
            padding-right: 15px;
            font-size: 13px;
        }

        .doctor img {
            width: 60px;
            height: 60px;
            border-radius: 30px;
        }

        .doctor span {
            display: block;
            text-align: center;
            padding-top: 5px;
        }

        .doctor .line1 {
            color: #999;
            font-size: 12px;
            padding-top: 2px;
        }

        .depInfo {
            font-size: 14px;
            line-height: 2em;
        }

        .submit {
            background: #41b2a6;
            color: #fff;
            display: block;
            text-align: center;
            text-decoration: none;
            height: 40px;
            line-height: 40px;
            font-size: 16px;
            margin-top: 10px;
        }

        .swiper-wrapper {
            width: 1000px;
            height: 101px;
            overflow: hidden;
        }

        .submit {
            border-radius: 0.5em;
        }

        /*模态框*/
        #bg {
            width: 100%;
            height: 100%;
            opacity: 0.8; /*设置背景色透明度,1为完全不透明,IE需要使用filter:alpha(opacity=80);*/
            filter: alpha(opacity=80);
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 2;
            background: silver;
        }

        #modal {
            display: none;
            border: 1px solid #41b2a6;
            border-radius: 1em;
            width: 100%;
            position: fixed; /*让节点脱离文档流,我的理解就是,从页面上浮出来,不再按照文档其它内容布局*/
            /* top:24%;/*节点脱离了文档流,如果设置位置需要用top和left,right,bottom定位*/
            bottom: 0px;
            z-index: 3; /*个人理解为层级关系,由于这个节点要在顶部显示,所以这个值比其余节点的都大*/
            background: white;

        }

        /*模态框标题*/

        #modal h4, #modal1 h4 {
            diaplay: inline-block;
            width: 100%;
            text-align: center;
        }

        #modal p, #modal1 p {
            margin: 1em;
            text-indent: 2em;
            color: #7B7B7B;
            font-size: 0.95em;
            line-height: 1.5em;
        }

        /*关闭*/
        #modal img {
            width: 1.8em;
            position: absolute;
            top: 0.8em;
            right: 1em;
            color: #fff;
        }
    </style>
</head>
<body>
<c:if test="${nolist==true}">没有门诊</c:if>
<c:forEach items="${secondDepartmentList}" var="sd">
    <section class="halfPxBorderBottom">
        <input name="departmentCode" value="${sd.departmentCode}" type="hidden">
        <h3 class="halfPxBorderBottom">${sd.departmentName}</h3>
        <div class="docTitle">专家团队</div>
        <div class="docList halfPxBorderBottom swiper-container">
            <div class="swiper-wrapper">
                <input name="noDocList" value="${empty sd.doctorList}" type="hidden">
                <c:if test="${empty sd.doctorList}">暂无医生</c:if>
                <c:forEach items="${sd.doctorList}" var="doctor">
                    <div class="doctor swiper-slide">
                        <input type="hidden" name="doctorCode" value="${doctor.doctorCode}">
                        <!-- <img src="assets/image/productAdmin/toux.jpg">  -->
                        <img src="${doctor.doctorImage}">
                        <span>${doctor.doctorName}</span>
                        <span class="line1">${doctor.doctorTitle}</span>
                    </div>
                </c:forEach>
                <div style="clear:both"></div>
            </div>
        </div>
        <div class="depTitle">科室介绍</div>
        <div class="depInfo">${sd.departmentIntro}<span class="detail" style="color:red;font-size:0.9em;">查看更多</span>
        </div>
        <input type="hidden" name="depInfo" value="${sd.departmentIntro}">
        <a href="#" class="submit">点击挂号</a>
    </section>
</c:forEach>



<!-- 科室门诊 -->
<div id="bg">
</div>

<div id="modal">
    <h4>科室介绍</h4><span><img src="assets/image/productAdmin/order/close1.png"></span>
    <p>
        发快递顺丰快递师傅，的反馈的司法考试的浪费，发的收款付款的司法考试，开放的时刻富士康，法大师傅大师傅，块豆腐开始大幅，付款的司法考试，了犯得上发射点，了放到沙发上，反倒是开发，疯狂的事发生的，付款的司法考试的。
    </p>
</div>
</body>

<script>
    //点击跳转
    $('.swiper-container').each(function () {
        var mySwiper = $(this).swiper({
            grabCursor: true,
            slidesPerView: "auto"
        });
    });

    $('section').each(function () {
        var noDocList = $(this).find('input[name="noDocList"]').val();
        if (noDocList == 'true') {
            $(this).find('.docTitle').hide();
            $(this).find('.docList').hide();
        } else {
            $(this).find('.docTitle').show();
            $(this).find('.docList').show();
        }
    });

    function nextDate() {
        var start = new Date();
        start.setDate(start.getDate() + 1);
        var str = "" + start.getFullYear() + "-";
        str += (start.getMonth() + 1) + "-";
        str += start.getDate();
        return str;
    }


    function nowDate() {
        var start = new Date();
        //start.setDate(start.getDate()+1);
        var str = "" + start.getFullYear() + "-";
        str += (start.getMonth() + 1) + "-";
        str += start.getDate();
        return str;
    }


    $('.submit').on('click', function () {
        //链接跳转
        var departmentCode = $(this).parents('section.halfPxBorderBottom').find('input[name="departmentCode"]').val();
        var startDate = nowDate();
        var endDate = nowDate();
        var strHref = "outpatient.html?departmentCode=" + departmentCode + "&startDate=" + startDate + "&endDate=" + endDate;
        $(this).attr('href', strHref);
    });
    /*进入详情页*/
    $('.doctor').on('click', function () {
        var departmentCode = $(this).parents('section.halfPxBorderBottom').find('input[name="departmentCode"]').val();
        var startDate = nowDate();
        var endDate = nowDate();
        var doctorCode = $(this).find('input[name="doctorCode"]').val();
        var from = '1';
        window.location.href = "docDetail.html?doctorCode=" + doctorCode + "&departmentCode=" + departmentCode + "&startDate=" + startDate + "&endDate=" + endDate + "&from=" + from;
    });


    //科室介绍      文字的显示与隐藏
    $.each($('section'), function (i, o) {
        var depInfo = $(this).find('input[name="depInfo"]').val();
        if (depInfo == "暂无") {
            $(this).find('span.detail').hide();
        } else {
            //截取前40个字
            if (depInfo.length <= 40) {
                $(this).find('span.detail').hide();
                $(this).find('span.detail').before(depInfo);
            } else {
                $(this).find('span.detail').before(depInfo.substring(0, 40) + '...');
            }
        }

    });

    $('span.detail').on('click', function () {
        var depInfo = $(this).parents('section').find('input[name="depInfo"]').val();
        $('#modal p').html(depInfo);

    });

    //点击叉和背景关掉模态框
    $('#modal img,#bg').on('click', function (e) {
        e.preventDefault();
        $('#modal').slideUp('500', function () {
            $('#bg').hide();
        });
    });
</script>
</body>
</html>
