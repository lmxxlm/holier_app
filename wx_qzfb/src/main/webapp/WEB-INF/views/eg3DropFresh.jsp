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





<script type='text/javascript' language='javascript' src='http://www.cnblogs.com/../Resources/Frame/iscroll.js'></script>

<script type="text/javascript">

var tindex = 2;
var myScroll,
    pullDownEl, pullDownOffset,
    pullUpEl, pullUpOffset,
    generatedCount = 0;
    var moreel;
    var morelen=0;

function pullUpAction () {
    setTimeout(function () {    // <-- Simulate network congestion, remove setTimeout from production!
        var el, li, i;
        el = document.getElementById('thelist');
        
    $.ajax({
        type: "post",
        async:false,
        url: "http://www.cnblogs.com/../iPhoneReader/GetUserControlHtml.ashx",
        data: { action: 'sortlist', type: 12, sort: 2, pi: tindex, ps: 10, fcid: 0, cid: 0, pubid: 0, tagname:''},
        dataType: "html",
        success: function(result) {
            $("#morethelist").html(result);
            moreel = document.getElementById('morethelist');
            morelen = moreel.children.length;
        }
    });
    tindex = tindex + 1;
    
    
            for (i=0; i<morelen; i++) {
                li = document.createElement('li');
                li.innerHTML = moreel.children[i].innerHTML;
                el.appendChild(li, el.childNodes[0]);
            }
        
        myScroll.refresh();        // Remember to refresh when contents are loaded (ie: on ajax completion)
    }, 1000);    // <-- Simulate network congestion, remove setTimeout from production!
}

function loaded() {
    pullUpEl = document.getElementById('pullUp');    
    pullUpOffset = pullUpEl.offsetHeight;
    
    myScroll = new iScroll('wrapper', {
        useTransition: true,
        topOffset: pullDownOffset,
        onRefresh: function () {
            if (pullUpEl.className.match('loading')) {
                pullUpEl.className = '';
                pullUpEl.querySelector('.pullUpLabel').innerHTML = '向上拖动获取更多...';
            }
        },
        onScrollMove: function () {
            if (this.y < (this.maxScrollY - 5) && !pullUpEl.className.match('flip')) {
                pullUpEl.className = 'flip';
                pullUpEl.querySelector('.pullUpLabel').innerHTML = '重新加载刷新中...';
                this.maxScrollY = this.maxScrollY;
            } else if (this.y > (this.maxScrollY + 5) && pullUpEl.className.match('flip')) {
                pullUpEl.className = '';
                pullUpEl.querySelector('.pullUpLabel').innerHTML = '向上拖动获取更多...';
                this.maxScrollY = pullUpOffset;
            }
        },
        onScrollEnd: function () {
            if (pullUpEl.className.match('flip')) {
                pullUpEl.className = 'loading';
                pullUpEl.querySelector('.pullUpLabel').innerHTML = 'Loading...';                
                pullUpAction();    // Execute custom function (ajax call?)
            }
        }
    });
    
    setTimeout(function () { document.getElementById('wrapper').style.left = '0'; }, 800);
}

document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);

document.addEventListener('DOMContentLoaded', function () { setTimeout(loaded, 200); }, false);
</script>

<style type="text/css" media="all">
body,ul,li {
    padding:0;
    margin:0;
    border:0;
}

body {
    font-size:12px;
    -webkit-user-select:none;
    -webkit-text-size-adjust:none;
    font-family:helvetica;
}

