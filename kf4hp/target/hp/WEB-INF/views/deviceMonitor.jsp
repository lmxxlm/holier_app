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
<title>设备监控 </title>
<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
</head>
<style type="text/css">
    .ui_select{width:10%;text-align:center;}
    .right{
        float:right;
    }
    .tableFilter tbody tr th {
	    background: #044599 none no-repeat scroll 0 0;
	    border-color: #02397f;
	    border-style: solid;
	    border-width: 1px;
	    color: #fff;
	    font-size: 14px;
	    height: 37px;
	    letter-spacing: 2px;
	    text-align: center;
	    text-transform: uppercase;
    }
	.tableFilter tr {
		line-height:30px;
		font-size: 15px;
	 }
	 .tableFilter tr td:first-child{
	    text-align:center;
	    line-height: 30px;
        vertical-align: top;
        color: #333;
	 }
	 .tableFilter tr a{
	      color: #337ab7;
   		 text-decoration: none;
   		 display: inline-block; 
    	margin-right: 8px;
	 }
	 
	 .tableFilter tr a:hover{color: red;}
	 .table tr td{text-align:center;}
	 .box .div,.table div{
	     width:20px;
	     height:20px;
	     border:1px solid black;
	     display:inline-block;
	 }
	.box .div.red, .table div.red{
	 	background:red;
	 }
	.box .div.green,  .table div.green{
	 	background:green;
	 }
	 
	.box .div.purple, .table div.purple{
	 	background:purple;
	 }
	 
	 
	 .title{
	    background: #044599 none no-repeat scroll 0 0;
	    border-color: #02397f;
	    border-style: solid;
	    border-width: 1px;
	    color: #fff;
	    font-size: 15px;
	    height: 25px;
	    letter-spacing: 2px;
	    text-align: center;
	    text-transform: uppercase;
	    line-height:25px;
	    font-weight:bold;
	 }
	 .box  div{float:left;clear:both;}
	 .box span{
	    display:inline-block;
	    padding-right:5px;
	     padding-left:3px;
	    margin-right:5px;
	   text-align:center;
	   
	 }
	.box .prev,.box .nextv{
	background: #044599 none no-repeat scroll 0 0;
	border-color: #02397f;
	    border-style: solid;
	    border-width: 1px;
	    color: #fff;
	    font-size: 14px;
	    border-radius:5px;
	}
	
</style>

