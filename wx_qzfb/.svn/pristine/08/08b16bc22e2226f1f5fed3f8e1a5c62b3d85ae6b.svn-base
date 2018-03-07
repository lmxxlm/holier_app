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
    var sn = "" || ""|| "5c0c2a986eaec9b61f97a3265400e143";
    var mid = "502756810" || ""|| "502756810";
    var idx = "3" || "" || "3";

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

        <title>备孕，别忘了补充叶酸</title>
        
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
            <h2 class="rich_media_title">备孕，别忘了补充叶酸</h2>
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
                        备孕，别忘了补充叶酸 
                    </h2>
                    <div class="rich_media_meta_list">
                        						                        <em id="post-date" class="rich_media_meta rich_media_meta_text">2016-07-01</em>

                                                <a class="rich_media_meta rich_media_meta_link rich_media_meta_nickname" href="javascript:void(0);" id="post-user">衢州妇保</a>
                    </div>
                    
                    
                    
                    
                                                            
                                                            
                    
                    <div class="rich_media_content " id="js_content">
                        

                        
                        <p style=";text-align: justify;-ms-text-justify: inter-ideograph"><span style=";font-family:宋体;font-weight:normal;font-size:19px">全面二孩政策落地，一大批高龄女性加入备孕大军。夫妻双方健康体检、通过体育锻炼增强体质、为了老二性别调节生体酸碱度，各种孕前准备不一而足。然而，备孕的你千万忽略了，要开始补充叶酸，补充叶酸，补充叶酸啦！</span></p><p style=";text-align: justify;-ms-text-justify: inter-ideograph"><span style=";font-family:宋体;font-weight:normal;font-size:19px"><img style="width: auto !important; height: auto !important; visibility: visible !important;" src="../assets/image/productAdmin/healthInfo/12.png" data-ratio="0.670863309352518" data-w="" data-type="jpeg" data-s="300,640"  /><br  /></span></p><p style=";text-align: justify;-ms-text-justify: inter-ideograph"><span style=";font-family:宋体;font-weight:normal;font-size:19px"></span><span style=";font-family:宋体;font-size:19px">现代医学研究证实</span><span style=";font-family:宋体;font-size:19px">叶酸</span><span style=";font-family:宋体;font-size:19px">与胎儿的神经管畸形有着密切的关系。当胚胎在母体中发育至第三周～第四周时，神经管应该已经闭合，如果未能完全闭合，就是神经管畸形了，</span><span style=";font-family:宋体;font-size:19px">临床</span><span style=";font-family:宋体;font-size:19px">表现为脊柱裂、脑膨出、无脑儿为主的中枢神经系统发育畸形，而发生的原因就是孕前及孕早期叶酸的缺乏。除此之外，叶酸的缺乏还会导致先天性心脏病、唇腭裂的发生。</span></p><p style=";text-align: justify;-ms-text-justify: inter-ideograph"><br  /></p><p style=";text-align: left;text-indent: 37px;-ms-text-autospace: ideograph-numeric"><span style=";font-family:宋体;font-size:19px">叶酸是一种水溶性B族维生素，</span><span style=";font-family:宋体;color:rgb(51,51,51);letter-spacing:0;font-weight:normal;font-style:normal;font-size:19px;background:rgb(255,255,255)">参与核酸、氨基酸、蛋白质和磷脂代谢，并与细胞分化、倍增及其功能密切相关</span><span style=";font-family:宋体;color:rgb(51,51,51);letter-spacing:0;font-weight:normal;font-style:normal;font-size:19px;background:rgb(255,255,255)">，</span><span style=";font-family:宋体;font-size:19px">在人体细胞分裂增殖及新陈代谢中发挥着重要的作用</span><span style=";font-family:宋体;color:rgb(51,51,51);letter-spacing:0;font-weight:normal;font-style:normal;font-size:19px;background:rgb(255,255,255)">。尽管叶酸广泛存在于几乎所有食物中，但由于我国传统的高温炒、煮的烹调方式，使食物中大部分叶酸被破坏。且人体肠道对叶酸的吸收率仅25%～50%，孕期母体对叶酸需要量增加，血液稀释，血浆清除率反而增 加，故容易使叶酸的产生、转化和代谢异常，致使我国育龄妇女体内叶酸严重不足。</span><span style=";font-family:宋体;font-size:19px">由于人体不能合成叶酸，只能从天然食物、叶酸强化食品或含叶酸的维生素制剂中摄取。</span></p><p style=";text-align: left;text-indent: 37px;-ms-text-autospace: ideograph-numeric"><span style=";font-family:宋体;font-size:19px"><br  /></span></p><p style=";text-align: left;text-indent: 37px;-ms-text-autospace: ideograph-numeric"><span style=";font-family:宋体;font-size:19px">无论</span><span style=";font-family:宋体;font-size:19px">是</span><span style=";font-family:宋体;font-size:19px">在怀孕以前或是怀孕以后，简单的通过饮食对叶酸的摄入量都是不够的，这样一来，</span><span style=";font-family:宋体;font-size:19px">人</span><span style=";font-family:宋体;font-size:19px">体内储备的叶酸也就相对不足。可叶酸从摄入到在体内储备需要一段时间，如果发现自己怀孕了再去补充叶酸显然就</span><span style=";font-family:宋体;font-size:19px">有些</span><span style=";font-family:宋体;font-size:19px">晚了。</span><span style=";font-family:宋体;font-size:19px">所以，有</span><span style=";font-family:宋体;font-size:19px">生育打算的育龄妇女每天应</span><span style=";font-family:宋体;font-size:19px">口服叶酸片，</span><span style=";font-family:宋体;font-size:19px">补充</span><span style=";font-family:宋体;font-size:19px">适量</span><span style=";font-family:宋体;font-size:19px">的叶酸，最佳时间是怀孕前3个月开始到怀孕后的头3个月。但如果是神经管高危人群，应在怀孕前</span><span style=";font-family:宋体;font-size:19px">到遗传咨询门诊</span><span style=";font-family:宋体;font-size:19px">向医生咨询，在医生的指导下</span><span style=";font-family:宋体;font-size:19px">服用</span><span style=";font-family:宋体;font-size:19px">叶酸</span><span style=";font-family:宋体;font-size:19px">片</span><span style=";font-family:宋体;font-size:19px">。</span></p><p style=";text-align: left;text-indent: 37px;-ms-text-autospace: ideograph-numeric"><span style=";font-family:宋体;font-size:19px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;衢州市妇幼保健院健康教育科 &nbsp;&nbsp;&nbsp;汪雪梅</span></p><p><br  /></p>
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

        </div>
    </div>

    </body>
</html>
<!--tailTrap<body></body><head></head><html></html>-->
 
