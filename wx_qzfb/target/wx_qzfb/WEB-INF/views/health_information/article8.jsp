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
<!--headTrap<body></body><head></head><html></html>--><html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<script nonce="" type="text/javascript">
window.__nonce_str = ""
if (window.__nonce_str && location.href.indexOf("http://")==0 && Math.random() <= 0.1) {
	window.__moonsafe_csp_offset || (window.__moonsafe_csp_offset = 18);
	document.write('<meta http-equiv="Content-Security-Policy" content="script-src \'unsafe-inline\' \'unsafe-eval\' *.qq.com *.weishi.com'+(window.__nonce_str ? ' \'nonce-' + window.__nonce_str + "\'":"")+ '">');
        
}
</script>
        <script nonce="" type="text/javascript">
            window.logs = {
                pagetime: {}
            };
            window.logs.pagetime['html_begin'] = (+new Date());
        </script>
        
<script type="text/javascript"> 

    var page_begintime = (+new Date());

    var biz = "MzA5MDA5NDc3OA=="||"";
    var sn = "" || ""|| "c02280f6177b80d71c28f281ac52e040";
    var mid = "502756810" || ""|| "502756810";
    var idx = "2" || "" || "2";

    //辟谣需求
    var is_rumor = ""*1;
    var norumor = ""*1;
    if (!!is_rumor&&!norumor){
      if (!document.referrer || document.referrer.indexOf("mp.weixin.qq.com/mp/rumor") == -1){
        location.href = "http://mp.weixin.qq.com/mp/rumor?action=info&__biz=" + biz + "&mid=" + mid + "&idx=" + idx + "&sn=" + sn + "#wechat_redirect";
      }
    }

    //原创需求，需要跳转到中间页
    /*
    var copyrightInfo = {
        display_source : ""*1,
        nocopyrightsource : ""*1
    };
    if (!!copyrightInfo.display_source&&!copyrightInfo.nocopyrightsource){
      if (!document.referrer || document.referrer.indexOf("mp.weixin.qq.com/mp/reprint") == -1){
        location.href = "http://mp.weixin.qq.com/mp/reprint?action=info&__biz=" + biz + "&mid=" + mid + "&idx=" + idx + "&sn=" + sn + "#wechat_redirect";
      }
    }*/
</script>
<script type="text/javascript">
var MutationObserver = window.WebKitMutationObserver||window.MutationObserver||window.MozMutationObserver;
var isDangerSrc = function(src) {
    if(src) {
        var host = src.match(/http(?:s)?:\/\/([^\/]+?)(\/|$)/);
        if(host && !/qq\.com(\:8080)?$/.test(host[1]) && !/weishi\.com$/.test(host[1])) {
            return true;
        }
    }
    return false;
}
var ishttp = location.href.indexOf("http://")==0;
if (ishttp && typeof MutationObserver === 'function' && location.host == 'mp.weixin.qq.com') {
    window.__observer_data = {count:0, exec_time: 0, list:[]};
    window.__observer = new MutationObserver(function(mutations) {
        // 统计触发的次数
        window.__observer_data.count++;
        var begin = new Date(), deleteNodes = [];
        mutations.forEach(function(mutation) {
            var nodes = mutation.addedNodes;
            for (var i = 0; i < nodes.length; i++) {
                var node = nodes[i];

                if (node.tagName === 'SCRIPT') {
                    var scriptSrc = node.src;
                    if(isDangerSrc(scriptSrc)) {
                        window.__observer_data.list.push(scriptSrc);
                        deleteNodes.push(node);
                    }
                
                }
            }
        });
        for(var i=0; i<deleteNodes.length; i++) {
            var node = deleteNodes[i];
            node.parentNode.removeChild(node);
        }
        window.__observer_data.exec_time += (new Date() - begin);
    });
    window.__observer.observe(document, {subtree: true, childList: true});
}
(function() {
    if (Math.random()<0.01 && ishttp && HTMLScriptElement.prototype.__lookupSetter__ && typeof Object.defineProperty !== "undefined") {
        window.__danger_src = {xmlhttprequest:[], script_src: [], script_setAttribute: []};
        var t = "$"+Math.random();
        // script.src
        HTMLScriptElement.prototype.__old_method_script_src = HTMLScriptElement.prototype.__lookupSetter__ ('src');
        HTMLScriptElement.prototype.__defineSetter__ ('src', function(url) {
            if (url && isDangerSrc(url)) {
                // console.log("src:"+url);
                window.__danger_src.script_src.push(url);
            }
            this.__old_method_script_src(url);
        });
        var element_setAttribute_method = "element_setAttribute"+t;
        Object.defineProperty(Element.prototype, element_setAttribute_method, {
            value: Element.prototype.setAttribute,
            enumerable: false
        });
        Element.prototype.setAttribute = function(name, url) {
            if (this.tagName == 'SCRIPT' && name == 'src' && isDangerSrc(url)) {
                // console.log("setAttr:"+url);
                window.__danger_src.script_setAttribute.push(url);
            }
            this[element_setAttribute_method](name, url);
        };
    }
})();
</script>

        <link rel="dns-prefetch" href="//res.wx.qq.com">
