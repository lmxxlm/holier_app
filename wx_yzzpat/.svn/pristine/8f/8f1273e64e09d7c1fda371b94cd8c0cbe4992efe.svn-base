<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>院外会诊登记 - 康复养老咨询平台</title>
<meta name="format-detection" content="telephone=no, address=no">
<meta name="apple-mobile-web-app-capable" content="yes" />
<!-- apple devices fullscreen -->
<meta name="apple-touch-fullscreen" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent" />
<meta name="keywords" content="" />
<meta name="description"
	content="康复型养老服务是养老和康复医学的重要组成部分，它是应用医学科技和康复工程等手段，与养老服务相互配合，改善因伤因病因衰老致残或生活功能减退者的生理和心理的整体功能，达到全面康复，适应或重返社会的目的。" />
<link rel="shortcut icon"
	href="${imagesUrl}mobileApp/kfylzxpt/ywhz/top.jpg" />
<script src="assets/out/ywhz/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="assets/out/ywhz/util.js"></script>
<script src="assets/out/ywhz/require.js"></script>
<script src="assets/out/ywhz/config.js"></script>
<script type="text/javascript"
	src="assets/out/ywhz/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="assets/out/ywhz/mui.min.js"></script>
<script type="text/javascript" src="assets/out/ywhz/common.js"></script>
<link href="assets/out/ywhz/bootstrap.min.css" rel="stylesheet">
<link href="assets/out/ywhz/common.min.css" rel="stylesheet">
</head>
<body>
	<div class="container container-fill">
		<link type="text/css" rel="stylesheet"
			href="assets/out/ywhz/common.mobile.css" />

		<link type="text/css" rel="stylesheet"
			href="assets/out/ywhz/bootstrap-datetimepicker.min.css" />
		<script type="text/javascript"
			src="assets/out/ywhz/bootstrap-datetimepicker.min.js"></script>
		<script type="text/javascript">
	$(function(){
		$('.datepicker').each(function(){
			$(this).datetimepicker({
				format: "yyyy-mm-dd",
				minView: "2",
				pickerPosition: "top-right",
				autoclose: true
			});
		});
	});
</script>

		<script type="text/javascript">
	function validate(){
								if($.trim($(':text[name="pt_name"]').val()) == '') {
			alert('患者姓名 必须填写.');
			return false;
		}
		
																		
																				if($.trim($(':text[name="pt_age"]').val()) == '') {
			alert('患者年龄 必须填写.');
			return false;
		}
		
																				if($.trim($(':text[name="pt_hospitail"]').val()) == '') {
			alert('就诊医院 必须填写.');
			return false;
		}
		
																				if($.trim($(':text[name="pt_department"]').val()) == '') {
			alert('就诊科室 必须填写.');
			return false;
		}
		
																				if($.trim($(':text[name="pt_bedno"]').val()) == '') {
			alert('床号 必须填写.');
			return false;
		}
		
										var num = parseFloat($.trim($(':text[name="pt_bedno"]').val()));
		if(isNaN(num)) {
			alert('床号 必须输入数字.');
			return false;
		}
														if($.trim($(':text[name="pt_adtime"]').val()) == '') {
			alert('入院时间 必须填写.');
			return false;
		}
		
																		
																		
																				if($.trim($(':text[name="pt_hztime"]').val()) == '') {
			alert('期望会诊时间 必须填写.');
			return false;
		}
		
																				if($.trim($(':text[name="sq_name"]').val()) == '') {
			alert('申请人名字 必须填写.');
			return false;
		}
		
																				if($.trim($(':text[name="sq_telephone"]').val()) == '') {
			alert('联系方式 必须填写.');
			return false;
		}
		
										var num = parseFloat($.trim($(':text[name="sq_telephone"]').val()));
		if(isNaN(num)) {
			alert('联系方式 必须输入数字.');
			return false;
		}
														if($.trim($(':text[name="sq_relation"]').val()) == '') {
			alert('与患者关系 必须填写.');
			return false;
		}
		
																return true;
	}
</script>

		<style>
body {
	background: #ECECEC;
}

.text-error {
	color: red
}

.research-thumb {
	width: 100%;
}