<body>
    <div id="frameMain">
        <div id="top_nav">当前位置：系统&nbsp;>&nbsp;系统介绍</div>
        <div class="departFilter">
            <table class="tableFilter" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
               <tr><th colspan="2">筛选器</th></tr>
                <tr>
                   <td width="50px">科室:</td>
                   <td>
                       <a class="active" href="javascript:void(0);">全部</a>
                       <a href="javascript:void(0);">康复一科</a>
                       <a href="javascript:void(0);">康复二科</a>
                       <a href="javascript:void(0);">康复三科</a>
                   </td>
                </tr>
                <tr>
                   <td>病区:</td>
                   <td>
                       <a class="active" href="javascript:void(0);">全部</a>
                       <a href="javascript:void(0);">PT</a>
                       <a href="javascript:void(0);">ST</a>
                       <a href="javascript:void(0);">OT</a>
                       <a href="javascript:void(0);">房间101</a>
                       <a href="javascript:void(0);">房间102</a>
                       <a href="javascript:void(0);">房间103</a>
                   </td>
                </tr>
                <tr>
                   <td>设备:</td>
                   <td>
                       <a class="active" href="javascript:void(0);">全部</a>
                       <a href="javascript:void(0);">颈椎牵引器</a>
                       <a href="javascript:void(0);">跑步机</a>
                       <a href="javascript:void(0);">轮椅</a>
                       <a href="javascript:void(0);">床位</a>
                       <a href="javascript:void(0);">...</a>
                   </td>
                </tr>
            </table>
        </div>
        
         <form id="submitForm" name="submitForm" action="" method="post">
            <input type="hidden" name="allIDCheck" value="" id="allIDCheck"/>
		    <input type="hidden" name="fangyuanEntity.fyXqName" value="" id="fyXqName"/>
                <div class="contentBox">
		            <div class="title">工具栏</div>
		            <div class="box">
		       			     选择时间：
							<select name="fangyuanEntity.fyXqCode" id="fyXq" class="ui_select" onchange="getFyDhListByFyXqCode();">
                                <option value=""
                                >--开始时间--</option>
                                <option value="6">8：00</option>
                                <option value="77">9：00</option>
                                <option value="83">10：00</option>
                                <option value="83">11：00</option>
                            </select>

							--
							<select name="fangyuanEntity.fyDhCode" id="fyDh" class="ui_select">
                                <option value="">--结束时间--</option>
                                <option value="76">11：00</option>
                                <option value="10">12：00</option>
                                <option value="14">13：00</option>
                            </select>
							&nbsp;&nbsp;
							<select name="fangyuanEntity.fyHxCode" id="fyHx" class="ui_select">
                                <option value="">--选择某天--</option>
                                <option value="76">2016-06-05</option>
                                <option value="10">2016-07-08</option>
                                <option value="14">2016-09-10</option>
                                <option value="71">2017-02-05</option>
                            </select>
                            
                            &nbsp;&nbsp;<input type="button" value="近一周" class="ui_input_btn"></input>
                            &nbsp;&nbsp;<input type="button" value="近一月" class="ui_input_btn"></input>
							&nbsp;&nbsp;
							<select name="fangyuanEntity.fyStatus" id="fyStatus" class="ui_select" >
                                <option value="">--开始--</option>
                                <option value="26">2011-02-04</option>
                                <option value="25">2002-05-06</option>
                                <option value="13">2003-08-08</option>
                            </select>
		                --
		                <select class="ui_select" >
		                    <option value="">--结束--</option>
		                    <option value="26">2011-03-33</option>
		                    <option value="25">2033-92-20</option>
		                    <option value="13">1022-30-39</option>
		                </select>
		            </div>
		            <div class="box">
		                <p><span><div class="red div"></div><span class="mark">:已满</span></span><span><div class="green div"></div><span class="mark">:空着</span></span><span><div class="purple div" class="mark"></div><span class="mark">:占用</span></span><div class="clear"></div></p> 
		             <!--    <div class="clearFloat"><div class="red div"></div><div>:已满</div><div class="green div"></div><div>:空着</div><div class="purple div" class="mark"></div><div>:占用</div><div class="clear"></div></div>-->
		            </div>
		            <div class="box">
		            	<input type="button " value="上一天" class="ui_input_btn prev"></input>
		            	<input type="button " value="下一天" class="ui_input_btn nextv right" ></input>
		            </div>
	          </div>
        
            </form>
        
        
        
        
        
        
        
        
        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
					
						<tr>
							<th>天视图</th>
							<th>8：30 </br>9：00</th>
							<th>9：30 </br>10:00</th>
							<th>9：30 </br>10:00</th>
							<th>10:30</br>11:00</th>
							<th>11:30 </br>12:00</th>
							<th>12:30</br>13:00</th>
							<th>1:30 </br>2:00</th>
							<th>2:30 </br>3:00</th>
							<th>2:30 </br>3:00</th>
							<th>3:30 </br>4:00</th>
							<th>4:30 </br>5:00</th>
							<th>5:30 </br>6:00</th>
							<th>6:30 </br>7:00</th>
							<th>设备利用率</th>
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
								<td>病床101</td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="purple"></div></td>
								<td><div class="purple"></div></td>
								<td><div class="red"></div></td>
								<td>80%</td>
							</tr>
						
							<tr>
								<td>病床101</td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="purple"></div></td>
								<td><div class="purple"></div></td>
								<td><div class="red"></div></td>
								<td>80%</td>
							</tr>
						
							<tr>
								<td>病床101</td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="purple"></div></td>
								<td><div class="purple"></div></td>
								<td><div class="red"></div></td>
								<td>80%</td>
							</tr>
						
							<tr>
								<td>病床101</td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="purple"></div></td>
								<td><div class="purple"></div></td>
								<td><div class="red"></div></td>
								<td>80%</td>
							</tr>
						
							<tr>
								<td>病床101</td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="green"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="red"></div></td>
								<td><div class="purple"></div></td>
								<td><div class="purple"></div></td>
								<td><div class="red"></div></td>
								<td>80%</td>
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
/*
window.onload = function () {
    var datetime = document.getElementById('span_datetime');
    setInterval(function () {
        var date = new Date();
        datetime.innerHTML = date.getHours() + ':' + date.getMinutes();
    }, 1000);
}
*/
</script>
<script type="text/javascript">
$(function(){
	$('.table tr td').hover(function(index,ele){
		var i=$(this).index();
		$('.table tr').each(function() {
	    	
	         $(this).find("td").eq(i).css('background-color','green').siblings().css('background-color','white');
	        });
	});
	
	
   });

    /*让table的每一列进行变色*/
    $('.table tr td').hover(function(){
        $('td').eq(2).css("background","red");
    	$('.table tr').each(function() {
        	$(this).find("td").eq(2).css("color","blue")
    	});
    });
     
    //$('.table tr td :hover').eq(1).css('background','red');
    
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
    
    $('.table tr').mouseover(function(){
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