<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang=”zh”>
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<link href="assets/style/authority/basic_layout.css" rel="stylesheet" type="text/css">
<link href="assets/style/authority/common_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="assets/scripts/authority/commonAll.js"></script>
<script type="text/javascript" src="assets/scripts/fancybox/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="assets/scripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="assets/style/authority/jquery.fancybox-1.3.4.css" media="screen"></link>
<script type="text/javascript" src="assets/cripts/artDialog/artDialog.js?skin=default"></script>
<title>信息管理系统</title>
<script type="text/javascript">
	$(document).ready(function(){
		/** 新增   **/
	    $("#addBtn").fancybox({
	    	'href'  : 'house_edit.html',
	    	'width' : 733,
	        'height' : 530,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'house_list.html';
	        }
	    });
		
	    /** 导入  **/
	    $("#importBtn").fancybox({
	    	'href'  : '/xngzf/archives/importFangyuan.action',
	    	'width' : 633,
	        'height' : 260,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'house_list.html';
	        }
	    });
		
	    /**编辑   **/
	    $("a.edit").fancybox({
	    	'width' : 733,
	        'height' : 530,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'house_list.html';
	        }
	    });
	});
	/** 用户角色   **/
	var userRole = '';

	/** 模糊查询来电用户  **/
	function search(){
		$("#submitForm").attr("action", "house_list.html?page=" + 1).submit();
	}

	/** 新增   **/
	function add(){
		$("#submitForm").attr("action", "/xngzf/archives/luruFangyuan.action").submit();	
	}
	 
	/** Excel导出  **/
	function exportExcel(){
		if( confirm('您确定要导出吗？') ){
			var fyXqCode = $("#fyXq").val();
			var fyXqName = $('#fyXq option:selected').text();
//	 		alert(fyXqCode);
			if(fyXqCode=="" || fyXqCode==null){
				$("#fyXqName").val("");
			}else{
//	 			alert(fyXqCode);
				$("#fyXqName").val(fyXqName);
			}
			$("#submitForm").attr("action", "/xngzf/archives/exportExcelFangyuan.action").submit();	
		}
	}
	
	/** 删除 **/
	function del(fyID){
		// 非空判断
		if(fyID == '') return;
		if(confirm("您确定要删除吗？")){
			$("#submitForm").attr("action", "/xngzf/archives/delFangyuan.action?fyID=" + fyID).submit();			
		}
	}
	
	/** 批量删除 **/
	function batchDel(){
		if($("input[name='IDCheck']:checked").size()<=0){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'至少选择一条', ok:true,});
			return;
		}
		// 1）取出用户选中的checkbox放入字符串传给后台,form提交
		var allIDCheck = "";
		$("input[name='IDCheck']:checked").each(function(index, domEle){
			bjText = $(domEle).parent("td").parent("tr").last().children("td").last().prev().text();
// 			alert(bjText);
			// 用户选择的checkbox, 过滤掉“已审核”的，记住哦
			if($.trim(bjText)=="已审核"){
// 				$(domEle).removeAttr("checked");
				$(domEle).parent("td").parent("tr").css({color:"red"});
				$("#resultInfo").html("已审核的是不允许您删除的，请联系管理员删除！！！");
// 				return;
			}else{
				allIDCheck += $(domEle).val() + ",";
			}
		});
		// 截掉最后一个","
		if(allIDCheck.length>0) {
			allIDCheck = allIDCheck.substring(0, allIDCheck.length-1);
			// 赋给隐藏域
			$("#allIDCheck").val(allIDCheck);
			if(confirm("您确定要批量删除这些记录吗？")){
				// 提交form
				$("#submitForm").attr("action", "/xngzf/archives/batchDelFangyuan.action").submit();
			}
		}
	}

	/** 普通跳转 **/
	function jumpNormalPage(page){
		$("#submitForm").attr("action", "house_list.html?page=" + page).submit();
	}
	
	/** 输入页跳转 **/
	function jumpInputPage(totalPage){
		// 如果“跳转页数”不为空
		if($("#jumpNumTxt").val() != ''){
			var pageNum = parseInt($("#jumpNumTxt").val());
			// 如果跳转页数在不合理范围内，则置为1
			if(pageNum<1 | pageNum>totalPage){
				art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'请输入合适的页数，\n自动为您跳到首页', ok:true,});
				pageNum = 1;
			}
			$("#submitForm").attr("action", "house_list.html?page=" + pageNum).submit();
		}else{
			// “跳转页数”为空
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'请输入合适的页数，\n自动为您跳到首页', ok:true,});
			$("#submitForm").attr("action", "house_list.html?page=" + 1).submit();
		}
	}
