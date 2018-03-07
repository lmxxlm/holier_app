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
<title>康复管理平台</title>
<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
</head>
<style type="text/css">
    .ui_select{width:10%;text-align:center;}
    .right{
        float:right;
    }
</style>

<body>
    <div id="frameMain">
        <div id="top_nav">当前位置：系统&nbsp;>&nbsp;系统介绍</div>
            <form id="submitForm" name="submitForm" action="" method="post">
            <input type="hidden" name="allIDCheck" value="" id="allIDCheck"/>
		    <input type="hidden" name="fangyuanEntity.fyXqName" value="" id="fyXqName"/>
                <div class="contentBox">
		            <div class="title">工具栏</div>
		            <div class="box">
		            医院
							<select name="fangyuanEntity.fyXqCode" id="fyXq" class="ui_select" onchange="getFyDhListByFyXqCode();">
                                <option value=""
                                >--请选择--</option>
                                <option value="6">医院1</option>
                                <option value="77">医院2</option>
                                <option value="83">医院3</option>
                            </select>

							科室
							<select name="fangyuanEntity.fyDhCode" id="fyDh" class="ui_select">
                                <option value="">--请选择--</option>
                                <option value="76">科室1</option>
                                <option value="10">科室2</option>
                                <option value="14">科室3</option>
                            </select>
							设备名
							<select name="fangyuanEntity.fyHxCode" id="fyHx" class="ui_select">
                                <option value="">--请选择--</option>
                                <option value="76">设备名1</option>
                                <option value="10">设备名2</option>
                                <option value="14">设备名3</option>
                                <option value="71">设备名4</option>
                            </select>
							设备号
							<select name="fangyuanEntity.fyStatus" id="fyStatus" class="ui_select" >
                                <option value="">--请选择--</option>
                                <option value="26">设备号1</option>
                                <option value="25">设备号2</option>
                                <option value="13">设备号3</option>
                                <option value="12">设备号4</option>
                                <option value="24">设备号5</option>
                                <option value="23">设备号6</option>
                                
                            </select>
		                下拉框
		                <select class="ui_select" >
		                    <option value="">--请选择--</option>
		                    <option value="26">option1</option>
		                    <option value="25">option2</option>
		                    <option value="13">option3</option>
		                </select>
		                    输入框&nbsp;&nbsp;<input type="text" class="ui_input_txt" style="width:150px;"/>
		            </div>
		            <div class="box right">
		                <input type="button" value="查询" class="ui_input_btn" onclick="search();" /> 
						<input type="button" value="新增" class="ui_input_btn" id="addBtn" /> 
						 <input type="button" value="删除" class="ui_input_btn" onclick="batchDel();" />
						<input type="button" value="导入" class="ui_input_btn" id="importBtn" />
						<input type="button" value="导出" class="ui_input_btn" onclick="exportExcel();" />
		                <input type="button" value="按钮" class="ui_input_btn" /> 
		            </div>
	          </div>
        
            </form>
        
        
        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
					
						<tr>
							<th width="30"><input type="checkbox" id="all" onclick="selectOrClearAllCheckbox(this);" />
							</th>
							<th>医院</th>
							<th>科室</th>
							<th>房间号</th>
							<th>设备名</th>
							<th>设备号</th>
							<th>添加人</th>
							<th>添加时间</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					<!-- 
						<c:if test="${noproduct == true}">
							<tr>
								<td colspan="9">请添加医院管理数据。</td>
							</tr>
						</c:if>
						<c:forEach items="${hos.manage}" var="hos">
							<tr>
							    <td><input type="checkbox" name="IDCheck" value="${hos.id}" class="acb" /></td>
								<td>${hos.hosName}</td>
								<td>${hos.province}</td>
								<td>${hos.grade}</td>
								<td>${hos.mark}</td>
								<td>${hos.address}</td>
								<td>${hos.tel}</td>
								<td class="td1">
									<a href="equipment_edit.html?hosId=${hos.hosId}" data-id="${hos.id}" class="edit">修改</a>
									<a href="javascript:del('${hos.hosId}');"  class="delete">删除</a>
								</td>
							</tr>
						</c:forEach>
					 -->   
							<tr>
								<td><input type="checkbox" name="IDCheck" value="111" class="acb" /></td>
								<td>医院1</td>
								<td>科室1</td>
								<td>房间号1</td>
								<td>设备名1</td>
								<td>添加人1</td>
								<td>添加时间1</td>
								<td>状态1</td>
								<td>操作1</td>
								<td>
									<a href="equipment_edit.html?fyID=14458579642011" class="edit">编辑</a> 
									<a href="javascript:del('14458579642011');">删除</a>
								</td>
							</tr>
						
							<tr>
								<td><input type="checkbox" name="IDCheck"  value="222" class="acb" /></td>
								<td>医院1</td>
								<td>科室1</td>
								<td>房间号1</td>
								<td>设备名1</td>
								<td>添加人1</td>
								<td>添加时间1</td>
								<td>状态1</td>
								<td>操作1</td>
								<td>
									<a href="equipment_edit.html?fyID=14458625716623" class="edit">编辑</a> 
									<a href="javascript:del('14458625716623');">删除</a>
								</td>
							</tr>
						
							<tr>
								<td><input type="checkbox" name="IDCheck"  class="acb" /></td>
								<td>医院1</td>
								<td>科室1</td>
								<td>房间号1</td>
								<td>设备名1</td>
								<td>添加人1</td>
								<td>添加时间1</td>
								<td>状态1</td>
								<td>操作1</td>
								<td>
									<a href="equipment_edit.html?fyID=14458592537463" class="edit">编辑</a> 
									<a href="javascript:del('14458592537463');">删除</a>
								</td>
							</tr>
						
							<tr>
								<td><input type="checkbox" name="IDCheck"  class="acb" /></td>
								<td>医院1</td>
								<td>科室1</td>
								<td>房间号1</td>
								<td>设备名1</td>
								<td>添加人1</td>
								<td>添加时间1</td>
								<td>状态1</td>
								<td>操作1</td>
								<td>
									<a href="equipment_edit.html?fyID=14458632171244" class="edit">编辑</a> 
									<a href="javascript:del('14458632171244');">删除</a>
								</td>
							</tr>
						
							<tr>
								<td><input type="checkbox" name="IDCheck" class="acb" /></td>
								<td>医院1</td>
								<td>科室1</td>
								<td>房间号1</td>
								<td>设备名1</td>
								<td>添加人1</td>
								<td>添加时间1</td>
								<td>状态1</td>
								<td>操作1</td>
								<td>
									<a href="equipment_edit.html?fyID=14458599318263" class="edit">编辑</a> 
									<a href="javascript:del('14458632171244');"  class="delete">删除</a>
								</td>
							</tr>
						
					</table>
		<div class="contentBox">
            <div class="ui_flt leftcon">
                共有&nbsp;<span class="ui_txt_bold">90</span>&nbsp;条记录，当前第&nbsp;<span class="ui_txt_bold">1&nbsp;/&nbsp;9</span>&nbsp;页
            </div>
            <div class="ui_frt rightcon">
                <input type="button" value="首页" class="ui_input_btn" onclick="jumpNormalPage(2);" />
                <input type="button" value="上一页" class="ui_input_btn" onclick="jumpNormalPage(1);" />
                <input type="button" value="下一页" class="ui_input_btn" onclick="jumpNormalPage(2);" />
                <input type="button" value="尾页" class="ui_input_btn" onclick="jumpNormalPage(9);" />
                转到第&nbsp;<input type="text" id="jumpNumTxt" class="ui_input_txt" style="width:25px;" />&nbsp;页
                <input type="button" class="ui_input_btn" value="跳转" onclick="jumpInputPage(9);" />
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript" src="assets/scripts/jquery/jquery.js"></script>
<script type="text/javascript" src="assets/scripts/fancybox/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="assets/scripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="assets/style/authority/jquery.fancybox-1.3.4.css" media="screen"></link>
<script type="text/javascript" src="assets/scripts/artDialog/artDialog.js?skin=default"></script>
<script type="text/javascript">



	/** 模糊查询来电用户  **/
	function search(){
		$("#submitForm").attr("action", "equipment_list.html?page=" + 1).submit();
	}
	
	/*分页*/
     /*普通跳转*/
     function jumpNormalPage(page){
		$('#submitForm').attr("action","equipment_list.html?page+="+page).submit();
	}
	
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
			$('#submitForm').attr('action','equipment_list.html?page='+pageNum).aubmit();
		}else{
			//跳转页数为空
			alert("您当前没有输入页数");
			$('#submitForm').attr('action','equipment_list.html?page='+1).submit();
		}
	}
	
     /** 删除 **/
     function del(hosId){
    	 //非空判断
    	 if(hosId=='') return;
    	 if(confirm("你确定要删除该数据吗？")){
    		 $('#submitForm').attr('action',"delete.action?hosId=" + hosId).submit();
    	 }
     }
  
     
     /** 批量删除 **/
    function  batchDel(){
    	var IDchecks=$('input[name="IDCheck"]:checked');
    	var allIDcheck="";
    	 if(IDchecks.size()<=0){
    		 art.dialog({icon:'error',title:'友情提示',drag:false,resize:false,content:'至少选一条'});
    		 return;
    	 }else{
    		// 1）取出用户选中的checkbox放入字符串传给后台,form提交
    	    	
    	    	IDchecks.each(function(index,domEle){//domEle表示当前所购选对象
    	    		allIDcheck+=$(domEle).val()+',';
    	    	});
    	 }
    	// 截掉最后一个","
    	if(allIDcheck.length>0){
    		allIDcheck=allIDcheck.substring(0,allIDcheck.length-1);
    		//赋值给form里的隐藏域
    		$('#allIDcheck').val(allIDcheck);
    		if(confirm("你确定要删除这些记录吗？")){
    			//提交form
    			$('#submitForm').attr('action','batchDel.action').submit();
    			
    		}
    	}
     }
     
    /* 是否全选   */ 
    function selectOrClearAllCheckbox(obj){
    	
    	var checkStatus=$(obj).attr("checked");
    	if(checkStatus==true){
    		$('input[type="checkbox"]').attr("checked",true);
    		
    	}else{
    		$('input[type="checkbox"]').attr("checked",false);
    	}
    	
    	
    }
    
    /*只要有一个没勾选中，总按钮就取消*/
    $('input[name="IDCheck"]').click(function(){
    	var status=$(this).attr("checked");
    	if(status==false){
    		$('#all').attr("checked",false);
    	}
    }); 
   
     
    /** 新增   **/
    $("#addBtn").fancybox({
    	'href':'equipment_edit.html',
    	'width':500,
    	'height':350,
    	'type':'iframe',
    	'hideOnOverlayClicck':false,
    	'showCloseButton':false,
    	'onClosed':function(){
    		window.location.href='equipment_list.html';
    	}
    });
    
    /**编辑   **/
    $("a.edit").fancybox({
    	'width' : 500,
        'height' : 350,
        'type' : 'iframe',
        'hideOnOverlayClick' : false,
        'showCloseButton' : false,
        'onClosed' : function() { 
        	window.location.href = 'equipment_list.html';
        }
    });
    
    /*鼠标悬停换色*/
    
    $('table tr').mouseover(function(){
    	$(this).css({background:"#CDDAEB"});
    	$(this).children('td').each(function(index,ele){
    		$(ele).css({color: "#1D1E21"});
    	});
    }).mouseout(function(){
    	$(this).css({background:"#FFF"});
    	$(this).children('td').each(function(index,ele){
    		$(ele).css({color:"#909090"});
    	});
    });
    
    
    
</script>
</html>