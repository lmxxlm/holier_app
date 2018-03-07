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
#all{margin-right:4px;}
.disabled{display:none;}
</style>
</head>


<body>
    <div id="frameMain">
        <div id="top_nav">当前位置：病房管理</div>
         <form id="submitForm" name="submitForm" action="" method="post">
         </form>
        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
            <tr>
            <!-- 
                <th width="70"><input type="checkbox" id="all"  />全选
                </th>
            -->
                <th>病房名称</th>
                <th>列表图像</th>
                <th>参考价格</th>
                <th>建筑面积</th>
                <th>床位数</th>
                <th>所在楼层</th>
                <th>操作</th>
            </tr>
            <c:if test="${noRecord == true}">
               <tr >
                   <td colspan="9">暂无病房信息</td>
                </tr>
            </c:if>
            <c:forEach items="${bedRoomList}" var="record">
                 <tr>
                 <!--  
                    <td><input type="checkbox" name="IDCheck" value="${record.record_id}"  /></td>
                 -->
                    <td>${record.name}</td>
                    <td><a href="${record.image.fileName}" target="_blank" class="listImg"><img src="${record.image.small}" /></a></td>
                    <td>${record.price}元/人/天</td>
                    <td>${record.space}㎡</td>
                    <td>${record.bednumber}</td>
                    <td>${record.floor}楼</td>
                    <td><a href="wardInfo.html?roomId=${record.record_id}" class="detail">查看详情</a></td>
                </tr>
            </c:forEach>
                
            
        </table>
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
	//设置菜单
	showMainMenu('data');
	menuInit();
	function menuInit(){
		var leftFrame = $(window.parent.frames["leftFrame"].document);
		leftFrame.find('.menuTree a').removeClass('active');
		leftFrame.find('.bfgl').addClass("active");
		leftFrame.find('input[value="1"]').attr('checked',false);
		leftFrame.find('input[value="0"]').attr('checked',false);
	}
	$('.table tr').hover(
        function(){
        	$(this).children('td').css('background','#dedede');
        },
        function(){
        	$(this).children('td').css('background','#fff');
        }
    );
	/* 是否全选   */ 
	$('#all').click(function(){
		var checkStatus=$(this).attr("checked");
		if(checkStatus=="checked"){
    		$('input[type="checkbox"]').attr("checked",true);
    	}else{
    		$('input[type="checkbox"]').attr("checked",false);
    	}
		
	});

	
	 /*只要有一个没勾选中，总按钮就取消*/
    $('input[name="IDCheck"]').live('click',function(){
    	var status=$(this).attr("checked");
    	if(status!= "checked"){
    		$('#all').attr("checked",false);
    	}
    }); 
	 
})

$(function(){
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
		$("#submitForm").attr("action", "wards.html?page="+page+"&&hospital_id="+hospital_id).submit();
	}
    //跳页
    
	$('.jump').on('click',function(){
		//总页数
		var totalPage=$('input[name="totalPage"]').val();
		jumpInputPage(totalPage);
	});
	/*输入页跳转*/
	function jumpInputPage(totalPage){
		if($('#jumpNumTxt').val()!=''){
			var pageNum=parseInt($('#jumpNumTxt').val());
			// 如果跳转页数在不合理范围内，则置为1
			if(pageNum<1||pageNum>totalPage){
				alert('请输入合适的页码');
				pageNum=1;
			}
			$('#submitForm').attr('action','wards.html?page='+pageNum+"&&hospital_id="+hospital_id).submit();
		}else{
			//跳转页数为空
			alert("您当前没有输入页数");
			$('#submitForm').attr('action','wards.html?page='+1+"&&hospital_id="+hospital_id).submit();
		}
	}
	
});
</script>
</body>
</html>