</script>
<script type="text/javascript">
			$(function(){
				$('.Tinput input:hover').css('color','red'); 
			     /*$('.Tinput tr').hover(function(){
					 $(this).find('input,textarea').css({'background':'rgb(205, 218, 235) none repeat scroll 0% 0%'});
					 },function(){
					 $(this).find('input,textarea').css({'background':'rgb(255, 255, 255) none repeat scroll 0 0','border-color':'none'});
					 });
					 */
				   //css({'background':'rgb(205, 218, 235) none repeat scroll 0% 0%','border-color':'none'});
			
			});
			
			      
</script>
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
   



	<form id="submitForm" name="submitForm" action="" method="post">
		<input type="hidden" name="allIDCheck" value="" id="allIDCheck"/>
		<input type="hidden" name="fangyuanEntity.fyXqName" value="" id="fyXqName"/>
		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
					<div id="box_border">
						<div id="box_top">工具条</div>
						<div id="box_center" style="display:inline-block;">
                        时间&nbsp;&nbsp;<input type="text" id="fyZldz" name="fangyuanEntity.fyZldz" class="ui_input_txt02" />
							
							<select name="fangyuanEntity.fyXqCode" id="fyXq" class="ui_select01" onchange="getFyDhListByFyXqCode();" style="margin-left:20px;">
                                <option value=""
                                >--请选择--</option>
                                <option value="6">完成</option>
                                <option value="77">未完成</option>
                                
                            </select>
                           

						</div>
						<div id="box_bottom" style="display:inline-block; float:right;margin-right:20px;margin-top:10px;">
							<input type="button" value="评定" class="ui_input_btn01" onclick="search();" /> 
							<input type="button" value="康复计划" class="ui_input_btn01" id="addBtn" /> 
							
						</div>
					</div>
				</div>
			</div>
           <style>
			       .box_top{
				       background: #044599 none repeat scroll 0 0;
					  color: #fff;
					  height: 37px;
					  line-height: 37px;
					  padding-left: 20px;
				   }
				  
               </style>
            
           
			<div class="ui_content">
				<div class="ui_tb">
                <div class="box_top">康复评估</div>
					<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
						<tr>
							
							<td>编号</td>
							<td>名称</td>
							<td>评定时间</td>
							<td>次数</td>
							<td>操作</td>
						</tr>
							<tr>
								
								<td>001</td>
								<td>关节肌力</td>
								<td>2011-11-20</td>
								<td>2</td>
								<td>
                                <a href="" class="edit">查看</a> 
									<a href="" class="edit">修改</a> 
									<a href="">删除</a>
								</td>
							</tr>
						
							<tr>
								
								<td>001</td>
								<td>Tinetti评定</td>
								<td>2011-11-20</td>
								<td>2</td>
								<td>
                                <a href="" class="edit">查看</a> 
									<a href="" class="edit">修改</a> 
									<a href="">删除</a>
								</td>
							</tr>
						
							<tr>
								
								<td>001</td>
								<td>国际功能标准损伤神经功能分级</td>
								<td>作业治疗计划</td>
								<td>2</td>
								<td>
                                <a href="" class="edit">查看</a> 
									<a href="" class="edit">修改</a> 
									<a href="">删除</a>
								</td>
							</tr>
						
							<tr>
								
								<td>001</td>
								<td>名称1</td>
								<td>2011-11-20</td>
								<td>2</td>
								<td>
                                <a href="" class="edit">查看</a> 
									<a href="" class="edit">修改</a> 
									<a href="">删除</a>
								</td>
							</tr>
					
					</table>
				</div>
            </div>
          
				<div class="ui_tb_h30">
					<div class="ui_flt" style="height: 30px; line-height: 30px;">
						共有
						<span class="ui_txt_bold04">90</span>
						条记录，当前第
						<span class="ui_txt_bold04">1
						/
						9</span>
						页
					</div>
					<div class="ui_frt">
						<!--    如果是第一页，则只显示下一页、尾页 -->
						
							<input type="button" value="首页" class="ui_input_btn01" />
							<input type="button" value="上一页" class="ui_input_btn01" />
							<input type="button" value="下一页" class="ui_input_btn01"
								onclick="jumpNormalPage(2);" />
							<input type="button" value="尾页" class="ui_input_btn01"
								onclick="jumpNormalPage(9);" />
						
						
						
						<!--     如果是最后一页，则只显示首页、上一页 -->
						
						转到第<input type="text" id="jumpNumTxt" class="ui_input_txt01" />页
							 <input type="button" class="ui_input_btn01" value="跳转" onclick="jumpInputPage(9);" />
					</div>
				</div>
			
		</div>
	</form>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>