<link rel="dns-prefetch" href="//mmbiz.qpic.cn">
<link rel="shortcut icon" type="image/x-icon" href="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/icon/common/favicon22c41b.ico">
<script nonce="" type="text/javascript">
    String.prototype.html = function(encode) {
        var replace =["&#39;", "'", "&quot;", '"', "&nbsp;", " ", "&gt;", ">", "&lt;", "<", "&amp;", "&", "&yen;", "¥"];
        if (encode) {
            replace.reverse();
        }
        for (var i=0,str=this;i< replace.length;i+= 2) {
             str=str.replace(new RegExp(replace[i],'g'),replace[i+1]);
        }
        return str;
    };

    window.isInWeixinApp = function() {
        return /MicroMessenger/.test(navigator.userAgent);
    };

    window.getQueryFromURL = function(url) {
        url = url || 'http://qq.com/s?a=b#rd'; 
        var query = url.split('?')[1].split('#')[0].split('&'),
            params = {};
        for (var i=0; i<query.length; i++) {
            var arg = query[i].split('=');
            params[arg[0]] = arg[1];
        }
        if (params['pass_ticket']) {
        	params['pass_ticket'] = encodeURIComponent(params['pass_ticket'].html(false).html(false).replace(/\s/g,"+"));
        }
        return params;
    };

    (function() {
	    var params = getQueryFromURL(location.href);
        window.uin = params['uin'] || '';
        window.key = params['key'] || '';
        window.wxtoken = params['wxtoken'] || '';
        window.pass_ticket = params['pass_ticket'] || '';
    })();

</script>

        <title>妈妈产后出汗,是虚吗?</title>
        
<link rel="stylesheet" type="text/css" href="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/style/page/appmsg/page_mp_article_improve2eb52b.css">
<style>
     
    </style>
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/style/page/appmsg/page_mp_article_improve_pc2c9cd6.css">
<![endif]-->
<script type="text/javascript">
    document.domain = "qq.com";
