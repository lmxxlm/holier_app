<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
<meta name="viewport"
	content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="assets/out/lyb/style.css" rel="stylesheet" type="text/css">
<script src="assets/out/lyb/jquery.min.js" type="text/javascript"></script>
</head>
<body id="message">
	<div class="qiandaobanner">
		<a href="javascript:history.go(-1);"><img
			src="http://weixin.lio8.com/attachment/images/37/2016/11/suZJju593i3K3YYIFn9K7Kz7z7IyL4.png">
		</a>
	</div>
	<div class="cardexplain">
		<div class="window" id="windowcenter">
			<div id="title" class="wtitle">
				操作提示<span class="close" id="alertclose"></span>
			</div>
			<div class="content">
				<div id="txt"></div>
			</div>
		</div>
		<div class="history">
			<div class="history-date">
				<ul>
					<a><h2 class="first first1" style="position: relative;">请点击留言</h2>
					</a>
					<li class="green bounceInDown nob ly1" style="display: none">
						<dl>
							<dt>
								<input name="wxid" type="hidden" class="px" id="wxid1"
									value="${userInfo.openid}"> <input name="wxname"
									type="text" class="px" id="wxname1"
									value="${userInfo.nickname}" placeholder="请输入您的昵称">
							</dt>
							<dt>
								<textarea name="info" class="pxtextarea" style="height: 60px;"
									id="info1" placeholder="请输入留言"></textarea>
							</dt>
							<dt>
								<a id="showcard1" class="submit" href="javascript:;">提交留言</a>
							</dt>
						</dl></li>
					<c:forEach items="${dataList}" var="ly">
						<li class="green bounceInDown">
							<h3>
								<img src="${ly.headpic}"
									onerror="this.src='assets/out/lyb/default-headimg.jpg'">${ly.nickname}<span>${ly.lytime}</span>
								<div class="clr"></div>
							</h3>
							<dl>
								<dt class="hfinfo" date="">${ly.info}</dt>
							</dl>
							<dl class="huifu">
								<dt>
									<span> <a class="hhbt czan" date="${ly.ly_id}"
										href="javascript:;">回复</a>
										<p style="display: none;" class="hfly${ly.ly_id}">
											<textarea name="info" class="pxtextarea hflyinfo${ly.ly_id}"></textarea>
											<a class="hhsubmit submit" date="${ly.ly_id}"
												href="javascript:;">确定</a>
										</p> </span>
								</dt>
							</dl> 
							<c:forEach items="${ly.hflist}" var="hf">
									<dl class="huifu">
									<dt>
										<span>${hf.name} ${hf.time} 回复：${hf.info}</span>
									</dt>
									</dl>
							</c:forEach>
						</li>
					</c:forEach>
					<li class="bounceInDown">
						<!--页码开始-->
						<div class="pagination">
							<div class="left <c:if test="${cp<=1}">disabled</c:if>">
								<a href="lyb?cp=${cp-1}&&ps=${ps}">上一页</a>
							</div>

							<div class="right">
								<a href="lyb?cp=${cp+1}&&ps=${ps}">下一页</a>
							</div>
							<div class="clr"></div>
						</div> <!--页码结束--></li>
					<li class="green bounceInDown nob ly2" style="display: none">
						<dl>
							<dt>
								<input name="wxid" type="hidden" class="px" id="wxid2"
									value="${userInfo.openid}"> <input name="wxname"
									type="text" class="px" id="wxname2"
									value="${userInfo.nickname}" placeholder="请输入您的昵称">
							</dt>
							<dt>
								<textarea name="info" class="pxtextarea" style="height: 60px;"
									id="info2" placeholder="请输入留言"></textarea>
							</dt>
							<dt>
								<a id="showcard2" class="submit" href="javascript:;">提交留言</a>
							</dt>
						</dl></li>
					<a><h2 class="first first2" style="position: relative;">请点击留言</h2>
					</a>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript">
    $(document).ready(function () {
        var ActionUrl = "submit_ly.do";
        $("#showcard1").bind('click',function () {
            var btn = $(this);
            btn.unbind('click');
            var wxname = $("#wxname1").val();
            var wxid = $("#wxid1").val();
            if(wxid == ''){
            	alert("请刷新后再试");
            	return;
            }
            if (wxname  == '') {
                alert("请输入昵称");
                return
            }
            var info = $("#info1").val();
            if (info == '') {
                alert("请输入内容");
                return
            }
            var submitData = {
                from_user:wxid,
                username:wxname,
                content: info,
                type: "feedback"
            };
            $.post(ActionUrl, submitData,function(data) {
                if (data==true) {
                    alert("您的留言已成功提交 ");
                    window.location.href="lyb.html";
                } else {
                    alert("系统开小差啦，请稍后再试");
                }
            },"json")
        });


        $("#showcard2").bind('click',function(){
            var btn = $(this);
            var wxname = $("#wxname2").val();
            var wxid = $("#wxid2").val();
            if(wxid == ''){
            	alert("请刷新后再试");
            	return;
            }
            if (wxname  == '') {
                alert("请输入昵称");
                return
            }
            var info = $("#info2").val();
            if (info == '') {
                alert("请输入内容");
                return
            }
            var submitData = {
                from_user:wxid,
                username: wxname,
                content: info,
                type: "feedback"
            };
            $.post(ActionUrl, submitData,function(data) {
                if (data==true) {
                    alert("您的留言已成功提交");
                    window.location.href="lyb.html";
                } else {
                    alert("系统开小差啦，请稍后再试");
                }
            },"json")
        });
        
        $('.button button').on('click',function(event){
			  event.preventDefault();
		      formValidate();
		});

        $(".hhsubmit").bind('click',function(){
            $(this).unbind('click');
            var objid = $(this).attr("date");
            var info = $(".hflyinfo"+objid).val();
            if (info == '') {
                alert("请输入内容");
                return
            }
            var submitData = {
                ly_id:objid,
                info: info,
                type: "reply"
            };

            $.post(ActionUrl, submitData,function(data) {
                if (data==true) {
                    alert("您的回复已提交成功！");
                    window.location.href="lyb.html";
                } else {
                    alert("系统开小差啦，请稍后刷新再试！");
                }
            },"json")
        });

        $(".hfinfo").click(function(){
            var objid = $(this).attr("date");
            $(".hfly"+objid).slideToggle();
        });
        $(".hhbt").click(function(){
            var objid = $(this).attr("date");
            $(".hfly"+objid).slideToggle();
        });

        var ipage = parseInt($('.ipage').text());
        var cpage = parseInt($('.cpage').text());
        if(ipage>=cpage && cpage <=1){
            $('.right').attr('class','right disabled');
            $('.left').attr('class','left disabled');
            $('.right a').attr('href','###');
            $('.left a').attr('href','###');
        }else if(ipage<=1 && cpage>1){
            $('.left').attr('class','left disabled');
            $('.left a').attr('href','###');
        }else if(ipage ==cpage && cpage >1){
            $('.right').attr('class','right disabled');
            $('.right a').attr('href','###');
        }
    });
    $("#windowclosebutton").click(function(){
        $("#windowcenter").slideUp(500);
    });
    $("#alertclose").click(function(){
        $("#windowcenter").slideUp(500);
    });

    $(document).ready(function(){
        $(".first1").click(function(){
            $(".ly1").slideToggle();
        });
    });
    $(document).ready(function(){
        $(".first2").click(function(){
            $(".ly2").slideToggle();
        });
    });
</script>
</body>
</html>