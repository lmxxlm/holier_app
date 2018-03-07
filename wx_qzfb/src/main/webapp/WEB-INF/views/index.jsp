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
        <title>科室列表</title>
        <meta name="description" content="">
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
        <link href="assets/css/productAdmin/department_list.css" rel="stylesheet">
	    <script src="assets/script/productAdmin/jquery.min.js"></script>
	    <script src="http://cdn.bootcss.com/iScroll/5.2.0/iscroll-infinite.min.js"></script>
        <script src="assets/script/productAdmin/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body style="background:beige;">
 
<div id="container" class="scroll" style="transform:translate(0px,-61px);position:absolute; overflow:scroll; -webkit-overflow-scrolling: touch; top:0; left:0; bottom:0; right:0">
 <div style="height:50px; line-height:50px; text-align:center; width:100%; ">
           <img class="img1" src="assets/image/productAdmin/docDetail/drop.png" style="width:40px;">
            <img class="img2" src="assets/image/productAdmin/docDetail/up1.png" style="width:40px; display:none;">
 </div> 
 
 
<p style="background:#fff;">
    <span><h1>敬请期待!</h1></span></br>
	<a href="department_list.html">科室列表</a></br>
	<a href="outpatient.html">门诊列表</a></br>
	<a href="order.html">预约</a></br>
	<a href="my_info.html">我的信息</a></br>
	<a href="detail_info.html">信息详情页</a></br>
	<a href="add_info.html">添加用户/信息</a></br>
	<a href="register.html">当前挂号/历史挂号</a></br>
	<a href="genalTools.html">常用工具</a></br>
	<a href="ycqCount.html">预产期计算</a></br>
	<a href="online_build_card.html">在线建卡</a></br>
	<a href="tribe.html">兴趣部落整合</a></br>
	<a href="health_information.html">健康资讯</a></br>
	<a href="docDetail.html">医生详情页</a></br>
	
</p>
</div>
</body>


<script type="text/javascript">  
/*
*obj--滑动对象
*offset--滑动距离（当滑动距离大于等于offset时将调用callback）
*callback--滑动完成后的回调函数
*/
var slide = function (obj, offset, callback) {
    var start,
        end,
        isLock = false,//是否锁定整个操作
        isCanDo = false,//是否移动滑块
        isTouchPad = (/hp-tablet/gi).test(navigator.appVersion),
        hasTouch = 'ontouchstart' in window && !isTouchPad;

    //将对象转换为jquery的对象
    obj = $(obj);

    var objparent = obj.parent();

    /*操作方法*/
    var fn =
        {
            //移动容器
            translate: function (diff) {
                obj.css({
                    "-webkit-transform": "translate(0," + diff + "px)",
                    "transform": "translate(0," + diff + "px)"
                });
            },
            //设置效果时间
            setTranslition: function (time) {
                obj.css({
                    "-webkit-transition": "all " + time + "s",
                    "transition": "all " + time + "s"
                });
            },
            //返回到初始位置
            back: function () {

                $('.img1').hide();
                $('.img2').hide();
                fn.translate(0 - offset);
                //标识操作完成
                isLock = false;
            }
        };

    //滑动开始
    obj.bind("touchstart", function (e) {

        if (objparent.scrollTop() <= 0 && !isLock) {
            var even = typeof event == "undefined" ? e : event;
            //标识操作进行中
            isLock = true;
            isCanDo = true;
            //保存当前鼠标Y坐标
            start = hasTouch ? even.touches[0].pageY : even.pageY;
        	$('.img1').show();
            $('.img2').hide(); 
         
            
            
            //消除滑块动画时间
            fn.setTranslition(0);
        }
    });

    //滑动中
    obj.bind("touchmove", function (e) {

        if (objparent.scrollTop() <= 0 && isCanDo) {

            var even = typeof event == "undefined" ? e : event;

            //保存当前鼠标Y坐标
            end = hasTouch ? even.touches[0].pageY : even.pageY;

            if (start < end) {
                even.preventDefault();
                //消除滑块动画时间
                fn.setTranslition(0);
                //移动滑块
                fn.translate(end - start - offset);
            }

        }
    });


    //滑动结束
    obj.bind("touchend", function (e) {
        if (isCanDo) {
            isCanDo = false;
            //判断滑动距离是否大于等于指定值
            if (end - start >= offset) {
                //设置滑块回弹时间
                fn.setTranslition(1);
                //保留提示部分
                fn.translate(0);
                
                //显示上拉图片
                $('.img2').show();
                $('.img1').hide();
                //执行回调函数
                if (typeof callback == "function") {
                    callback.call(fn, e);
                }
            } else {
                //返回初始状态
                fn.back();
            }
        }
    });
}


$(function () {

    slide("#container",61, function (e) {
        var that = this;

        setTimeout(function () {
            that.back.call();
        }, 500);

    });
});




//屏蔽微信页面上面下拉时候的默认标记
var overscroll = function(el) {
  el.addEventListener('touchstart', function() {
    var top = el.scrollTop
      , totalScroll = el.scrollHeight
      , currentScroll = top + el.offsetHeight
    //如果我们顶部或底部的容器
    //向上或向下滚动,把一个像素.
    //
    //这可以防止滚动身体“通过”。
    //
    if(top === 0) {
      el.scrollTop = 1
    } else if(currentScroll === totalScroll) {
      el.scrollTop = top - 1
    }
  })
  el.addEventListener('touchmove', function(evt) {
    //如果内容实际上是可滚动,即内容足够长,会发生滚动
    if(el.offsetHeight < el.scrollHeight)
      evt._isScroller = true
  })
}
overscroll(document.querySelector('.scroll'));
document.body.addEventListener('touchmove', function(evt) {
  //在这种情况下,默认行为是滚动的,这将导致溢出。因为我们不希望,我们preventDefault
  if(!evt._isScroller) {
    evt.preventDefault()
  }
})


$(function(){
	var _p = document.getElementsByTagName('p')[0],
	_c = _p.childNodes;
	console.log("p的儿子们" , _c ," 长度 ",_c.length );
	
	for(var i in _c){
		//console.log(i," 类型值为 ", _c[i].nodeType);
	}
});

</script>

</html>