#header {
    position:absolute; z-index:2;
    top:0; left:0;
    width:100%;
    height:45px;
    line-height:45px;
    background-color:#d51875;
    background-image:-webkit-gradient(linear, 0 0, 0 100%, color-stop(0, #fe96c9), color-stop(0.05, #d51875), color-stop(1, #7b0a2e));
    background-image:-moz-linear-gradient(top, #fe96c9, #d51875 5%, #7b0a2e);
    background-image:-o-linear-gradient(top, #fe96c9, #d51875 5%, #7b0a2e);
    padding:0;
    color:#eee;
    font-size:20px;
    text-align:center;
}

#header a {
    color:#f3f3f3;
    text-decoration:none;
    font-weight:bold;
    text-shadow:0 -1px 0 rgba(0,0,0,0.5);
}

#footer {
    position:absolute; z-index:2;
    bottom:0; left:0;
    width:100%;
    height:48px;
    background-color:#222;
    background-image:-webkit-gradient(linear, 0 0, 0 100%, color-stop(0, #999), color-stop(0.02, #666), color-stop(1, #222));
    background-image:-moz-linear-gradient(top, #999, #666 2%, #222);
    background-image:-o-linear-gradient(top, #999, #666 2%, #222);
    padding:0;
    border-top:1px solid #444;
}

#wrapper {
    position:absolute; z-index:1;
    top:45px; bottom:48px; left:-9999px;
    width:100%;
    background:#aaa;
    overflow:auto;
}

#scroller {
    position:absolute; z-index:1;
/*    -webkit-touch-callout:none;*/
    -webkit-tap-highlight-color:rgba(0,0,0,0);
    width:100%;
    padding:0;
}

#scroller ul {
    list-style:none;
    padding:0;
    margin:0;
    width:100%;
    text-align:left;
}

#scroller li {
    padding:0 10px;
    height:80px;
    line-height:80px;
    border-bottom:1px solid #ccc;
    border-top:1px solid #fff;
    background-color:#fafafa;
    font-size:14px;
}

#myFrame {
    position:absolute;
    top:0; left:0;
}



/**
 *
 * Pull down styles
 *
 */
#pullDown, #pullUp {
    background:#fff;
    height:40px;
    line-height:40px;
    padding:5px 10px;
    border-bottom:1px solid #ccc;
    font-weight:bold;
    font-size:14px;
    color:#888;
}
#pullDown .pullDownIcon, #pullUp .pullUpIcon  {
    display:block; float:left;
    width:40px; height:40px;
    background:url(pull-icon@2x.png) 0 0 no-repeat;
    -webkit-background-size:40px 80px; background-size:40px 80px;
    -webkit-transition-property:-webkit-transform;
    -webkit-transition-duration:250ms;    
}
#pullDown .pullDownIcon {
    -webkit-transform:rotate(0deg) translateZ(0);
}
#pullUp .pullUpIcon  {
    -webkit-transform:rotate(-180deg) translateZ(0);
}

#pullDown.flip .pullDownIcon {
    -webkit-transform:rotate(-180deg) translateZ(0);
}

#pullUp.flip .pullUpIcon {
    -webkit-transform:rotate(0deg) translateZ(0);
}

#pullDown.loading .pullDownIcon, #pullUp.loading .pullUpIcon {
    background-position:0 100%;
    -webkit-transform:rotate(0deg) translateZ(0);
    -webkit-transition-duration:0ms;

    -webkit-animation-name:loading;
    -webkit-animation-duration:2s;
    -webkit-animation-iteration-count:infinite;
    -webkit-animation-timing-function:linear;
}

@-webkit-keyframes loading {
    from { -webkit-transform:rotate(0deg) translateZ(0); }
    to { -webkit-transform:rotate(360deg) translateZ(0); }
}

</style>




</head>
<body>
<!--<div class="con_t">
    <div class="lbg"></div>
    <div class="rbg"></div>
    <div class="cbg"></div>
</div>-->
<div class="con_c">
    <div class="con_con">        
        <iPhoneReader:TitleSelect ID="List_TitleSelect" runat="server" />
        <script type="text/javascript">            Panda.SetTopNavFocus("<%=TabIndex %>");</script>
        <!--内容开始-->
        <div id="wrapper">
            <div id="scroller">
                <ul id="thelist">
                <iPhoneReader:ItemsControl ID="rptNovelList" runat="server"/>
                </ul>
                <div id="pullUp">
                    <span class="pullUpIcon"></span><span class="pullUpLabel">向上拖动获取更多...</span>
                </div>
            </div>
        </div>        
        <!--内容结束-->
    </div>
</div>
<div style="display:none">
<ul id="morethelist">
</ul>
</div>
<div class="con_foot">
    <div class="lbg"></div>
    <div class="rbg"></div>
    <div class="cbg"></div>
</div>









</body>
</html>