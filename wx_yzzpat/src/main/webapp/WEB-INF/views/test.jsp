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
        <title>病房列表</title>
        <meta name="description" content="">
	    
        <meta content="width=device-width,initial-scale=1,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        
       
       <script src="assets/script/js/jquery.min.js"></script>
       <link rel="stylesheet" href="assets/css/public.css">
      <script>
        $(document).bind("scroll", srcollEvent);
        $(document).bind("touchstart", startEvent).bind("touchmove", moveEvent).bind("touchcancel", stopEvent).bind("touchend", stopEvent);
        var isScrollStop = true;  //页面是否停止滚动 防止屏幕有滑动但还没到底部就开始加载数据
        var isMoveDown = false;  //防止手指向上滑动屏幕开始加载数据
        var isLoading = false;   //防止异步请求数据未返回到前端的时候重复提交请求
        var isMoved = false;   //手指是否在滑动屏幕 防止出现手指触摸屏幕而没有滑动就加载数据
        var startY = 0;
        var startX = 0;
        function srcollEvent() {
            if ($(document).scrollTop() > 0) {
                isScrollStop = false;
            }
            //如果是左右滑动异步加载数据就用下面的代码
            /*
            if ($(document).scrollLeft() > 0) {
                isScrollStop = false;
            }*/
        }
        function startEvent() {
            startY = event.targetTouches[0].clientY;
            //如果是左右滑动加载数据就用下面的代码
            //startX = event.targetTouches[0].clientX;
            isScrollStop = true;
            isMoved = false;
            isMoveDown = false;
        }
        function moveEvent() {                     
            var Y = event.targetTouches[0].clientY;
            if (startY > Y) {
                isMoveDown = true;                
            } else {
                isMoveDown = false;
            }
            //如果是左右滑动加载数据就用下面的代码
            /*var X = event.targetTouches[0].clientX;
            if (startX > X) {
                isMoveDown = true;
            } else {
                isMoveDown = false;
            }*/
            isMoved = true;
           
        }
        function stopEvent() {
            if (isScrollStop && isMoved && !isLoading && isMoveDown) {
                console.log("分页加载");
                loadData();
            }
        }
        var index = 0;
        function loadData() {   //模拟向后台异步加载数据
            isLoading = true;    //异步加载数据之前先设置为正在等待数据        
            $("table").append("<tr><td>异步加载数据" + index + "</td></tr>");
            $("table").append("<tr><td>异步加载数据" + (index+1) + "</td></tr>");
            $("table").append("<tr><td>异步加载数据" + (index+2) + "</td></tr>");
            $("table").append("<tr><td>异步加载数据" + (index+3) + "</td></tr>");
            $("table").append("<tr><td>异步加载数据" + (index+4) + "</td></tr>");
            $("table").append("<tr><td>异步加载数据" + (index+5) + "</td></tr>");
            //此时数据已返回到前端
            index+=5;
            isLoading = false;
            isMoved = false;
        }
        function sleep() {
            var t1 = new Date();
            var t2 = new Date();
            while ((t2 - t1) < 3000) {
                t2 = new Date();
            }
        }
    </script>
</head>
<body >
    <table style="font-size:100px">
        <tr>
            <td>测试数据1</td>
        </tr>
        <tr>
            <td>测试数据2</td>
        </tr>
        <tr>
            <td>测试数据3</td>
        </tr>
        <tr>
            <td>测试数据4</td>
        </tr>
        <tr>
            <td>测试数据5</td>
        </tr>
        <tr>
            <td>测试数据6</td>
        </tr>
        <tr>
            <td>测试数据7</td>
        </tr>
        <tr>
            <td>测试数据1</td>
        </tr>
        <tr>
            <td>测试数据2</td>
        </tr>
        <tr>
            <td>测试数据3</td>
        </tr>
        <tr>
            <td>测试数据4</td>
        </tr>
        <tr>
            <td>测试数据5</td>
        </tr>
        <tr>
            <td>测试数据6</td>
        </tr>
        <tr>
            <td>测试数据7</td>
        </tr>
    </table>
</body>
</html> 