</script>

    </head>
    <body id="activity-detail" class="zh_CN mm_appmsg" ontouchstart="">
        
    <script type="text/javascript">
        var write_sceen_time = (+new Date());
    </script>
    
    <div id="js_cmt_mine" class="discuss_container editing access" style="display:none;">
        <div class="discuss_container_inner">
            <h2 class="rich_media_title">妈妈产后出汗,是虚吗?</h2>
            <span id="log"></span>
            <div class="frm_textarea_box_wrp">
                <span class="frm_textarea_box">
                    <textarea id="js_cmt_input" class="frm_textarea" placeholder="留言将由公众号筛选后显示，对所有人可见。"></textarea>
                    <div class="emotion_tool">
                        <span class="emotion_switch" style="display:none;"></span>
                        <span id="js_emotion_switch" class="pic_emotion_switch_wrp">
                            <img class="pic_default" src="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/icon/appmsg/emotion/icon_emotion_switch.2x278965.png" alt="">
                            <img class="pic_active" src="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/icon/appmsg/emotion/icon_emotion_switch_active.2x278965.png" alt="">
                        </span>
                        <div class="emotion_panel" id="js_emotion_panel">
                            <span class="emotion_panel_arrow_wrp" id="js_emotion_panel_arrow_wrp">
                                <i class="emotion_panel_arrow arrow_out"></i>
                                <i class="emotion_panel_arrow arrow_in"></i>
                            </span>
                            <div class="emotion_list_wrp" id="js_slide_wrapper">
                                
                                
                            </div>
                            <ul class="emotion_navs" id="js_navbar">
                                
                            </ul>
                        </div>
                    </div>
                </span>
            </div>
            <div class="discuss_btn_wrp"><a id="js_cmt_submit" class="btn btn_primary btn_discuss btn_disabled" href="javascript:;">提交</a></div>
            <div class="discuss_list_wrp" style="display:none">
                <div class="rich_tips with_line title_tips discuss_title_line">
                    <span class="tips">我的留言</span>
                </div>
                <ul class="discuss_list" id="js_cmt_mylist"></ul>
            </div>
            <div class="rich_tips tips_global loading_tips" id="js_mycmt_loading">
                <img src="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/icon/common/icon_loading_white2805ea.gif" class="rich_icon icon_loading_white" alt="">
                <span class="tips">加载中</span>
            </div>
            <div class="wx_poptips" id="js_cmt_toast" style="display:none;">
                <img alt="" class="icon_toast" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGoAAABqCAYAAABUIcSXAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3NpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyMTUxMzkxZS1jYWVhLTRmZTMtYTY2NS0xNTRkNDJiOGQyMWIiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MTA3QzM2RTg3N0UwMTFFNEIzQURGMTQzNzQzMDAxQTUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MTA3QzM2RTc3N0UwMTFFNEIzQURGMTQzNzQzMDAxQTUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NWMyOGVjZTMtNzllZS00ODlhLWIxZTYtYzNmM2RjNzg2YjI2IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjIxNTEzOTFlLWNhZWEtNGZlMy1hNjY1LTE1NGQ0MmI4ZDIxYiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pmvxj1gAAAVrSURBVHja7J15rF1TFMbXk74q1ZKHGlMkJVIhIgg1FH+YEpEQJCKmGBpThRoSs5jVVNrSQUvEEENIhGiiNf9BiERICCFIRbUiDa2qvudbOetF3Tzv7XWGffa55/uS7593977n3vO7e5+199p7v56BgQGh0tcmvAUERREUQVEERREUQVEERREUQVEERREUQVEERREUQVEERREUQVEERVAUQVEERVAUQbVYk+HdvZVG8b5F0xj4RvhouB+eCy8KrdzDJc1RtAX8ILxvx98V1GyCSkN98Cx4z/95/Wn4fj6j6tUEeN4wkFSnw1MJqj5NhBfAuwaUHREUg4lqNMmePVsHll/HFhVfe1t3FwpJI8DXCCquDrCWNN4B6Tb4M3Z98aTPmTvh0YHl18PXw29yZiKejoPvcUD6E74yFBJbVDk6Bb7K8aP/Hb4c/tRzEYIqprPhSxzlf4Uvhb/0Xoig8qnHAJ3lqPMzfDH8XZ4LEpRf2sVdA5/sqPO9Qfop70UJyn+/boaPddT5yrq7VUUvTIVJI7q74MMddXR8NB1eXcYvhBpZm0s2w72/o86HFoKvLau/pYaXzjLMdUJ6y0LwtWV9CIIaXtvA8+G9HHV03u5q+K+yH47U0NoRngPv7KjzHDwTLj0bS1BDazfJJlcnOOostC6ysnCT+q80G/sIvFVgeW09D8FPVT0uoP7VfvAD8NjA8pqmuAN+OcYAjso0RbIZ8DGB5TVNcRO8JMaHY9SXSdfa3eeANJimWBLrA7JFiZwIXye+NMUV8CcxP2SRFjXefok7NRjSGZJlWUPvw2/wtNiQirSoXWyMsR28wR7AzzYM0oXw+Y7yK+CLJGeaoqjyrJSdZJD6Ov4+z5y6NJc0Az7NUecHydIUy+v60KNyQHoM3nKI1y7YCFiq0i7uBvgER52vDdKqWn9djhY1Dn4G3n6Ecqm2rF74dvgoR53S0hQxW9RJAZAGW5bSn58QJA27dQ7uIEedjywEX5NKVxCqsY6y+qA+LxFI4+yZ6oH0trWkNan80jygtIUsc5SflgAsDXgehfdx1KkkTRE76tN+Xue2jnTU0Ru1oIbvpt30bBtKhOp5yaaRkts0lic8V1i6dPcIRx2d/l8Y8XtNNEg7OOo8bl1kmmOKnDsO88CaYzejau0hWZqiL7C83oCH4SeTHvwV2BqqsHRVztSEYOmWF80NeXZT6Hd4KflResE9vCnBOlCyGfDNAstHTVPUDWoQ1t3iW+9WNizvlhfd4aerXd+ThqiMfNR6+9LvOOro5OY5JX2H4+F7HZD+kGzlamMgldWiirQsjcwWFbjmqZJteekJLK9pisvgL6RhKvuciZiwzrWWGapfrPy30kBVcSBIrw0aD3PU0XB6cehntq7rTMf7/2iQlktDVdXJLXlg6VjmiYBn6rWSTRCH6hvJ0hQrpcGq8oidsmHpTP8t8DGO9/vcWt9qabiqPgup1yKyQwvC2tSefZ73SSpNkUJ4PlLorlHZ+446nc8f3fIyywlJhwrTuwVSjBa1ccvSxN0hjjoK5xVrYZMd9V6XbFfgBukixTwGLg8sDam3dZR/wZ6L/dJlin1en8LS+bgpFbz3Ygvzu1J1HKxYNqxGpCmaCEo12rrBorD6LRp8UbpcdR5VWhTW35KlKd6QFqjuM2XzwlpnMxTvSkuUwuG/Xlg6NtPjbT6WFimF/VG6LEvXgn8QGDjMbBukVECFwhpoS+CQatfX2Q1q6H7wENHdrfCr0lKleEB9JyxNneus+VJpsVL9TwI6W65LovWIGl3KtVJaLv7LBwYTFEERFEVQFEERFEVQFEERFEVQFEERFEVQFEERFEVQFEERFFWq/hFgADUMN4RzT6/OAAAAAElFTkSuQmCC">
                <p class="toast_content">已留言</p>
            </div>
        </div>
    </div>

    <div id="js_article" class="rich_media preview_appmsg">
        
        <div id="js_top_ad_area" class="top_banner">
 
        </div>
                

        <div class="rich_media_inner">
                        <div id="page-content">
                <div id="img-content" class="rich_media_area_primary">
                    <h2 class="rich_media_title" id="activity-name">
                        妈妈产后出汗,是虚吗? 
                    </h2>
                    <div class="rich_media_meta_list">
                        						                        <em id="post-date" class="rich_media_meta rich_media_meta_text">2016-07-01</em>

                                                <a class="rich_media_meta rich_media_meta_link rich_media_meta_nickname" href="javascript:void(0);" id="post-user">衢州妇保</a>
                    </div>
                    
                    
                    
                    
                                                            
                                                            
                    
                    <div class="rich_media_content " id="js_content">
                        

                        
                        <p style=";text-align: justify;text-indent: 37px;-ms-text-autospace: ideograph-numeric;-ms-text-justify: inter-ideograph"><span style=";font-family:宋体;font-size:16px"><br  /></span></p><p><section data-source="bj.96weixin.com"><section style=" clear: both;  width: 100%; margin: 0px auto; overflow: hidden; "><section style=" padding-left: 15px;  box-sizing: border-box; "><section style="display: inline-block; vertical-align: top; width: 95%; box-sizing: border-box;"><section style="border-color: rgb(155, 187, 89) rgb(155, 187, 89) rgb(155, 187, 89) rgb(190, 171, 235); height: 1.2em; border-left-width: 1px; border-left-style: solid; box-sizing: border-box;"></section><section style="border-radius: 100%; border: 1px solid rgb(190, 171, 235); width: 1.3em; height: 1.3em; text-align: center; color: rgb(155, 187, 89); line-height: 1.3em; font-size: 19px; margin-left: -0.6em; display: inline-block; box-sizing: border-box; float: left; background-color: rgb(254, 255, 255);"><section style="color: rgb(190, 171, 235); box-sizing: border-box;"><br  /></section></section><section style="padding-bottom: 0.5em; border-left-color: rgb(190, 171, 235); border-left-width: 1px; border-left-style: solid; box-sizing: border-box;"><section style="vertical-align: middle; padding-top: 8px; padding-left: 15px; box-sizing: border-box;"><section style="box-sizing: border-box;"><section style=" text-align: center;  box-sizing: border-box; "><img style="width: auto !important; height: auto !important; visibility: visible !important;" src="../assets/image/productAdmin/healthInfo/14.png" data-ratio="0.6947791164658634" data-w="498" data-type="jpeg" data-s="300,640"  /><br  /></section></section><section style="padding-top: 5px; box-sizing: border-box;"><p style="color: rgb(190, 171, 235); box-sizing: border-box;"><span style="color: rgb(0, 122, 170); font-family: 宋体; font-size: 16px;">产后几天的妈妈经常会问，为什么我不觉得热，可全身出汗衣服都湿透了。让我来告诉你这是为什么吧。</span></p></section></section></section></section></section></section></section></p><p style=";text-align: justify;text-indent: 37px;-ms-text-autospace: ideograph-numeric;-ms-text-justify: inter-ideograph"><span style=";font-family:宋体;font-size:16px"></span><br  /></p><p style=";text-align: justify;text-indent: 37px;-ms-text-autospace: ideograph-numeric;-ms-text-justify: inter-ideograph"><span style=";font-family:宋体;font-size:16px"></span><span style=";font-family:宋体;font-size:16px">怀孕后孕妇</span><span style=";font-family:宋体;font-size:16px">血容量增加</span><span style=";font-family:宋体;font-size:16px">，</span><span style=";font-family:宋体;font-size:16px">到足月后</span><span style=";font-family:宋体;font-size:16px">，</span><span style=";font-family:宋体;font-size:16px">母体的组织间液也增加</span><span style=";font-family:宋体;font-size:16px">。其中</span><span style=";font-family:宋体;font-size:16px">平均血液可增加1000~1500ml</span><span style=";font-family:宋体;font-size:16px">，</span><span style=";font-family:宋体;font-size:16px">组织间液可增加1500ml</span><span style=";font-family:宋体;font-size:16px">。</span><span style=";font-family:宋体;font-size:16px">分娩后,母体的新陈代谢下降,不再需要那么多水分</span><span style=";font-family:宋体;font-size:16px">，</span><span style=";font-family:宋体;font-size:16px">于是身体要进行自我调节</span><span style=";font-family:宋体;font-size:16px">，</span><span style=";font-family:宋体;font-size:16px">向体外排</span><span style=";font-family:宋体;font-size:16px">出</span><span style=";font-family:宋体;font-size:16px">一部分水分。一般来说,</span><span style=";font-family:宋体;font-size:16px">人体排出</span><span style=";font-family:宋体;font-size:16px">水分有三种途径:呼吸</span><span style=";font-family:宋体;font-size:16px">、</span><span style=";font-family:宋体;font-size:16px">大小便</span><span style=";font-family:宋体;font-size:16px">、</span><span style=";font-family:宋体;font-size:16px">出汗。因此,有的产妇在分娩后2~3</span><span style=";font-family:宋体;font-size:16px">天</span><span style=";font-family:宋体;font-size:16px">内,即使是卧床休息,出的汗也多</span><span style=";font-family:宋体;font-size:16px">。</span><span style=";font-family:宋体;font-size:16px">这种产后出汗在医学上称为”产褥汗”,是一种正常的生理现象,并不是身体虚弱的表现</span><span style=";font-family:宋体;font-size:16px">，</span><span style=";font-family:宋体;font-size:16px">不需要治疗。</span></p><p style=";text-align: justify;text-indent: 37px;-ms-text-autospace: ideograph-numeric;-ms-text-justify: inter-ideograph"><span style=";font-family:宋体;font-size:16px"><br  /></span></p><p style=";text-align: justify;text-indent: 37px;-ms-text-autospace: ideograph-numeric;-ms-text-justify: inter-ideograph"><span style=";font-family:宋体;color:rgb(51,51,51);font-size:16px">虽然产后出汗属于正常的生理现象，但新妈妈也要勤擦身，勤换内衣裤，注意保持皮肤清洁；常开窗使室内空气流通，保持室温在25℃左右，与室外温差不超过5℃；多饮水，多吃蔬菜水果，以补充水分及汗液中丢失的钾离子，保持体内的电解质平衡。</span></p><p><section data-source="bj.96weixin.com"><section><fieldset style="margin: 0.5em 0px; border: rgb(17, 75, 107); color: rgb(245, 189, 209); font-family: inherit; font-size: 1.2em; font-weight: inherit; text-decoration: inherit; background-color: rgb(255, 255, 255);"><section style="padding: 3px; border: 1px solid rgb(190, 171, 235); width: 42%; color: inherit; vertical-align: top; display: inline-block; box-shadow: 3px 3px 5px rgb(204,204,204);" data-width="42%"><section style="float: left; border-color: rgb(17, 75, 107); color: inherit;"><p style="border-color: rgb(245, 189, 209); color: rgb(190, 171, 235);"><span style=";font-family:宋体;color:rgb(51,51,51);font-size:16px">夏季来临，部分产妇及家属认为坐月子怕见风，要捂着，要门窗紧闭，穿厚衣，戴厚帽。其实这是没有科学依据的，这样做不仅加重产妇出汗，而且容易导致产妇中暑、虚脱，要避免这些不良习惯。</span></p><p style="border-color: rgb(245, 189, 209); color: inherit;"><br  /></p></section></section><section style="display: inline-block; vertical-align: top; width: 0px; margin: 2em 22px 0px -1px; border-color: rgb(26, 141, 205); color: inherit;" data-width="0px"><section style="width: 0px; color: inherit; border-top-color: transparent !important; border-right-color: rgb(190, 171, 235); border-bottom-color: transparent !important; border-left-color: rgb(190, 171, 235); border-top-width: 10px !important; border-bottom-width: 10px !important; border-left-width: 20px; border-top-style: solid !important; border-bottom-style: solid !important; border-left-style: solid;" data-width="0px"></section><section style="width: 0px; margin: -19px 0px; border-right-color: rgb(245, 189, 209); color: inherit; border-left-width: 18px !important; border-left-style: solid !important; border-left-color: rgb(255, 255, 255) !important; border-top-width: 9px !important; border-top-style: solid !important; border-top-color: transparent !important; border-bottom-width: 9px !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;" data-width="0px"></section></section><section style="display: inline-block; vertical-align: top; width: 48%; border-color: rgb(245, 189, 209); color: inherit;" data-width="48%"><img style="width: auto !important; height: auto !important; visibility: visible !important;" src="../assets/image/productAdmin/healthInfo/15.png" data-ratio="0.7191011235955056" data-w="267" data-type="jpeg" data-s="300,640"  /><br  /></section></fieldset></section></section></p><p style=";text-align: justify;text-indent: 37px;-ms-text-autospace: ideograph-numeric;-ms-text-justify: inter-ideograph"><span style=";font-family:宋体;font-size:16px">&nbsp;</span></p><p style=";text-align: justify;text-indent: 37px;-ms-text-autospace: ideograph-numeric;-ms-text-justify: inter-ideograph"><span style=";font-family:宋体;font-size:16px">&nbsp;</span></p><p><span style=";font-family:宋体;font-size:16px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=";font-family:宋体;font-size:16px">衢州市妇幼保健院产</span><span style=";font-family:宋体;font-size:16px">一病区 &nbsp;吴潇璇</span></p><p><br  /></p>
                    </div>
                    <script type="text/javascript">
                        var first_sceen__time = (+new Date());

                        if ("" == 1 && document.getElementById('js_content'))
                            document.getElementById('js_content').addEventListener("selectstart",function(e){ e.preventDefault(); });

                                        (function(){
                            if (navigator.userAgent.indexOf("WindowsWechat") != -1){
                                var link = document.createElement('link');
                                var head = document.getElementsByTagName('head')[0];
                                link.rel = 'stylesheet';
                                link.type = 'text/css';
                                link.href = "http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/style/page/appmsg/page_mp_article_improve_winwx2c9cd6.css";
                                head.appendChild(link);
                            }
                        })();
                    </script>
                    <link rel="stylesheet" type="text/css" href="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/style/page/appmsg/page_mp_article_improve_combo2eb52b.css">
                    
                    
                                        
                                        
                                        <div class="rich_media_tool" id="js_toobar3">
                                                                    <div id="js_read_area3" class="media_tool_meta tips_global meta_primary" style="display:none;">阅读 <span id="readNum3"></span></div>

                        <span style="display:none;" class="media_tool_meta meta_primary tips_global meta_praise" id="like3">
                            <i class="icon_praise_gray"></i><span class="praise_num" id="likeNum3"></span>
                        </span>

                        <a id="js_report_article3" style="display:none;" class="media_tool_meta tips_global meta_extra" href="javascript:void(0);">投诉</a>

                    </div>



                                    </div>

                <div class="rich_media_area_primary sougou" id="sg_tj" style="display:none">

                </div>

                <div class="rich_media_area_extra">

                    
                                        <div class="mpda_bottom_container" id="js_bottom_ad_area">
                        
                    </div>
                                        
                    <div id="js_iframetest" style="display:none;"></div>
                                        
                                    </div>
               
            </div>
            <div id="js_pc_qr_code" class="qr_code_pc_outer" style="display:none;">
                <div class="qr_code_pc_inner">
                    <div class="qr_code_pc">
                        <img id="js_pc_qr_code_img" class="qr_code_pc_img">
                        <p>微信扫一扫<br>关注该公众号</p>
                    </div>
                </div>
            </div>

        </div>
    </div>


        
        <script nonce="">
    var __DEBUGINFO = {
        debug_js : "http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/debug/console2ca724.js",
        safe_js : "http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/safe/moonsafe2ea69c.js",
        res_list: []
    };
