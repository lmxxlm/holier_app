<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!-->
<!--<![endif]-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="./commons/runParams.html"%>
<title>康复管理平台</title>
<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
<style>
.listImg img{height:48px; margin:5px;}
a.detail{padding-left:20px; background:url(assets/images/common/document.png) no-repeat left center; color:blue;}
td{padding:2px;}
.checked{background:#044599 !important;color:#fff !important;}

/**.rejectBox{height:auto;width:400px;overflow:hidden;background:#fff;border:1px solid #ccc;border-radius:5px;box-shadow:5px 5px 5px #ccc;position:fixed;_position:absolute;left:0;top:0;padding:10px;padding-top:0;display:none;z-index:30;}*/
.rejectBox{padding:10px;height:auto;width:400px;overflow:hidden;background:#fff;border:1px solid #ccc;border-radius:5px;box-shadow:5px 5px 5px #ccc;}


.rejectBox .title{font-weight:bold;line-height:40px;height:40px;border-bottom:1px solid #999;}
.rejectBox textarea{border:1px solid #ccc;width:100%;height:100px;margin-top:10px; line-height:25px;}
.rejectBox ul{margin:10px 0;}
.rejectBox li{list-style:disc;margin-left:30px;line-height:30px;width:100%;}
.rejectBox li a{width:100%;height:100%;color:#333;display:block;}
.rejectBox .tool{border-top:1px solid #999;text-align:right;padding-top:10px;}


/*做测试*/
.modal{width:100%;height:100%;position:fixed;_position:absolute;top:0;left:0;z-index:200;overflow:scroll;display:none;}
td a img{width:30px;height:20px;}
</style>
<!--[if IE 7]>
     <style type="text/css">
     /*解决滚动条的问题*/
         body{position:relative}
     </style>
 <![endif]-->
 <!--[if IE 6]>
     <style type="text/css">
     
     </style>
 <![endif]-->
</head>


<body>
   
    <div id="frameMain">
        <div id="top_nav">当前位置：<a href="javascript:;">订单管理</a>&nbsp;>&nbsp;待确认转院</div>
        <form id="submitForm" name="submitForm" action="" method="post">
        <input type="hidden" name="token" value="${token}"></input>
        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
            <tr>
                <th width="5%"><input type="checkbox" id="all" class="checkAll"/></th>
                <th width="6%">患者</th>
                <th width="11%">医院</th>
                <th width="20%">病情描述</th>
                <th width="10%">预约病房</th>
                <th width="10%">小结图片</th>
                <th width="10%">入住时间</th>
                <th width="6%">接送</th>
                <th width="20%">操作</th>
            </tr>
           <c:if test="${noRecord == true}">
                <tr>
                   <td colspan="10">暂无转院申请！</td>
                </tr>
           </c:if>
           <c:forEach items="${orderList}" var="record">
               <tr>
                    <td><input type="checkbox" name="IDCheck" value="${record.orderid}" class="acb" data-name="${record.patient_name}" data-intime="${record.check_in_time}" data-room="${record.bedroom_name}"/></td>
                    <td>${record.patient_name}</td>
                    <td>${record.hospital_name}</td>
                    <td class="describe">${record.patient_desc}</td>
                    <td>${record.bedroom_name}</td>
                    <td> 
	                    <c:forEach items="${record.report_images}" var="report_image">
                         <a href="${report_image.fileName}" target="_blank" class="conImg"><img src="${report_image.middle}"/></a>
                        </c:forEach>
	                </td>
                    <td>${record.check_in_time}</td>
                    <td>
                    <c:choose>
   <c:when test="${record.pss == true}">
  是
   </c:when>  
   <c:otherwise>
   否  
   </c:otherwise>
</c:choose>
                    </td>
                    <td> 
                         <input type="button" value="同意" class="ui_input_btn ui_input_btn_yes accept" data-id="${record.orderid}" data-name="${record.patient_name}" data-intime="${record.check_in_time}" data-room="${record.bedroom_name}"/>
                        <input type="button" value="拒绝" class="ui_input_btn reject" data-id="${record.orderid}" data-intime="${record.check_in_time}" data-room="${record.bedroom_name}" data-name="${record.patient_name}"  data-hos="${record.hospital_name}"/>
                    </td>
                </tr>
           </c:forEach>
           
        </table>
        </form>
        <div class="contentBox">
            <!-- <div class="title">对勾选的患者：</div> -->
            <div class="box">
                <input type="button" value="批量同意" class="ui_input_btn ui_input_btn_yes acceptAll" />
<!--                 <input type="button" value="批量拒绝" class="ui_input_btn rejectAll" /> -->
            </div>
        </div>
       
		<div class="contentBox">
		 <!-- 
            <div class="ui_flt leftcon">
                共有&nbsp;<span class="ui_txt_bold">90</span>&nbsp;条记录，当前第&nbsp;<span class="ui_txt_bold">1&nbsp;/&nbsp;9</span>&nbsp;页
            </div>
             -->
            <div class="ui_frt rightcon">
            
               <!-- 获得当前页 -->
                <input type="hidden" name="page" value="${searchParam.cp}"/>
                <input type="hidden" name="totalPage" value="${searchParam.totalPage}"></input>
                <input type="button" value="首页" class="ui_input_btn first" />
                <input type="button" value="上一页" class="ui_input_btn back" />
                <input type="button" value="下一页" class="ui_input_btn next"  />
                <!-- 
                <input type="button" value="尾页" class="ui_input_btn last" />
                转到第&nbsp;<input type="text" id="jumpNumTxt" class="ui_input_txt" style="width:25px;" />&nbsp;页
                <input type="button" class="ui_input_btn jump" value="跳转"  />
                 -->
            </div>
        </div>
    </div>
  
    <!-- 测试 -->
    <div class="modal">
	        <div class="rejectBox">
		        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
		            <tr>
		                <th width="20%" >患者</th>
		                <th width="20%" >病房</th>
		                <th width="20%" >入住时间</th>
		                <th width="40%" >医院</th>
		            </tr>
		            <tr>
		                <td class="name">苗美丽</td>
		                <td class="room">32</td>
		                <td class="time">男</td>
		                <td class="hos">杭州市三医院</td>
		            </tr>
		            </table>
		        <div class="title">请选择或输入一个驳回理由：</div>
		        <div>
		           <textarea >
		           </textarea>
		        </div>
		       
		        <ul>
		            <li><a href="javascript:void(0)">该患者的病情不适合转入我院做康复治疗。</a></li>
		            <li><a href="javascript:void(0)">我院该病房床位已满。</a></li>
		            <li><a href="javascript:void(0)">该患者的个人情况不适合转入我院做康复治疗。</a></li>
		            <li><a href="javascript:void(0)">其它原因。</a></li>
		        </ul>
		        <div class="tool">
		            <input type="hidden" name="recordid" value=""></input>
		            <input type="button" value="确认" class="ui_input_btn ui_input_btn_yes rejectBoxSubmit" />
		            <input type="button" value="关闭" class="ui_input_btn rejectBoxClose" />
		        </div>
		    </div>
    </div>

<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript" src="assets/scripts/common/frame.js"></script>
<script>
$(function(){
	//td里显示的文字的字数
	showTd();
	function showTd(){
		var tds=$('table td.describe');
		tds.each(function(){
			var len=$(this).html().length;
			if(len>24){
				var oLeft=parseInt($(this).offset().left);
				var oldVal=$(this).html();
				var val=$(this).html().substring(0,24);
				$(this).html(val+'...'+'<span style="position:absolute;background:#fff;border:1px solid #999;width:200px;border-radius:5px;display:none;z-index:5;display:none;padding:5px;left:'+oLeft+'px;">'+oldVal+'</span>');
			}
		});
		
	}
	$('td').mouseover(function(){
		$(this).find('span').show();
	}); 
	$('td').mouseout(function(){
		$(this).find('span').hide();
	});
	
	//全选
	$('.checkAll').on('click',function(){
		var check=$(this).attr('checked');
		if(check=="checked"){
			$('input[type="checkbox"]').attr('checked',true);
		}else{
			$('input[type="checkbox"]').attr('checked',false);
		};
	});
	
    $('input[type="checkbox"]').on('click',function(){
    	if($(this).attr('checked') != 'checked'){
    		$('.checkAll').attr('checked',false);
    	}
    });
    //单个同意
    $('.accept').click(function(){
    	var recordid=$(this).attr('data-id');
    	var name=$(this).attr('data-name');
    	var room=$(this).attr('data-room');
    	var intime=$(this).attr('data-intime');
    	var token=$('input[name="token"]').val();
    	if(!recordid){
    		alert("没有该记录");
    		return false;
    	}
    	
    	if(!token){
    		alert("非法提交");
    		return false;
    	}
    	
    	var questArr={
    		orderid:recordid,
    		token:token
    	}
    	var questURL=runParams.mainUrl+'kf_agree.do';
		if(confirm("同意将患者"+name+"在"+intime+"日转入到病房"+room+"吗？")){
			//同意逻辑
			$.post(questURL,questArr,function(result){
				if(result){
					alert("操作成功！");
					window.location.href="pass.html";
				}else{
					//alert("操作失败！原因：订单已经被取消，请刷新数据");
					alert("操作失败！");
					location.reload();
				}
			});
		}
	}); 
		
    
  //批量同意按钮点击示范
	$('.acceptAll').click(function(){
		var token=$('input[name="token"]').val();
		var len=$('td input[type="checkbox"]:checked').length;
		var str='';
		
		$('td input[type="checkbox"]:checked').each(function(){
			 var recordid= $(this).val();
			 str+=recordid+',';
		});
		str=str.substring(0,str.length-1);
		
		if(len<1){
			alert("您没有进行批量选择，请重新选择!");
			return false;
			
		}
		
		if(!token){
			alert("非法提交");
			return false;
		}
		
		if(confirm("同意将选中的 "+len+" 位患者转入到我院吗？")){
			//批量同意逻辑
			var questArr={
				orderids:str,
				token:token
			};
			var questURL=runParams.mainUrl+'kf_agrees.do';
			$.post(questURL,questArr,function(result){
				if(result){
					alert("操作成功");
					window.location.href="pass.html";
					return false;
					
				}else{
					alert("操作失败");
					location.reload();
				}
			});
		}
	});
  
  
  //点击拒绝   弹出模态框
  
	$('.reject').click(function(){
		var recordid=$(this).attr('data-id');
		var name=$(this).attr('data-name');
		var room=$(this).attr('data-room');
		var time=$(this).attr('data-intime');
		var hos=$(this).attr('data-hos');
		
		
		if(!recordid){
			alert("没有找到该用户");
			return false;
		}
		
		$('.rejectBox .name').html(name);
		$('.rejectBox .room').html(room);
		$('.rejectBox .time').html(time);
		$('.rejectBox .hos').html(hos);
		$('.rejectBox input[name="recordid"]').val(recordid);
		
		
		$(this).parents('tr').children('td').addClass('checked');
		var left = (parseInt($(window).width())+280-400)/2-280;
		$('.rejectBox').css({
			"margin-top":"50px",
			"margin-left":left
		});
		$('.rejectBox textarea').val("");
		//$('.rejectBox').show();
		
		$('.modal').show();
		$('.modal').css('overflow','scroll');
		$('body').css('overflow','hidden');
	});
	
	
	//拒绝框里的确认按钮
	$('.rejectBoxSubmit').click(function(){
		//驳回逻辑
		
		var name=$('.rejectBox .name').html();
		var age=$('.rejectBox .age').html();
		var sex=$('.rejectBox .sex').html();
		var hos=$('.rejectBox .hos').html();
		var recordid=$('.rejectBox input[name="recordid"]').val();
		var rejectReason=$('.rejectBox textarea').val();
		var token=$('input[name="token"]').val();
		
		if(!recordid){
			alert("没有该用户id");
			return false;
		}
		if(!rejectReason){
			alert("没有添加驳回理由");
			return false;
		}
		
		if(!token){
			alert("非法提交");
			return false;
		}
		
		var questArr={
				orderid:recordid,
				reason:rejectReason,
				token:token
		}
		var questURL=runParams.mainUrl+'kf_reject.do';
		
		$.post(questURL,questArr,function(result){
			
			if(result){
				alert("驳回成功");
				window.location.href="reject.html";
				
			}else{
				alert("驳回失败");
				$('.modal').hide();
				$('.modal').css('overflow','hidden');
				$('body').css('overflow','scroll');
				location.reload();
			}
			
		});
		
		$('.table .checked').removeClass('checked');
		//$('.rejectBox').hide();
		
	});
	
	
  
  
	
	//设置菜单
	showMainMenu('order');
	menuInit();
	function menuInit(){
		var leftFrame = $(window.parent.frames["leftFrame"].document);
		leftFrame.find('.menuTree a').removeClass('active');
		leftFrame.find('.ddgl').addClass("active");
		leftFrame.find('.needConfirm').addClass("active");
		//让被选中
		leftFrame.find('input[value="0"]').attr('checked',true);
	}
	$('.table tr').hover(
        function(){
        	$(this).children('td').css('background','#dedede');
        },
        function(){
        	$(this).children('td').css('background','#fff');
        }
    );
	$('.rejectBox li a').click(function(){
		$('.rejectBox textarea').val($(this).html());
	});
	$('.rejectBoxClose').click(function(){
		$('.table .checked').removeClass('checked');
		//$('.rejectBox').hide();
		$('.modal').hide();
		$('.modal').css('overflow','hidden');
		$('body').css('overflow','scroll');
	});
	
	
	
	//分页
	//显示上一页和下一页
	 showPage();
	function showPage(){
		var page=parseInt($('input[name="page"]').val());
		var totalPage=parseInt($('input[name="totalPage"]').val());
		if(page==1){
			$('.back').hide();
		}else{
			$('.back').show();
		}
		
		if(page==totalPage){
			$('.next').hide();
		}else{
			$('.next').show();
		}
		
		if(totalPage==1){
			$('.rightcon').hide();
		}else{
			$('.rightcon').show();
		}
		
		
	}
	
	//第一页
	$('.first').on('click',function(){
		page=1;
		common_page(page);
	});
	//上一页
	$('.back').on('click',function(){
		var page=parseInt($('input[name="page"]').val());
		page=page-1;
		common_page(page);
	});
	//下一页
	$('.next').on('click',function(){
		var page=parseInt($('input[name="page"]').val());
		page=page+1;
		common_page(page);
	});
	//尾页
	$('.last').on('click',function(){
		var totalPage=$('input[name="totalPage"]').val();
		common_page(totalPage);
	});
	
	function common_page(page){
		$("#submitForm").attr("action", "needConfirm.html?page="+page+"&&hospital_id="+hospital_id).submit();
	}
    //跳页
    
	$('.jump').on('click',function(){
		//总页数
		var totalPage=$('input[name="totalPage"]').val();
		jumpInputPage(totalPage);
	});
	/*输入页跳转*/
	function jumpInputPage(totalPage){
		// 如果“跳转页数”不为空
		if($('#jumpNumTxt').val()!=''){
			var pageNum=parseInt($('#jumpNumTxt').val());
			// 如果跳转页数在不合理范围内，则置为1
			if(pageNum<1||pageNum>totalPage){
				alert('请输入合适的页码');
				pageNum=1;
			}
			$('#submitForm').attr('action','needConfirm.html?page='+pageNum+"&&hospital_id="+hospital_id).submit();
		}else{
			//跳转页数为空
			alert("您当前没有输入页数");
			$('#submitForm').attr('action','needConfirm.html?page='+1+"&&hospital_id="+hospital_id).submit();
		}
	}
	
	
	
})
</script>
</body>
</html>