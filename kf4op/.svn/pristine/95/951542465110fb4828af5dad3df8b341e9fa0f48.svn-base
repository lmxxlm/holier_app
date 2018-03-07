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
<title>科室管理</title>
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

.searchBar .addPat .btn-primary {
    background: #ffb940 none repeat scroll 0 0;
    border-color: #ffb940;
    color: #fff;
}

a{color:#f09b22;}

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
				<li class="active">科室管理</li>
			</ol>
			
			<div class="searchBar row">
				<div class="smartSearch col-md-3 col-xs-3">
				    <form  id="searchForm" action="${mainUrl}departments_manage.do" method="post">
				    <input type="hidden" name="cp" value="">
				    <input type="hidden" name="ps" value="${searchParam.ps}">
				    <input type="hidden" name="token" value="${token}">
					<div class="input-group">
						<input type="hidden" name="departId" value=""> <input
							type="text" class="form-control" name="departName"
							placeholder="请输入科室名" autocomplete="off" value="">
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
			
			<div class="mainBody">
				<!--如果找到用户 srart-->
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>所属医院</th>
							<th>科室名</th>
							<th>门诊数</th>
							<th>医生数</th>
							<th>级别</th>
							<th>科室电话</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${noproduct == true}">
							<tr>
								<td colspan="9">请添加医院管理数据。</td>
							</tr> 
						</c:if>
						<c:forEach items="${data.records}" var="depart">
							<tr>
								<td>${depart.hospital}</td>
								<td>${depart.name}</td>
								<td>${depart.clinic_num}</td>
								<td>${depart.doc_num}</td>
								<td>${depart.grade}</td> 
								<td>${depart.phone}</td>
								<td class="td1">
									<a href="javascript:void(0);" data-id="${depart._id}" class="edit_manage">
									<span class="glyphicon glyphicon-edit"></span>修改</a>
									<a href="javascript:void(0);" data-id="${depart._id}" class="delete_manage">
								    <span class="glyphicon glyphicon-remove"></span>删除</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div align="center">
					<ul class="pagination">
						<li <c:if test="${searchParam.cp == 1}"> class="disabled"</c:if>>
					<!--  <a href="${mainUril}departments_manage.html?cp=${depart.pageView.back}&&ps=${searchParam.ps}">上一页</a> -->
					      <a href="javascript:void(0);" class="divPage"  data-name="back">上一页</a> 
						</li>
						<li     
							<c:if test="${depart.pageView.last == searchParam.cp}"> class="disabled"</c:if>>
					<!-- <a href="${mainUril}departments_manage.html?cp=${depart.pageView.next}&&ps=${searchParam.ps}">下一页</a> -->
							<a href="javascript:void(0);" class="divPage" data-name="next">下一页</a> 
						</li>
					</ul>
					<input type="hidden" name="page" value="${searchParam.cp}">
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
					<h4 class="modal-title" id="adminModalLabel">科室管理</h4>
				</div>
				<div class="modal-body">
					 <div class="form-group">
						<label for="hospital">所属医院</label> 
						<select class="form-control" name="hospital">
							<option value="0" selected>请选择所属医院</option>
							<c:forEach items="${hospital.records}" var="h">
								<option value="${h.name}">${h.name}</option>
							</c:forEach>
						</select>
					 </div>
					
					<div class="form-group">
						<label for="departName">科室名</label> 
							<input type="text" class="form-control" name="departName" 
								placeholder="请输入科室名" autocomplete="off">
						
					</div>
					<div class="form-group">
						<label for="clinicNum">门诊数</label>
						<input type="text" class="form-control" name="clinicNum" 
								placeholder="请输入门诊数" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="docNum">医生数</label>
						<input type="text" class="form-control" name="docNum" 
								placeholder="请输入医生数" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="grade">级别</label>
						<input type="text" class="form-control" name="grade" 
								placeholder="请输入级别" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="tel">科室电话</label>
						<input type="text" class="form-control" name="tel" 
								placeholder="请输入科室电话" autocomplete="off">
					</div>
				</div>
				<div class="modal-footer">
					<input type="hidden" name="token" value="${token}"> 
					<input type="hidden" name="departId" value="">
					<input type="hidden" name="actionType" value=""> 
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
	<script>
	$(function(){
		/*
		//医院请求
		$('#adminModal select[name="hospital"]').onchange(function(){
			var obj=$(this);
			
			var  questURL = runParams.mainUrl+'select_hospital.do';
			$.get(questURL,'',function(result){
				if(result==1){
					obj.html('');
					obj.html('<option value="0" selected>请选择所属医院</option>');
					result.data.each(function(index,ele){
						obj.append('<option value="'+ele.hospitalID+'">'+ele.hospitalName+'</option>');
					});
				}
			});
		});
		*/
		//搜索
		$('#searchForm .input-group-addon').click(function(){
			
			$('#searchForm').submit();
		});
		//分页
		$('.divPage').click(function(){
			var currentPage=$('input[name="page"]').val();
			var name=$(this).data('name');
			if(name=="back"){
				currentPage-=1;
			}else{
				currentPage+=1;
			}
			$('#searchForm input[name="cp"]').val(currentPage);
			$('#searchForm').submit();
		});
		
		
		function initModal(){
			$('#adminModal select[name="hospital"]').val(0);
			$('#adminModal input[name="departName"]').val('');
			$('#adminModal input[name="departId"]').val('');
			$('#adminModal input[name="clinicNum"]').val('');
			$('#adminModal input[name="docNum"]').val('');
			$('#adminModal input[name="grade"]').val('');
			$('#adminModal input[name="tel"]').val('');
			
		}
		
		//点击添加按钮
		$('.add_manage').click(function(){
			initModal();
			$('#adminModal input[name="actionType"]').val('add');
			$('#adminModal').modal();
		});
		
		//添加逻辑
		function doAdd(){
			var hospital=$('#adminModal select[name="hospital"]').val();
			var departName=$('#adminModal input[name="departName"]').val();
			var clinicNum=$('#adminModal input[name="clinicNum"]').val();
			var docNum=$('#adminModal input[name="docNum"]').val();
			var grade=$('#adminModal input[name="grade"]').val();
			var tel=$('#adminModal input[name="tel"]').val();
			var token = $('input[name="token"]').val();
			if(!token){
				alert("非法提交！");
				return false;
			}
			var questURL = runParams.mainUrl+'departments_manage_add.do';
			var questArr = {
				hospital:hospital,
				name:departName,
				clinic_num:clinicNum,
				doc_num:docNum,
				grade:grade,
				phone:tel,
				token:token
			};
			$.post(questURL,questArr,function(result){
				if(result){
					location.href=runParams.mainUrl+"departments_manage.html";
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
			var questURL=runParams.mainUrl+'find_department.do';
			var questArr={comm_recordId:id}
			$.post(questURL,questArr,function(result){
				result = eval("("+result+")");   
				if(1==result.status){
					$('#adminModal select[name="hospital"]').val(result.data.hospital);
					$('#adminModal input[name="departName"]').val(result.data.name);
					$('#adminModal input[name="clinicNum"]').val(result.data.clinic_num);
					$('#adminModal input[name="docNum"]').val(result.data.doc_num);
					$('#adminModal input[name="grade"]').val(result.data.grade);
					$('#adminModal input[name="tel"]').val(result.data.phone);
			        $('#adminModal input[name="actionType"]').val('edit');
					$('#adminModal').modal();
				}else{  
					alert("未找到该产品分类！");
				    return false;
				}
			});
			$('#adminModal input[name="departId"]').val(id);
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
			var departId = $('#adminModal input[name="departId"]').val();
			var hospital = $('#adminModal select[name="hospital"]').val();
			var departName=$('#adminModal input[name="departName"]').val();
			var clinicNum=$('#adminModal input[name="clinicNum"]').val();
			var docNum=$('#adminModal input[name="docNum"]').val();
			var grade=$('#adminModal input[name="grade"]').val();
			var tel=$('#adminModal input[name="tel"]').val();
			var token = $('input[name="token"]').val();
			
			if(!departId){
			    alert("没有找到该数据！");
				return false;
			}
			
			if(!token){
			    alert("非法提交！");
				return false;
			}
			var questURL = runParams.mainUrl+'departments_manage_edit.do';
			var questArr = {
					_id:departId,
					hospital:hospital,
					name:departName,
					clinic_num:clinicNum,
					doc_num:docNum,
					grade:grade,
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
				var questURL = runParams.mainUrl+'departments_manage_delete.do';
				var questArr = {comm_recordId:id,
						token:token};
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
			$('#searchForm').submit();
			
		});
		
		
		/*做分页用
		$('.pager .pre').click(function(){
			var pagePre=$('input[name="pagePre"]').val();
			$('#searchForm input[name="cp"]').val(pagePre);
			$('#searchForm').submit();  
		});
		$('.pager .next').click(function(){
			var pagePre=$('input[name="pageNext"]').val();
			$('#searchForm input[name="cp"]').val(pagePre);
			$('#searchForm').submit();  
		});
		*/
		
	});
	
	
	</script>
</body>
</html>