.mobile-content img {
	width: 100%;
}
</style>

		<div class="research">
			<img class="research-thumb"
				src="${imagesUrl}mobileApp/kfylzxpt/ywhz/top.jpg">
			<div class="mobile-div img-rounded">
				<div class="mobile-hd">院外会诊登记</div>
				<div class="mobile-content">
					<p>院外会诊申请由患者或患者家属自愿提交</p>
					<p>申请提交便视为愿承担来院专家的劳务费用，交通费用等其他相关费用</p>
					<p>根据患者要求进行专家行程、时间安排，安排完成后，我方会告知家属专家会诊时间及费用</p>
				</div>
			</div>
			<form action="submit_ywhz.do" method="post" enctype="multipart/form-data"
				onsubmit="return validate();">
				<div class="mobile-div img-rounded">
					<div class="mobile-hd">请认真填写表单</div>
					<div class="mobile-content">
						<table class="form-table">
							<tr>
								<th><label for=""> 患者姓名 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><input type="text" name="pt_name" value=""
									class="form-control" /></td>
							</tr>
							<tr>
								<th><label for=""> 患者性别 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><select name="pt_gender" class="form-control" />
									<option value="男" />男
									</option>
									<option value="女" />女
									</option> </select></td>
							</tr>
							<tr>
								<th><label for=""> 患者年龄 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><input type="text" name="pt_age" value=""
									class="form-control" /></td>
							</tr>
							<tr>
								<th><label for=""> 就诊医院 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><input type="text" name="pt_hospitail" value=""
									class="form-control" /></td>
							</tr>
							<tr>
								<th><label for=""> 就诊科室 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><input type="text" name="pt_department" value=""
									class="form-control" /></td>
							</tr>
							<tr>
								<th><label for=""> 床号 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><input type="text" name="pt_bedno" value=""
									class="form-control" /></td>
							</tr>
							<tr>
								<th><label for=""> 入院时间 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><script type="text/javascript">
				require(["datetimepicker"], function($){
					$(function(){
						$(".datetimepicker.date").each(function(){
							var opt = {
								language: "zh-CN",
								minView: 2,
								format: "yyyy-mm-dd",
								autoclose: true,
								todayBtn: true
							};
							$(this).datetimepicker(opt);
						});
					});
				});
			</script> <input type="text" name="pt_adtime" value=""
									placeholder="填写入院时间" 
									class="datetimepicker date form-control"
									style="padding: 6px 12px;" /></td>
							</tr>
							<tr>
								<th><label for=""> 申请院外专家会诊理由 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><select name="pt_hzreason" class="form-control" />
									<option value="进一步明确诊断" />进一步明确诊断
									</option>
									<option value="来院指导、协助治疗或手术" />来院指导、协助治疗或手术
									</option> </select></td>
							</tr>
							<tr>
								<th><label for=""> 申请的专家 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><input type="text" name="doctor" value=""
								placeholder="填写您期望的专家" 
									class="form-control" /></td>
							</tr>
							<tr>
								<th><label for=""> 期望会诊时间 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><input type="text" name="pt_hztime" value=""
									placeholder="填写期望会诊时间" 
									class="datetimepicker date form-control"
									style="padding: 6px 12px;" /></td>
							</tr>
							<tr>
								<th><label for=""> 申请人名字 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><input type="text" name="sq_name" value=""
									class="form-control" /></td>
							</tr>
							<tr>
								<th><label for=""> 联系方式 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><input type="text" name="sq_telephone" value=""
									class="form-control" /></td>
							</tr>
							<tr>
								<th><label for=""> 与患者关系 <span title="必填项"
										class="text-error">*</span> </label></th>
								<td><input type="text" name="sq_relation" value=""
									class="form-control" /></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="mobile-submit">
					<input type="hidden" name="token" value="M24l" /> <input
						type="submit" class="btn btn-large btn-success submit" value="提交"
						name="submit" style="width: 100%;">
				</div>
			</form>
		</div>

		<script type="text/javascript">
	// 预约与调查分享
	wx.ready(function () {
		sharedata = {
			title: "院外会诊登记",
			desc: "院外会诊申请由患者或患者家属自愿提交申请提交便视为愿承担来院专家的劳务费用，交通费用等其他相关费用根据患者要求进行专家行程、时间安排，安排完成后，我方会告知家属专家会诊时间及费用",
			link: "http://weixin.lio8.com/app/index.php?i=37&c=entry&id=12&do=research&m=we7_research",
			imgUrl: "http://weixin.lio8.com/attachment/images/37/2016/11/n355lX7GZG3XKg3z9437YLm8hKyD43.jpg"
		};
		wx.onMenuShareAppMessage(sharedata);
		wx.onMenuShareTimeline(sharedata);
	});
</script>
		<div class="text-center footer"
			style="margin: 31px 0; width: 100%; text-align: center; word-break: break-all;">
			&nbsp;&nbsp;</div>
		<script>require(['bootstrap']);</script>
	</div>
	<style>
h5 {
	color: #555;
}
</style>
	<script type="text/javascript">
	wx.config(jssdkconfig);
	var $_share = {"title":"\u5eb7\u590d\u517b\u8001\u533b\u9662\u514d\u8d39\u54a8\u8be2\u5e73\u53f0","imgUrl":"","desc":"","link":"http:\/\/weixin.lio8.com\/app\/index.php?i=37&c=entry&id=12&do=research&m=we7_research&u=73907"};
	if(typeof sharedata == 'undefined'){
		sharedata = $_share;
	} else {
		sharedata['title'] = sharedata['title'] || $_share['title'];
		sharedata['desc'] = sharedata['desc'] || $_share['desc'];
		sharedata['link'] = sharedata['link'] || $_share['link'];
		sharedata['imgUrl'] = sharedata['imgUrl'] || $_share['imgUrl'];
	}
	if(sharedata.imgUrl == ''){
		var _share_img = $('body img:eq(0)').attr("src");
		if(_share_img == ""){
			sharedata['imgUrl'] = window.sysinfo.attachurl + 'images/global/wechat_share.png';
		} else {
			sharedata['imgUrl'] = util.tomedia(_share_img);
		}
	}
	if(sharedata.desc == ''){
		var _share_content = util.removeHTMLTag($('body').html());
		if(typeof _share_content == 'string'){
			sharedata.desc = _share_content.replace($_share['title'], '')
		}
	}
	wx.ready(function () {
		wx.onMenuShareAppMessage(sharedata);
		wx.onMenuShareTimeline(sharedata);
		wx.onMenuShareQQ(sharedata);
		wx.onMenuShareWeibo(sharedata);
	});
		$(function(){
		if($('.js-quickmenu')!=null && $('.js-quickmenu')!=''){
			var h = $('.js-quickmenu').height()+'px';
			$('body').css("padding-bottom",h);
		}else{
			$('body').css("padding-bottom", "0");
		}
	});
	</script>
</body>
</html>