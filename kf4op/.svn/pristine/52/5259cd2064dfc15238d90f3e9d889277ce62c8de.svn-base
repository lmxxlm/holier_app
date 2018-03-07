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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="./commons/runParams.html"%>
<title>OP后台</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<link href="assets/library/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet">
<link
	href="assets/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link
	href="assets/library/icons/pictoicons/css/picto-foundry-medical-science.css"
	rel="stylesheet">
<link
	href="assets/library/icons/pictoicons/css/picto-foundry-general.css"
	rel="stylesheet">
<link
	href="assets/library/icons/glyphicons/assets/css/glyphicons_regular.css"
	rel="stylesheet">
<link href="assets/css/recoveryAdmin/frame.css" rel="stylesheet">
<link href="assets/css/recoveryAdmin/datetimepickerReview.css"
	rel="stylesheet">
<link href="assets/css/recoveryAdmin/productOwner.css" rel="stylesheet">
<!--[if lt IE 9]>
            <script src="assets/library/respond/respond.js"></script>
        <![endif]-->
<script src="assets/library/modernizr/modernizr.js"></script>
<style>
.searchBar{ margin-top:0;}
#productStatus{ margin:12px; margin-bottom:0;}
.nav-tabs > li > a{background:#dedede;}
</style>
</head>
<body>
	<!--[if lt IE 7]>
            <p style="margin:0.2em 0;background:#ccc;color:#000;padding:0.2em 0;">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<div class="container-fluid">
		<%@ include file="./commons/leftMenu.jsp"%>
		<div id="content">
			<%@ include file="./commons/topMenu.jsp"%>
			<ol class="breadcrumb webmap">
				<li><a href="#">Home</a>
				</li>
				<li class="active">医院管理</li>
			</ol>
			<div class="searchBar row">
				<div class="smartSearch col-md-3 col-xs-3">
				    <form  id="searchForm" action="${mainUrl}hospital_manage.do" method="post">
				    <input type="hidden" name="cp" value=""/>
				    <input type="hidden" name="ps" value="${searchParam.ps}">
					<div class="input-group">
						<!--  <input type="hidden" name="hosId" value="${hosId}">--> 
						<input
							type="text" class="form-control" name="hospitalName"
							placeholder="请输入医院名称" autocomplete="off" value="${hospitalName}">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-search"></i>
						</span>
					</div>
					<ul class="searchResultForDoctor"></ul>
					</form>
				</div>
				<div class="addPat col-md-9 col-xs-9" style="padding-right:0;">
				    <a href="javascript:void(0)" class="btn btn-primary pull-right add_manage"
						onFocus="this.blur()">
						<span class="glyphicon glyphicon-plus-sign"></span>添加
					</a>
				</div>
			</div>
			
			<input type="hidden" name="token" value="${token}"/>
			
			<div class="mainBody">
				<!--如果找到用户 srart-->
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>医院名称</th>
							<th>所在省市</th>
							<th>级别</th>
							<th>代号</th>
							<th>详细地址</th>
							<th>电话</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${noproduct == true}">
							<tr>
								<td colspan="9">请添加医院管理数据。</td>
							</tr>
						</c:if>
						<c:forEach items="${data.records}" var="hospital">
							<tr>
								<td>${hospital.name}</td>
								<td>${hospital.provience}	${hospital.city}</td>
								<td>${hospital.grade}</td>
								<td>${hospital.mark}</td>
								<td>${hospital.addr}</td>
								<td>${hospital.phone}</td>
								<td class="td1">
									<a href="javascript:void(0)" data-id="${hospital._id}" class="edit_manage">
									<span class="glyphicon glyphicon-edit"></span>修改</a>
									<a href="javascript:void(0);" data-id="${hospital._id}" class="delete_manage">
								    <span class="glyphicon glyphicon-remove"></span>删除</a>
							    </td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!--
				<div align="center">
					<ul class="pagination">
					<a href="javascript:void(0);" onclick="a();">上一页</a>
						<li <c:if test="${searchParam.cp == 1}"> class="disabled"</c:if>>
						  <a href="${mainUril}hospital_manage.html?cp=${hospital.pageView.back}&&ps=${searchParam.ps}">上一页</a> 
						<a href="javascript:void(0);" class="divPage" data-name="back">上一页</a>
						</li>
						<li     
							<c:if test="${hospital.pageView.last == searchParam.cp}"> class="disabled"</c:if>>
						 	<a href="${mainUril}hospital_manage.html?cp=${hospital.pageView.next}&&ps=${searchParam.ps}">下一页</a>
						<a href="javascript:void(0);" class="divPage" data-name="next">下一页</a> 
						</li>
					</ul>
					<input type="hidden" name="page" value="${searchParam.cp}">
				</div>
				-->
				
				<div align="center">
					<ul class="pagination">
						<li >
						<a href="javascript:void(0);" class="divPage back" data-name="back">上一页</a>
						</li>
						<li>
						<a href="javascript:void(0);" class="divPage next" data-name="next">下一页</a> 
						</li>
					</ul>
					<input type="hidden" name="page" value="${searchParam.cp}">
					<input type="hidden" name="lastPage" value="${hospital.pageView.last}">
				</div>
				<!--如果找到用户 end-->
			</div>
		</div>
	</div>

    
    <!-- 模态框 -->
	<div class="modal fade" id="adminModal" data-backdrop="false"
		tabindex="-1" role="dialog" aria-labelledby="adminModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="adminModalLabel">医生管理</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="docName">医院名称</label>
						<input type="text" class="form-control" name="hospitalName" 
								placeholder="请输入医院名称" autocomplete="off">
					</div>
					 <div class="form-group">
						<label for="province">所在省</label> <select class="form-control"
							name="province" >
							<option value="0" selected>选择所在省</option>
							<option value="浙江省">浙江省</option>
						</select>
					</div>
					<div class="form-group">
						<label for="city">所在市</label> <select class="form-control"
							name="city">
							<option value="0" selected>选择所在市</option>
							<option value="杭州市">杭州市</option>
						</select>
					</div>
					<div class="form-group">
						<label for="grade">级别</label> 
						<select class="form-control"
							name="grade">
							<option value="0" selected>选择级别</option>
							<option value="一甲">一甲</option>
							<option value="一乙">一乙</option>
							<option value="二甲">二甲</option>
							<option value="二乙">二乙</option>
							<option value="三甲">三甲</option>
							<option value="三乙">三乙</option>
						</select>
					</div>
					<div class="form-group">
						<label for="mark">代号</label>
						<input type="text" class="form-control" name="mark" 
								placeholder="请输入代号" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="address">详细地址</label>
						<input type="text" class="form-control" name="address" 
								placeholder="请输入详细地址" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="tel">电话</label>
						<input type="text" class="form-control" name="tel" 
								placeholder="请输入电话" autocomplete="off">
					</div>
				</div>
				<div class="modal-footer">
					<input type="hidden" name="token" value="${token}"> 
					<input type="hidden" name="actionType" value=""> 
					<input type="hidden" name="hosId" value="">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="doSubmit">确认</button>
				</div>
			</div>
		</div>
	</div>

	<script src="assets/library/jquery/jquery.min.js"></script>
	<script src="assets/library/jquery/jquery-migrate.min.js"></script>
	<script src="assets/library/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugins/nicescroll/jquery.nicescroll.min.js"></script>
	<script src="assets/plugins/nprogress/nprogress.js"></script>
	<script
		src="assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<script
		src="assets/plugins/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	<script src="assets/plugins/MD5/md5.js"></script>
	<script src="assets/script/recoveryAdmin/frame.js"></script>
	<script src="assets/script/recoveryAdmin/login.js"></script>
	<script type="text/javascript">
	$(function(){
		//搜索
		$('#searchForm .input-group-addon').click(function(){
			
			$('#searchForm').submit();
		});
		//分页
		showPage();
		
		function showPage(){
			var page=$('input[name="page"]').val();
			var lastPage=$('input[name="lastPage"]').val();
			//先判断是否有下一页
			if(lastPage!=0){
				if(page==0){
					$('.back').hide();
					$('.next').show();
				}else if(page==lastPage){
					
					$('.back').show();
					$('.next').hide();
				}else{
					$('.back').show();
					$('.next').show();
				}
			}else{
				$('.back').hide();
				$('.next').hide();
			}
		}
		$('.divPage').click(function(){
			var cp=$('input[name="page"]').val();
			var name=$(this).data('name');
			if(name=="back"){
				cp=cp-1;
				
			}else{
				cp=cp+1;
			};
			alert(cp);
			$('#searchForm input[name="cp"]').val(cp);
			$('#searchForm').submit();
		});
		
		/*
		//联动
		$('#adminModal select[name="province"]').change(function(){
			var length=$(this).find('option').size();
			var value=$(this).val();
			var targetObj=$('#adminModal select[name="city"]');
			for(var i=1;i<=length;i++){
				if(value==i){
					targetObj.empty();
					targetObj.append("<option value='城市"+i+"' id='option'>城市"+i+"</option><option value='城市"+(i+1)+"'>城市"+(i+1)+"</option>");
				}
				
			};
			
		});
		
		$('#adminModal select[name="city"]').click(function(){
			var optionVal=$('#adminModal select[name="province"]').val();
			if(optionVal==0){
				alert("请选择省份");
				return false;
			}
		});
		
		*/
		function initModal(){
			$('#adminModal input[name="hospitalName"]').val('');
			$('#adminModal select[name="province"]').val(0);
			$('#adminModal select[name="city"]').val(0);
			$('#adminModal select[name="grade"]').val(0);
			$('#adminModal input[name="mark"]').val('');
			$('#adminModal input[name="address"]').val('');
			$('#adminModal input[name="tel"]').val('');
			$('#adminModal input[name="hosId"]').val('');
			
		}
		
		//点击添加按钮
		$('.add_manage').click(function(){
			initModal();
			$('#adminModal input[name="actionType"]').val('add');
			$('#adminModal').modal();
		});
		
		//添加逻辑
		function doAdd(){
			var hospitalName=$('#adminModal input[name="hospitalName"]').val();
			var province=$('#adminModal select[name="province"]').val();
			var city=$('#adminModal select[name="city"]').val();
			var grade=$('#adminModal select[name="grade"]').val();
			var mark=$('#adminModal input[name="mark"]').val();
			var address=$('#adminModal input[name="address"]').val();
			var tel=$('#adminModal input[name="tel"]').val();
			var token = $('input[name="token"]').val();
			
			if(!hospitalName){
				alert("请输入医院姓名！");
				return false;
			}
			
			
			if(!token){
				alert("非法提交！");
				return false;
			}
			var questURL = runParams.mainUrl+'hospital_manage_add.do';
			var questArr = {
				name:hospitalName,
				provience:province,
				city:city,
				grade:grade,
				mark:mark,
				addr:address,
				phone:tel,
				token:token
			};
			$.post(questURL,questArr,function(result){
				if(result){
					alert('添加成功！');
					location.href=runParams.mainUrl+"hospital_manage.html";
				}else{
					alert('添加失败！');
					return false;
				}
			});
		}
		
		//点击修改按钮
		$('.edit_manage').click(function(){
			initModal();
			var id = $(this).attr('data-id');
			if(!id){
			    alert("未找到该数据！");
				return false;
			}
			var questURL=runParams.mainUrl+'find_hospital.do';
			
			var questArr={comm_recordId:id};
			$.post(questURL,questArr,function(result){
				result = eval("("+result+")");  
				if(result.status){
					$('#adminModal input[name="hosId"]').val(result.data._id);
					$('#adminModal input[name="hospitalName"]').val(result.data.name);
					$('#adminModal select[name="province"]').val(result.data.provience);
					$('#adminModal select[name="city"]').val(result.data.city);
					$('#adminModal select[name="grade"]').val(result.data.grade);
					$('#adminModal input[name="mark"]').val(result.data.mark);
					$('#adminModal input[name="address"]').val(result.data.addr);
					$('#adminModal input[name="tel"]').val(result.data.phone);
			        $('#adminModal input[name="actionType"]').val('edit');
					$('#adminModal').modal();
				}else{  
					alert("未找到该医院信息！");
				    return false;
				}
			});
			$('#adminModal input[name="hosId"]').val(id);
			$('#adminModal input[name="actionType"]').val('add');
			$('#adminModal').modal();
		});
		
		//点击提交
		$('#doSubmit').click(function(){
		    var actionType = $('#adminModal input[name="actionType"]').val();
			if(actionType == 'add'){ doAdd(); }
			if(actionType == 'edit'){ doEdit(); }
		});
		
		
		//修改逻辑
		function doEdit(){
			var hosId = $('#adminModal input[name="hosId"]').val();
			var hospitalName=$('#adminModal input[name="hospitalName"]').val();
			var province=$('#adminModal select[name="province"]').val();
			var city=$('#adminModal select[name="city"]').val();
			var grade=$('#adminModal select[name="grade"]').val();
			var mark=$('#adminModal input[name="mark"]').val();
			var address=$('#adminModal input[name="address"]').val();
			var tel=$('#adminModal input[name="tel"]').val();
			var token = $('input[name="token"]').val();
			
			if(!hosId){
			    alert("没有找到该医院！");
				return false;
			}
			
			if(!token){
			    alert("非法提交！");
				return false;
			}
			//判断数据库中除了当前id的记录中是否有重名的记录
			var questURL = runParams.mainUrl+'hospital_manage_edit.do';
			var questArr = {
					_id:hosId,
					name:hospitalName,
					provience:province,
					city:city,
					grade:grade,
					mark:mark,
					addr:address,
					phone:tel,
					token:token
					
				};
			$.post(questURL,questArr,function(result){
				if(result){
					alert('修改成功');
					location.reload();
				}else{
					alert('修改失败！');
					return false;
				}
			});
		}
		
		//删除
		$(".delete_manage").click(function(){
			var id = $(this).attr('data-id');
			var name = $(this).parent().parent('tr').children('td:eq(0)').html();
			var token = $('input[name="token"]').val();
		    if(confirm('确定要把分类“'+name+'"从列表中删除吗？')){
				//查找该分类下是否已经有产品
				var questURL = runParams.mainUrl+'hospital_manage_delete.do';
				var questArr = {
						comm_recordId:id,
						token:token
						};
				$.get(questURL,questArr,function(result){
					if(result){
						alert('删除成功！');  
						location.reload();
					}else{
						alert('删除失败！');
						return false;
					}
				});
				
			}
		});
		
		
		//搜索
		$('.input-group-addon').click(function(){
			
			var hosName=$('input[name="hospitalName"]').val();
			$('#searchForm').submit();
			
		});
		
		
		
		
		
	});
	
	
	</script>
</body>
</html>