</script>
        <script>window.moon_map = {"appmsg/emotion/caret.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/emotion/caret278965.js","biz_wap/jsapi/cardticket.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/jsapi/cardticket275627.js","appmsg/emotion/map.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/emotion/map278965.js","appmsg/emotion/textarea.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/emotion/textarea27cdc5.js","appmsg/emotion/nav.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/emotion/nav278965.js","appmsg/emotion/common.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/emotion/common278965.js","appmsg/emotion/slide.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/emotion/slide2a9cd9.js","pages/report.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/pages/report2e9114.js","pages/music_player.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/pages/music_player2b674b.js","pages/loadscript.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/pages/loadscript2c9cd6.js","appmsg/emotion/dom.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/emotion/dom278965.js","biz_wap/utils/hashrouter.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/utils/hashrouter2805ea.js","a/gotoappdetail.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/a/gotoappdetail2ea0e6.js","a/ios.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/a/ios275627.js","a/android.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/a/android2c5484.js","a/profile.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/a/profile2ea0e6.js","a/mpshop.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/a/mpshop2ea0e6.js","a/card.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/a/card2ea0e6.js","biz_wap/utils/position.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/utils/position29b1f8.js","appmsg/a_report.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/a_report2e2d45.js","biz_common/utils/respTypes.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/utils/respTypes2c57d0.js","appmsg/cmt_tpl.html.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/cmt_tpl.html2a2c13.js","sougou/a_tpl.html.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/sougou/a_tpl.html2c6e7c.js","appmsg/emotion/emotion.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/emotion/emotion2a9cd9.js","biz_common/utils/report.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/utils/report275627.js","biz_common/utils/huatuo.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/utils/huatuo293afc.js","biz_common/utils/cookie.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/utils/cookie275627.js","pages/voice_component.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/pages/voice_component2c5484.js","new_video/ctl.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/new_video/ctl2d441f.js","biz_common/utils/monitor.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/utils/monitor2a30ee.js","biz_common/utils/spin.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/utils/spin275627.js","biz_wap/jsapi/pay.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/jsapi/pay275627.js","appmsg/reward_entry.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/reward_entry2e21d7.js","appmsg/comment.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/comment2ec548.js","appmsg/like.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/like2eb52b.js","appmsg/a.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/a2ea76c.js","pages/version4video.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/pages/version4video2e481d.js","rt/appmsg/getappmsgext.rt.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/rt/appmsg/getappmsgext.rt2c21f6.js","biz_wap/utils/storage.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/utils/storage2a74ac.js","biz_common/tmpl.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/tmpl2b3578.js","appmsg/img_copyright_tpl.html.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/img_copyright_tpl.html2a2c13.js","appmsg/a_tpl.html.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/a_tpl.html2d1390.js","biz_common/ui/imgonepx.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/ui/imgonepx275627.js","biz_common/dom/attr.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/dom/attr275627.js","biz_wap/utils/ajax.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/utils/ajax2c7a90.js","biz_common/utils/string/html.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/utils/string/html29f4e9.js","sougou/index.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/sougou/index2c7543.js","biz_wap/safe/mutation_observer_report.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/safe/mutation_observer_report2d5cb8.js","appmsg/report.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/report2e9709.js","appmsg/report_and_source.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/report_and_source2c0ff9.js","appmsg/page_pos.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/page_pos2ec4b2.js","appmsg/cdn_speed_report.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/cdn_speed_report2c57d0.js","appmsg/wxtopic.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/wxtopic2e4987.js","appmsg/voice.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/voice2ab8bd.js","appmsg/qqmusic.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/qqmusic2ab8bd.js","appmsg/iframe.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/iframe2e69b8.js","appmsg/review_image.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/review_image2d0cfe.js","appmsg/outer_link.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/outer_link275627.js","biz_wap/jsapi/core.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/jsapi/core2c30c1.js","biz_common/dom/event.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/dom/event275627.js","appmsg/copyright_report.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/copyright_report2ec4b2.js","appmsg/cache.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/cache2a74ac.js","appmsg/pay_for_reading.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/pay_for_reading2c5484.js","appmsg/async.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/async2ec84f.js","biz_wap/ui/lazyload_img.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/ui/lazyload_img2ec99a.js","biz_common/log/jserr.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/log/jserr2805ea.js","appmsg/share.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/share2ec548.js","biz_wap/utils/mmversion.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/utils/mmversion275627.js","appmsg/cdn_img_lib.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/cdn_img_lib275627.js","biz_common/utils/url/parse.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/utils/url/parse2dd7fd.js","biz_common/dom/class.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_common/dom/class275627.js","biz_wap/utils/device.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/utils/device2b3aae.js","biz_wap/jsapi/a8key.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/jsapi/a8key2a30ee.js","appmsg/index.js":"http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/appmsg/index2ec99a.js"};</script><script type="text/javascript" src="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/biz_wap/moon2e9760.js"></script>
    <script id="topic_tpl" type="text/html">        
        <span class="db topic_wrp">
            <span class="topic_thumb" style="background-image:url({img_url});"></span>
            <span class="topic_content">
                <strong class="topic_title">{title}</strong>
                <span class="topic_desc">{author}</span>
                <span class="topic_info">
                    <span class="topic_info_extra"><span class="icon_topic"></span>话题</span>
                    <span class="topic_info_primary">相关文章{msg_num}篇</span>
                </span>
            </span>
        </span>
    </script>
    <script id="voice_tpl" type="text/html">        
        <span id="voice_main_<#=voiceid#>_<#=posIndex#>" class="db audio_area <#if(!musicSupport){#> unsupport<#}#>">
            <span class="tc tips_global unsupport_tips" <#if(show_not_support!==true){#>style="display:none;"<#}#>>
            当前浏览器不支持播放音乐或语音，请在微信或其他浏览器中播放            </span>
            <span class="audio_wrp db">
                <span id="voice_play_<#=voiceid#>_<#=posIndex#>" class="audio_play_area">
                    <i class="icon_audio_default"></i>
                    <i class="icon_audio_playing"></i>
                    <img src="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/icon/appmsg/audio/icon_audio_unread26f1f1.png" alt="" class="pic_audio_default">
                </span>
                <span class="audio_length tips_global"><#=duration_str#></span>
                <span class="db audio_info_area">
                    <strong class="db audio_title"><#=title#></strong>
                    <span class="audio_source tips_global"><#if(window.nickname){#>来自<#=window.nickname#><#}#></span>
                </span>
                <span id="voice_progress_<#=voiceid#>_<#=posIndex#>" class="progress_bar" style="width:0px;"></span>
            </span>
        </span>
    </script>

    <script id="qqmusic_tpl" type="text/html">        
        <span id="qqmusic_main_<#=comment_id#>_<#=posIndex#>" class="db qqmusic_area <#if(!musicSupport){#> unsupport<#}#>">
            <span class="tc tips_global unsupport_tips" <#if(show_not_support!==true){#>style="display:none;"<#}#>>
            当前浏览器不支持播放音乐或语音，请在微信或其他浏览器中播放            </span>
            <span class="db qqmusic_wrp">
                <span class="db qqmusic_bd">
                    <span id="qqmusic_play_<#=musicid#>_<#=posIndex#>" class="play_area">
                        <i class="icon_qqmusic_switch"></i>
                        <img src="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/icon/appmsg/qqmusic/icon_qqmusic_default.2x26f1f1.png" alt="" class="pic_qqmusic_default">
                        <img src="<#=music_img#>" data-autourl="<#=audiourl#>" data-musicid="<#=musicid#>" class="qqmusic_thumb" alt="">
                    </span>
                                        <a id="qqmusic_home_<#=musicid#>_<#=posIndex#>" href="javascript:void(0);" class="access_area">
                        <span class="qqmusic_songname"><#=music_name#></span>
                        <span class="qqmusic_singername"><#=singer#></span>
                        <span class="qqmusic_source"><img src="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/icon/appmsg/qqmusic/icon_qqmusic_source263724.png" alt=""></span>
                    </a>
                </span>
            </span>       
        </span>
    </script>
  <script type="text/javascript">
      var not_in_mm_css = "http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/style/page/appmsg/not_in_mm2c9cd6.css";
      var windowwx_css = "http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/style/page/appmsg/page_mp_article_improve_winwx2c9cd6.css";
      var tid = "";
      var aid = "";
      var clientversion = "";
      var appuin = "MzA5MDA5NDc3OA=="||"";

      var source = "1";
      var scene = 75;
      
      var itemidx = "";

      var _copyright_stat = "0";
      var _ori_article_type = "";

      var nickname = "喆励健康";
      var appmsg_type = "6";
      var ct = "1467337636";
      var publish_time = "2016-07-01" || "";
      var user_name = "gh_f66b10cf2589";
      var user_name_new = "";
      var fakeid   = "";
      var version   = "";
      var is_limit_user   = "0";
      var round_head_img = "http://mmbiz.qpic.cn/mmbiz/Kj6M8CZwBIDniaT83w3ia9fLxhHuWJEic3DaWx8jI3ULC33aiaZBlgjrCnvbibKjSWpQmgzLRjvFnKtBx1mVm30xfIg/0";
      var msg_title = "妈妈产后出汗,是虚吗?";
      var msg_desc = "产后几天的妈妈经常会问，为什么我不觉得热，可全身出汗衣服都湿透了。让我来告诉你这是为什么吧。怀孕后孕妇血容量";
      var msg_cdn_url = "http://mmbiz.qpic.cn/mmbiz/Kj6M8CZwBIAgGNaibJnDwz7SBlQTN4OJKgUYWgqibxsbwNibU1DsoFXlXqnib55IAO9MEtMw42PgPmWE9xm9ScBXxw/0?wx_fmt=png";
      var msg_link = "http://mp.weixin.qq.com/s?__biz=MzA5MDA5NDc3OA==&amp;tempkey=bGfwrWOShDoGvO4XbJZUyEtZBPlWL%2BjCHmMK56DI2OkVHlU%2B77KCeA6T7XmsWl70RSHg7arECLoK7qets2zzWblhNCyTP4De0hgtaXWrdqvBROWK5TmS9SgZTgpSk2xJJ7PmTzaJGK%2FPunocjGOhEA%3D%3D&amp;#rd";
      var user_uin = "0"*1;
      var msg_source_url = '';
      var img_format = 'jpeg';
      var srcid = '0701KyRYMRSpenQFqPiX6naD';
      var req_id = '0110wrzpKKtdYatZXK0Dvzr3';
      var networkType;
      var appmsgid = '' || '502756810'|| "502756810";
      var comment_id = "0" * 1;
      var comment_enabled = "" * 1;
      var is_need_reward = "0" * 1;
      var is_https_res = ("" * 1) && (location.protocol == "https:");

      var devicetype = "";
      var source_encode_biz = "";
      // var source_username = "";
      // var profile_ext_signature = "" || "";
      var reprint_ticket = "";
      var source_mid = "";
      var source_idx = "";

      var show_comment = "";
      var __appmsgCgiData = {
            can_use_page : "0"*1,
            is_wxg_stuff_uin : "0"*1,
            card_pos : "",
            copyright_stat : "0",
            source_biz : "",
            hd_head_img : "http://wx.qlogo.cn/mmhead/Q3auHgzwzM7pNZiaEpunFFemaokEOpGmfIPnfeBpJz1icYTibPuicLmPsw/0"||(window.location.protocol+"//"+window.location.host + "http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/pic/appmsg/pic_rumor_link.2x264e76.jpg")
      };
      var _empty_v = "http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/pic/pages/voice/empty26f1f1.mp3";

      var copyright_stat = "0" * 1;

      var pay_fee = "" * 1;
      var pay_timestamp = "";
      var need_pay = "" * 1;

      var need_report_cost = "0" * 1;
      var use_tx_video_player = "0" * 1;

      var friend_read_source = "" || "";
      var friend_read_version = "" || "";
      var friend_read_class_id = "" || "";

      var is_only_read = "1" * 1;
      var read_num = "3" * 1;
      var like_num = "0" * 1;
      var liked = "false" == 'true' ? true : false;
      var is_temp_url = "bGfwrWOShDoGvO4XbJZUyEtZBPlWL&amp;nbsp;jCHmMK56DI2OkVHlU&amp;nbsp;77KCeA6T7XmsWl70RSHg7arECLoK7qets2zzWblhNCyTP4De0hgtaXWrdqvBROWK5TmS9SgZTgpSk2xJ0DCuXspLYijut3rxhABHSQ==" ? 1 : 0;
      var send_time = "1467338409";

      var topic_default_img = 'http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/icon/appmsg/topic/pic_book_thumb.2x2e4987.png';

      // 话题卡片相关数据
      var wxtopic = {
        isbn : ""    // 书籍
      };

      var svr_time = "1467339427" * 1;
      
            window.wxtoken = "";
          if(!!window.__initCatch){
        window.__initCatch({
            idkey : 27613,
            startKey : 0,
            limit : 128,
            reportOpt : {
                uin : uin,
                biz : biz,
                mid : mid,
                idx : idx,
                sn  : sn
            },
            extInfo : {
                network_rate : 0.01    //网络错误采样率
            }
        });
    }
  </script>
  <script type="text/javascript">
    var real_show_page_time = +new Date();
    if (!!window.addEventListener){
        window.addEventListener("load", function(){
            window.onload_endtime = +new Date();
        });
    }
          seajs.use('appmsg/index.js');
  </script>

    </body>
</html>
<!--tailTrap<body></body><head></head><html></html>-->
 
