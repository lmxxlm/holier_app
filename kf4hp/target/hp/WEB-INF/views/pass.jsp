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
td a img{width:30px;height:20px;}
</style>
</head>


<body>
    <div id="frameMain">
        <div id="top_nav">当前位置：<a href="javascript:;">订单管理</a>&nbsp;>&nbsp;已确认转院</div>
         <form id="submitForm" name="submitForm" action="" method="post">
        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
            <tr>
                <th width="6%">患者</th>
                <th width="11%">医院</th>
                <th width="20%">病情描述</th>
                <th width="10%">预约病房</th>
                <th width="10%">小结图片</th>
                <th width="10%">入住时间</th>
                <th width="6%">接送</th>
                <th width="10%">联系方式</th>
            </tr>
            <c:if test="${noRecord==true}">
                <tr><td colspan="11">暂无转院记录！</td></tr>
            </c:if>
            <c:forEach items="${orderList}" var="record">
                 <tr>
                    <td>${record.patient_name}</td>
                    <td>${record.hospital_name}</td>
                    <td class="describe">${record.patient_desc}</td>
                    <td>${record.bedroom_name}</td>
                    <td> 
	                    <c:forEach items="${record.report_images}" var="report_images">
                         <a href="${report_images.fileName}" target="_blank" class="conImg"><img src="${report_images.middle}"/></a>
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
                    <td style="color:red;">${record.patient_phone}</td>
                </tr>
            </c:forEach>
              
        </table>
        </form>
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
				var oldVal=$(this).html();
				var val=$(this).html().substring(0,24);
				$(this).html(val+'...'+'<span style="position:absolute;left:200px;border:1px solid black;background:#fff;display:none;z-index:5;display:none;padding:5px;">'+oldVal+'</span>');
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
});

$(function(){
	
	//设置菜单
	showMainMenu('order');
	menuInit();
	function menuInit(){
		var leftFrame = $(window.parent.frames["leftFrame"].document);
		leftFrame.find('.menuTree a').removeClass('active');
		leftFrame.find('.ddgl').addClass("active");
		leftFrame.find('.pass').addClass("active");
		leftFrame.find('input[value="1"]').attr('checked',true);
	}
    $('.table tr').hover(
        function(){
        	$(this).children('td').css('background','#dedede');
        },
        function(){
        	$(this).children('td').css('background','#fff');
        }
    );
})

$(function(){
	
	
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
		$("#submitForm").attr("action", "pass.html?page="+page+"&&hospital_id="+hospital_id).submit();
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
			$('#submitForm').attr('action','pass.html?page='+pageNum+"&&hospital_id="+hospital_id).submit();
		}else{
			//跳转页数为空
			alert("您当前没有输入页数");
			$('#submitForm').attr('action','pass.html?page='+1+"&&hospital_id="+hospital_id).submit();
		}
	}
	
	
});
</script>
</body>
</html>