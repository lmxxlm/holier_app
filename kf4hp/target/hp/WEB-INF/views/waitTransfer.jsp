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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
	<link rel="stylesheet" type="text/css" href="assets/style/authority/jquery.fancybox-1.3.4.css" media="screen"></link>
<title>康复管理平台</title>


<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
 
<link href="assets/style/library/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" /> 
	<link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet"/>
<link
	href="assets/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet"/>
<link
	href="assets/plugins/bootstrap-datetimepicker/css/datetimepickerReview.css"
	rel="stylesheet"/>
<style type="text/css">
    .ui_select{width:10%;text-align:center;}
    .right{
        float:right;
    }
    th{text-align:center;}
    
    .imgUnit{display:inline-block;width:50px;height:50px;border:1px solid black;text-align:center;position:relative;}
.imgUnit img{width:45px;height:45px;}
   .addImg{display:inline-block;
   width:50px;height:50px;border:1px dashed black;text-align:center;
   }
   .addImg span{}
   
   .picture .imgUnit{width:80px;height:100px;position:relative;}
   .picture .imgUnit img{width:80px;height:100px;}
   .picture .addImg{width:80px;height:100px;line-height:100px;}
    .picture .addImg span{font-size:50px;top:20px;}
    
    .delete{ 
    background: rgba(0, 0, 0, 0.4) none repeat scroll 0 0;
    bottom: 0;
    color: #fff;
    /*display: none;*/
    height: 30px;
    left: 0;
    line-height: 30px;
    position: absolute;
    text-align: center;
    width: 80px;}
</style>
</head>


<body>
    <div id="frameMain">
     <div class="addPat">
			    <button type="button" class="btn btn-primary pull-right "
							onFocus="this.blur()">
							<span class="glyphicon glyphicon-plus-sign"></span>添加信息
				</button>
		 </div>
        <div id="top_nav">当前位置：系统&nbsp;>&nbsp;系统介绍      </div>
       
            <form id="submitForm" name="submitForm" action="" method="post">
            <input type="hidden" name="allIDCheck" value="" id="allIDCheck"/>
		    <input type="hidden" name="fangyuanEntity.fyXqName" value="" id="fyXqName"/>
                <div class="contentBox">
		            <!-- 开始 -->
		    
			
			<div class="mainBody">
				<!--如果找到用户 srart-->
				<table class="table table-striped table-hover">
					<thead>
						<tr class="title">
						    <th>订单号</th>
							<th>医院</th>
							<th>病房</th>
							<th>入住时间</th>
							<th>患者</th>
							<th>联系方式</th>
							<th>转院日期</th>
							
							
							<th>下级医</th>
							<th>转院状态</th>
							<th>申请时间</th>
							<th>确认时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${noService == true}">
							<tr>
								<td colspan="9">请添加产品。</td>
							</tr>
						</c:if>
						<c:forEach items="${data}" var="record">
							<tr>
							    <td>${record.hospital_name}</td>
								<td>${record.name}</td>
								<td >
                                       <div class="imgUnit"><a href="${record.image.fileName}" target="_blank"><img src="${record.image.small}"></a></div>
                                </td>
								<td>${record.price}</td>
								<td>${record.space}</td>
								<td>${record.bednumber}</td>
								<td>${record.floor}</td>
								<td class="td1">
								<!-- 
								<a href="javascript:void(0)" data-id="${record.record_id}"
									class="detailSickRoom"><span class="glyphicon glyphicon-zoom-in"></span>详情</a>&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="javascript:void(0)" data-id="${record.record_id}"
									class="editSickRoom"><span class="glyphicon glyphicon-edit"></span>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
									 -->
									<a
									href="javascript:void(0)" data-id="${record.record_id}"
									class="deleteSickRoom"><span class="glyphicon glyphicon-remove"></span>删除</a></td>
							</tr>
						</c:forEach>
						   <tr>
							    <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td class="td1">
								<a href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="detailSickRoom"><span class="glyphicon glyphicon-zoom-in"></span>详情</a>&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="editSickRoom"><span class="glyphicon glyphicon-edit"></span>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
									<a
									href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="deleteSickRoom"><span class="glyphicon glyphicon-remove"></span>删除</a></td>
							</tr>
						
							<tr>
							    <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td class="td1">
								<a href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="detailSickRoom"><span class="glyphicon glyphicon-zoom-in"></span>详情</a>&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="editSickRoom"><span class="glyphicon glyphicon-edit"></span>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
									<a
									href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="deleteSickRoom"><span class="glyphicon glyphicon-remove"></span>删除</a></td>
							</tr>
						
							<tr>
							    <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td class="td1">
								<a href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="detailSickRoom"><span class="glyphicon glyphicon-zoom-in"></span>详情</a>&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="editSickRoom"><span class="glyphicon glyphicon-edit"></span>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
									<a
									href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="deleteSickRoom"><span class="glyphicon glyphicon-remove"></span>删除</a></td>
							</tr>
						
							<tr>
							    <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td>1</td>
								 <td>1</td>
								<td class="td1">
								<a href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="detailSickRoom"><span class="glyphicon glyphicon-zoom-in"></span>详情</a>&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="editSickRoom"><span class="glyphicon glyphicon-edit"></span>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
									<a
									href="javascript:void(0)" data-id="57a183ba0cf24040fbcfae12"
									class="deleteSickRoom"><span class="glyphicon glyphicon-remove"></span>删除</a></td>
							</tr>
						
						
						
						
						
						
					</tbody>
				</table>
				<!--如果找到用户 end-->
			</div>
		            
		            <!-- 结束 -->
	          </div>
        
            </form>
        

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
					<h4 class="modal-title" id="adminModalLabel">订单管理</h4>
				</div>
				<div class="modal-body">
				    <div class="form-group" >
						<label for="order_num">订单号</label>
						<input class="form-control" name="order_num"
							placeholder="请输入订单号"></input>
					</div>
					
					<div class="form-group" >
						<label for="hos">医院</label>
						<input class="form-control" name="hos"
							placeholder="请输入医院"></input>
					</div>
					
					<div class="form-group" >
						<label for="sickRoom">病房</label>
						<input class="form-control" name="sickRoom"
							placeholder="请输入病房"></input>
					</div>
					
					<div class="form-group" style="width:30%;">
						<label for="rz_time">入住时间</label>
						<input class="form-control" name="rz_time" readonly="true"
							placeholder="请输入入住时间" ></input>
					</div>
					
					<div class="form-group" >
						<label for="patient">患者</label>
						<input class="form-control" name="patient"
							placeholder="请输入患者"></input>
					</div>
					
					<div class="form-group" >
						<label for="tele">联系方式</label>
						<input class="form-control" name="tele"
							placeholder="请输入联系方式"></input>
					</div>
					
					<div class="form-group" >
						<label for="transfer_time">转院日期</label>
						<input class="form-control" name="transfer_time"
							placeholder="请输入转院日期" readonly="true"></input>
					</div>
					
					<div class="form-group" >
						<label for="lower_doc">下级医</label>
						<input class="form-control" name="lower_doc"
							placeholder="请输入下级医"></input>
					</div>
					
					<div class="form-group" >
						<label for="transfer_status">转院状态</label>
						<input class="form-control" name="transfer_status"
							placeholder="请输入转院状态"></input>
					</div>
					
					<div class="form-group" >
						<label for="apply_time">申请时间</label>
						<input class="form-control" name="apply_time"
							placeholder="请输入申请时间"></input>
					</div>
					
					<div class="form-group" >
						<label for="confirm_time">确认时间</label>
						<input class="form-control" name="confirm_time"
							placeholder="请输入确认时间"></input>
					</div>
				   
				</div>
				<div class="modal-footer">
					<input type="hidden" name="token" value="${token }"/> 
					<input type="hidden" name="actionType" value=""/>
					<input type="hidden" name="sickRoom_id" value=""/>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="doSubmit">确认</button>
				</div>
			</div>
		</div>
	</div>
	
	<style>
	   input[type="file"]{opacity: 0; filter: "alpha(opacity=0)";filter: alpha(opacity=0);-moz-opacity: 0;}
	</style>
	<!-- 上传图片的模态框 -->
	<div class="modal fade" id="addImageModal" data-backdrop="false" tabindex="-1" role="dialog" aria-labelledby="addImageModalLabel" aria-hidden="true">
           <div class="modal-dialog">
              <div class="modal-content">
                 <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="addImageModalLabel">上传影像图片</h4>
                 </div>
                 <div class="modal-body">
                    <div class="form-group">
                        <div class="upd_image_init"><input type="file" name="upd_image_init" id="upd_image_init" multiple/></div>
                        <table class="table table-striped imgList">
                           <thead>
                              <tr>
                                 <th class="td1">图片名</th>
                                 <th>大小</th>
                                 <th>格式</th>
                                 <th>预览</th>
                                 <th>状态/操作</th>
                              </tr>
                           </thead>
                           <tbody></tbody>
                        </table>
                        <input type="hidden" value="" name="imagepath" />      
                    </div>
                 </div>
                 <div class="modal-footer">
                    <input type="hidden" name="e_checkUpId" value="" autocomplete="off">
                    <button type="button" class="btn btn-primary btn-block dofileUpload">上传图片</button>
                 </div>
              </div>
           </div>
        </div>
	
	<!-- 上传图片的模态框结束 -->
    
    
    
    
    
 <script type="text/javascript" src="assets/scripts/jquery/jquery.js"></script>
<script type="text/javascript" src="assets/style/library/jquery/jquery.min.js"></script>	
<script type="text/javascript" src="assets/style/library/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/scripts/bootstrap.js"></script>	
<script src="assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="assets/plugins/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>

</body>
<script type="text/javascript">

$(function(){
	//时间弹出
	$('input[name="confirm_time"],input[name="apply_time"],input[name="transfer_time"],input[name="rz_time"]').datetimepicker({
		language:  'zh-CN',
		format: 'yyyy-mm-dd',
		weekStart: 1,
		todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		forceParse: 0,
		startView: 2,
		minView: 2,
		pickerPosition:'top-left'
	});
	
	//所属医院智能搜索
	$('.searchForSickRoom').parent().find('.form-control').keyup(function(){
		var obj = $(this);
	    var searchVar = $(this).val();
	    obj.parent().siblings('.searchForSickRoom').show();
		var questURL = runParams.mainUrl+'searchKfHospitalLimit10.do';

		var questArr = {
			searchVar:searchVar
		};
		$.get(questURL,questArr,function(result){
			if(1==result.status){   
				var con = result.data;
				var htmlstr = '';
				for(var i=0;i<con.length;i++){
				  htmlstr += '<li><a href="javascript:void(0)" data-hosid="'+con[i].record_id+'"><span>'+con[i].name+'</span></a></li>';
				}
				obj.parent().siblings('.searchForSickRoom').html(htmlstr).show();
			}else{
				obj.parent().siblings('.searchForSickRoom').hide();
			}
		});
	});
	$(".searchForSickRoom li a").on('click',function(){
		var p_obj = $(this).parents('.searchForSickRoom');
		p_obj.parent().find('input[type="text"]').val($(this).find("span").html());
		p_obj.parent().find('input[type="hidden"]').val($(this).attr("data-hosid"));
		p_obj.hide();
	});
	
	
	
	
	
	//上传头像只能有一个图片
	$('.upHead').each(function(){
		var imgLen=$(this).find('.imgUnit').length;
		if(imgLen>=1){
			$(this).find('.addImg').hide();
		}
	});
	//上传图片集只能有五张
	$('.upPhotos').each(function(){
		var imgLen=$(this).find('.imgUnit').length;
		if(imgLen>=5){
			$(this).find('.addImg').hide();
		}
	});
	//初始化
	function initModal(){
		$('#adminModal input[name="sickRoom_id"]').val('');
   	    $('#adminModal input[name="sickroom_name"]').val('');
   	    $('#adminModal input[name="belongs_hos"]').val('');
   	    $('#adminModal input[name="price"]').val('');
   	    $('#adminModal input[name="building_area"]').val('');
   	    $('#adminModal input[name="bed_num"]').val('');
   	    $('#adminModal input[name="floor"]').val('');
   	    $('#adminModal textarea[name="device_tab"]').val('');
   		$('#adminModal input[name="hosId"]').val('');
   		
    	 //去掉详情默认样式
   		$('#adminModal input,#adminModal textarea').removeAttr("readonly");
   		$('#adminModal #doSubmit').show();
   		$('#adminModal input,#adminModal textarea').removeAttr("style","cursor:not-allowed !important;");
   		$("input[type='checkbox'],input[type='radio']").removeAttr('disabled',true);
		
	//图片的初始化
	   $('.pictureImg').empty();
	   $('.upHead').html('<a  class="addImg" data-type="upHead" data-id=""><span class="glyphicon glyphicon-plus-sign"></span></a>');
	   $('.upPhotos').html('<a  class="addImg" data-type="upPhotos" data-id=""><span class="glyphicon glyphicon-plus-sign"></span></a>');
	}
	//点击添加按钮
	$('.addPat button').click(function(){
		initModal();
		$('#adminModal input[name="actionType"]').val('add');
	    $('#adminModal').modal();
	});
	
	//点击提交
	$('#doSubmit').on('click',function(){
	    var actionType = $('#adminModal input[name="actionType"]').val();
	    doAdd(actionType);
	});
	
	//添加逻辑、修改点击确定添加
	function doAdd(actionType){
		//hosInfo_id  后台进行判断
		var sickRoom_id=$('#adminModal input[name="sickRoom_id"]').val();
 	    var sickroom_name=$('#adminModal input[name="sickroom_name"]').val();
 	    var belongs_hos=$('#adminModal input[name="belongs_hos"]').val();
 	    var price=$('#adminModal input[name="price"]').val();
 	    var building_area=$('#adminModal input[name="building_area"]').val();
 	    var bed_num=$('#adminModal input[name="bed_num"]').val();
 	    var floor=$('#adminModal input[name="floor"]').val();
 	    var device_tab=$('#adminModal textarea[name="device_tab"]').val();
		var token = $('#adminModal input[name="token"]').val();
		
		var searchVar=$('input[name="hosId"]').val();
		
  	    //(1)获得头像的路径
  	    //（2）获得图集的路径
  	   
  	    var imgUpList=[];
  	    var imgUpHead='';
  	    
  	    
  	   //传正常的四个字段
  		 var oUpHead=$('#adminModal .upHead'); 
   	     var oUpHeadInput=oUpHead.find('input[name="savePath"]');
   	     var large= oUpHeadInput.attr('data-large');
   	     var small=oUpHeadInput.data('small');
    	 var middle=oUpHeadInput.data('middle');
    	 var fileName=oUpHeadInput.attr('data-fileName');
    	 imgUpHead = {
      	    		"large" : large ,
      	    		"small" : small ,
      	    		"middle": middle,
      	    		"fileName" : fileName
      	    	};
    	var imageHeadPath= JSON.stringify(imgUpHead);
  	   
  	     $('#adminModal .upPhotos .imgUnit').each(function(){
  	    	var targetPath= $(this).find('input');
      	   	var large=targetPath.data('large');
  	    	var small=targetPath.data('small');
  	    	var middle=targetPath.data('middle');
  	    	var fileName=targetPath.attr('data-fileName');
  	    	
  	    	var obj = {
      	    		"large" : large ,
      	    		"small" : small ,
      	    		"middle": middle,
      	    		"fileName":fileName
      	    	};
  	      imgUpList.push(obj);
  	     });
    	 var imageListpath = JSON.stringify(imgUpList);
    	 
    	 if(!searchVar){
    		 alert('没有输入选定的医院，或您所输入的选定医院无效');
    		 return false;
    	 }
		
    	 if(!sickroom_name){
    		    alert("请输入病床名称！");
    			return false;
		}
		if(!belongs_hos){
		    alert("请输入所属医院！");
			return false;
		}
		var zs=/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/;
		
		if(!zs.test(price)||!price){
		    alert("您没有输入价格或输入的价格式不对！");
			return false;
		}
		
		
		if(!building_area){
			alert("请输入建筑面积");
			return false;
		}
		
		if(!zs.test(bed_num)||!bed_num){
		    alert("请输入床位数！");
			return false;
		}
		
		if(!floor){
		    alert("请输入楼层数！");
			return false;
		}
		
		
		if(!device_tab){
		    alert("请输入标签！");
			return false;
		}
		
		
		if(!token){
		    alert("非法提交！");
			return false;
		}
		
		
		//判断一下图片个数
		var headLen=$('.upHead').find('.imgUnit').length;
		if(headLen<1){
			alert('您没有上传头像，请上传！');
			return false;
		}
		var listLen=$('.upPhotos').find('.imgUnit').length;
		if(listLen<1){
			alert('您没有上传图片集，请上传！');
			return false;
		}
		
		var questURL='';
		if(actionType == 'add'){
			hosInfo_id='';
			questURL= runParams.mainUrl+'addSickRoom.do';
		}else if(actionType == 'edit'){
			questURL= runParams.mainUrl+'editSickRoom.do';
		}
		
		 
		
		var questArr = {
			record_id:sickRoom_id,
	     	name:sickroom_name,
	     	hospital_id:searchVar,
	     	price:price,
	     	space:building_area,
	     	bednumber:bed_num,
	    	floor:floor,
	    	tags:device_tab,
	    	image:imageHeadPath,//头像都路径
	    	pictures:imageListpath,//图片集路径
			token:token
		};
		$.post(questURL,questArr,function(result){
			if(result){
				location.reload();
			}else{
				alert('添加失败！');
				return false; 
			}
		});
	}
	
	//点击修改链接
	 
	$('.editSickRoom').click(function(){
		initModal();
		$('#adminModal input[name="actionType"]').val('edit');
	    var id = $(this).attr('data-id');
	    commen(id,'edit');
	});
	
	//展示详情或点击编辑时所显示的
	function commen(id,x){
		
		if(!id){
		    alert("未找到该数据！");
			return false;
		}
		//根据id获取这条数据
		var questURL = runParams.mainUrl+'getSickRoomById.do';
		var questArr = {
			sickRoom_id:id
		};
		
		
		$.post(questURL,questArr,function(result){
			//eval
			if(result.status){
				$('#adminModal input[name="sickRoom_id"]').val(result.data.sickRoom_id);
				$('#adminModal input[name="sickroom_name"]').val(result.data.sickroom_name);
	     	    $('#adminModal input[name="belongs_hos"]').val(result.data.belongs_hos);
	     	    $('#adminModal input[name="price"]').val(result.data.price);
	     	    $('#adminModal input[name="building_area"]').val(result.data.building_area);
	     	    $('#adminModal input[name="bed_num"]').val(result.data.bed_num);
	     	    $('#adminModal input[name="floor"]').val(result.data.floor);
	     	    $('#adminModal textarea[name="device_tab"]').val(result.data.device_tab);
	     	    $('#adminModal input[name="picture"]').val(result.data.picture);
	     		$('input[name="hosId"]').val(result.data.searchVar);
	      	    var imgType=$('#adminModal .pictureImg').attr('data-type');
	      	    if(result.data.imageListPath){
	      	    	var path=result.data.imageListPath;
    	      	    var addImg=$('#adminModal .upHead').find('.addImg');
    	      	    var flag='upHead';
	      	    	showImg(path,addImg,flag);
	      	    	if(imageListPath.length>=1){
	      	    		addImg.hide();
	    	      	}
	      	    }
	      	    
	      	    if(result.data.imageListPath){
	      	    	var path=result.data.imageListPath;
    	      	    var addImg=$('#adminModal .upHead').find('.addImg');
    	      	    var flag='upPhotos';
	      	    	showImg(path,addImg,flag);
	      	    	
	      	    	 if(imageListPath.length>=5){
	      	    		addImg.hide();
	    	      	 }
	      	    }
	      	  
	      	    function showImg(path,addImg,flag){
	      	    	path=eval("("+path+")");
	      	    	if(flag=="upHead"){
	      	    		if(x=='edit'){
    	      	    		addImg.before('<div class="imgUnit"><input type="hidden" name="savePath" data-fileName="'+path.fileName+'" data-large="'+path.large+'" data-middle="'+path.middle+'"  data-small="'+path.small+'"><a href="'+path.fileName+'" target="_blank"><img src="'+path.middle+'"></a><a href="javascript:void(0)" class="delete" data-path="'+path.fileName+'">删除</a></div>');
    	    	      	    }else{
    	    	      	    addImg.before('<div class="imgUnit"><input type="hidden" name="savePath" data-fileName="'+path.fileName+'" data-large="'+path.large+'" data-middle="'+path.middle+'"  data-small="'+path.small+'"><a href="'+path.fileName+'" target="_blank"><img src="'+path.middle+'"></a></div>');
    	    	      	 }
	      	    	}else{
	      	    		for(var i=0;i<path.length;i++){
	      	    			if(x=='edit'){
	    	      	    		addImg.before('<div class="imgUnit"><input type="hidden" name="savePath" data-fileName="'+path[i].fileName+'" data-large="'+path[i].large+'" data-middle="'+path[i].middle+'"  data-small="'+path[i].small+'"><a href="'+path[i].fileName+'" target="_blank"><img src="'+path[i].middle+'"></a><a href="javascript:void(0)" class="delete" data-path="'+path[i].fileName+'">删除</a></div>');
	        	      	    }else{
	        	      	    	addImg.before('<div class="imgUnit"><input type="hidden" name="savePath" data-fileName="'+path[i].fileName+'" data-large="'+path[i].large+'" data-middle="'+path[i].middle+'"  data-small="'+path[i].small+'"><a href="'+path[i].fileName+'" target="_blank"><img src="'+path[i].middle+'"></a></div>');
	        	      	    }
	      	    			
	    	      	    }
	      	    	}
	      	    	 
	      	    }
	      	    
	      	    /*
	      	    
	      	    //头像显示
	      	    var imageHeadPath=result.data.imageHeadPath;
	      	    
	      	    imageHeadPath=eval("("+imageHeadPath+")");
	      	    
	      	    var upHeadObj=$('#adminModal .upHead').find('.addImg');
	      	    
	      	    if(x=='edit'){
	      	    	upHeadObj.before('<div class="imgUnit"><input type="hidden" name="savePath" data-fileName="'+imageHeadPath.fileName+'" data-large="'+imageHeadPath.large+'" data-middle="'+imageHeadPath.middle+'"  data-small="'+imageHeadPath.small+'"><a href="'+imageHeadPath.fileName+'" target="_blank"><img src="'+imageHeadPath.middle+'"></a><a href="javascript:void(0)" class="delete" data-path="'+imageHeadPath.fileName+'">删除</a></div>');
	      	    }else{
	      	    	upHeadObj.before('<div class="imgUnit"><input type="hidden" name="savePath" data-fileName="'+imageHeadPath.fileName+'" data-large="'+imageHeadPath.large+'" data-middle="'+imageHeadPath.middle+'"  data-small="'+imageHeadPath.small+'"><a href="'+imageHeadPath.fileName+'" target="_blank"><img src="'+imageHeadPath.middle+'"></a></div>');
	      	    }
	      	    
	      	    //图集显示
	      	    var imageListPath=result.data.imageListPath;
	      	    
	      	    imageListPath=eval("("+imageListPath+")");
	      	    
	      	    var upPhotosObj=$('#adminModal .upPhotos').find('.addImg');
	      	    
	      	    for(var i=0;i<imageListPath.length;i++){
	      	    	if(x=='edit'){
    	      	    	upHeadObj.before('<div class="imgUnit"><input type="hidden" name="savePath" data-fileName="'+upPhotosObj[i].fileName+'" data-large="'+upPhotosObj[i].large+'" data-middle="'+upPhotosObj[i].middle+'"  data-small="'+upPhotosObj[i].small+'"><a href="'+upPhotosObj[i].fileName+'" target="_blank"><img src="'+upPhotosObj[i].middle+'"></a><a href="javascript:void(0)" class="delete" data-path="'+upPhotosObj[i].fileName+'">删除</a></div>');
    	      	    }else{
    	      	    	upHeadObj.before('<div class="imgUnit"><input type="hidden" name="savePath" data-fileName="'+upPhotosObj[i].fileName+'" data-large="'+upPhotosObj[i].large+'" data-middle="'+upPhotosObj[i].middle+'"  data-small="'+upPhotosObj[i].small+'"><a href="'+upPhotosObj[i].fileName+'" target="_blank"><img src="'+upPhotosObj[i].middle+'"></a></div>');
    	      	    }
	      	    }
	      	    
	      	    if(imageListPath.length>=5){
	      	    	upPhotosObj.hide();
	      	    }
	      	    
	      	   */
    	      	
	      	   
        		$('#adminModal').modal();
			}else{
				alert("未找到该元素！");
			    return false;
			}
		});
		
		
	}
	//查看详情
	$('.detailSickRoom').on('click',function(){
		alert("查看详情");
		//隐藏确认按钮
		$('#adminModal #doSubmit').hide();
		//让所有输入框变成只读的
		$('#adminModal input,#adminModal textarea').attr("style","cursor:not-allowed !important;");
		$('#adminModal input,#adminModal textarea').attr({
			"readonly":"readonly"
		})
		//让checkbox和radio变成不可选
		$("input[type='checkbox'],input[type='radio']").attr('disabled',true);
		
		var id=$(this).attr('data-id');
		commen(id,'detail');
	});
			
			
		
	
	
});
/*图片------------------------------------------------------------------*/
//初始化
$(function(){
	
	
	
	if(typeof FileReader == "undified"||!window.FormData) {
		alert("您老的浏览器不行了！");
	}
	var imgUploadList = [];
	var imgPathJsonData = [];
	var currentImgPage = '';
	var type='';
	$('.addImg').on('click',function(){
		//获取到目标id
		var checkUpId = $(this).attr('data-id');
		$('#addImageModal input[name="e_checkUpId"]').val(checkUpId);
		$('.imgList tbody').html('');
		currentImgPage = $(this);
		//查看是一个图片  还是多个图片
		type=$(this).attr('data-type');
		$('input[name="upd_image_init"]').click();
	});
	
	$('.deleteFile').on('click',function(){
		var id = parseInt($(this).attr('data-listid'),10);
		var fa = $(this).parent().parent(),
		name = fa.children('td:eq(0)').html();
		if(confirm("确定要移除"+name+"这张图片吗？")){
			imgUploadList.splice($.inArray(id,imgUploadList),1);
			fa.remove();
		}
	});
	//把图片放在模态框上
	$('input[name="upd_image_init"]').on('change',function(){
		imgUploadList = [];
		imgPathJsonData = [];
		$('.dofileUpload').attr('disabled',false).html("上传图片");
		$('input[name="imagepath"]').val("");
		$('#addImageModal .close').show();
		$('#addImageModal').modal();
		//让模态框变得可以滚动
		$('body').css('overflow','hidden');
       	$('#adminModal').css('overflow','scroll');
       	var len = this.files.length;
		if(type=="upHead"){
			if(len>1){
				alert("你此时要上传的是头像,只能上传一张，请重新上传！");
				$('#addImageModal').modal('hide');
				return false;
			}
			
		}else if(type=="upPhotos"){
			//获取一下当前图片的长度
			var ylen=$('.upPhotos .imgUnit').length;
			if((ylen+len)>5){
				alert("上传的总图片数超过了五个");
				$('#addImageModal').modal('hide');
				return false;
			}
		}
		
		for(var i=0;i<len;i++){
			imgUploadList.push(i);
			var resultFile = this.files[i];
			if (resultFile) {
				var size = parseInt(resultFile.size/1024,10)+'&nbsp;KB';
				$('.imgList tbody').html($('.imgList tbody').html()+'<tr><td class="td1">'+resultFile.name+'</td><td>'+size+'</td><td>'+resultFile.type+'</td><td><a href="javascript:void(0)" data-id="'+i+'" class="glyphicon glyphicon-picture"></a></td><td><a href="javascript:void(0)" data-listid="'+i+'" class="deleteFile"><span class="glyphicon glyphicon-remove"></span>&nbsp;移除</a></td></tr>');
			}
		}
		
	});
	
	//点击上传图片
	$('.dofileUpload').click(function(){
		if(imgUploadList.length==0){
			alert('请选择图片！');
			$('#addImageModal').hide();
			return false;
		}
		$('.dofileUpload').attr('disabled',true);
		$('#addImageModal .close').hide();
		var len = document.getElementById("upd_image_init").files.length; //代表一开始上传的
		//imgUploadList.length:最终文件的长度
		
		
		for(var i=0;i<len;i++){
			if($.inArray(i,imgUploadList)>=0){//确定元素在数组中的位置，如果没找到返回-1；
				var resultFile = document.getElementById("upd_image_init").files[i];
				if (resultFile) {
					var fd = new FormData();
					fd.append('upd_image', resultFile);
					fd.append('listId', i);
					$.ajax({
						url:"${mainUrl}__URL__/imageCut.do",
						type:"POST",
						processData: false,// 告诉jQuery不要去处理发送的数据
						contentType: false,// 告诉jQuery不要去设置Content-Type请求头
						data:fd,
						beforeSend:function(){
							$('a[data-listid="'+i+'"]').removeClass('.deleteFile').html('上传中..');	   
						},
						success:function(result){
							result = eval("("+result+")");
							if(result.status==1){
								$('a[data-listid="'+result.data.listId+'"]').parent('td').html('上传成功');
								currentImgPage.before('<div class="imgUnit"><input type="hidden" name="savePath" data-fileName="'+result.data.fileName+'" data-large="'+result.data.large+'" data-middle="'+result.data.middle+'"  data-small="'+result.data.small+'"><a href="'+result.data.fileName+'" target="_blank"><img src="'+result.data.middle+'"></a><a href="javascript:void(0)" class="delete" data-path="'+result.data.fileName+'">删除</a></div>');
								
								$('#addImageModal').modal('hide');
							}else{
								$('a[data-listid="'+result.data.listId+'"]').parent('td').html('上传失败');	
							}
							imgUploadList.splice($.inArray(result.data.listId,imgUploadList),1);//删除从index开始的1个元素
							//把文件从imgUploadList全部删除完毕
							//全部上传完毕
							if(imgUploadList.length==0){
								
								$('.dofileUpload').html("全部图片已上传完毕，正在提交数据...");
								$('#addImageModal .close').show();
								$('.dofileUpload').html("上传成功！");
								$('#addImageModal').modal('hide');
								$('body').css('overflow','hidden');
						       	$('#adminModal').css('overflow','scroll');
						       	
						       	var len1=$('.upHead .imgUnit').length;
								if(len1>=1){
									$('.upHead').find('.addImg').hide();
								}
								var len2=$('.upPhotos .imgUnit').length;
								if(len2>=5){
									$('.upPhotos').find('.addImg').hide();
								}
						      
							}
							
						}
					});
				}
			}
		}
		
		
		
	});
	
	//把上传的图片放大
	$('.imgList .glyphicon-picture').on('click',function(){
	    var id = parseInt($(this).attr('data-id'),10);//按10进制进行解析字符串
		var resultFile = document.getElementById("upd_image_init").files[id];
		var targetObj = $(this);
		if (resultFile) {    
			var reader = new FileReader();
			reader.readAsDataURL(resultFile);
			reader.onload = function(e) {
				var urlData = this.result;
				targetObj.parent().html('<a href="'+urlData+'" target="_blank"><img src="'+urlData+'" height="50" width="50"></a>');
			};
		}
	});
	//删除某张图片
	$('.imgUnit .delete').on('click',function(){
		if(confirm('确定要删除这张图片吗？')){
			var imagepath = $(this).attr('data-path');
			//var id = $(this).parent().parent().siblings('.rightGroup').children('input[name="checkUpId"]').val();
			var targetObj = $(this).parent('.imgUnit');
			targetObj.remove();
			var ListLen=$('.upPhotos').find('.imgUnit').length;
			if(ListLen<5){
				$('.upPhotos').find('.addImg').show();
			}
			var headLen=$('.upHead').find('.imgUnit').length;
			if(headLen<1){
				$('.upHead').find('.addImg').show();
			}
		}
	});
	
	
	$('#addImageModal').on('hide.bs.modal', function () {
		$('.upd_image_init').empty();
		$('.upd_image_init').html('<input type="file" name="upd_image_init" id="upd_image_init" multiple/>');
	})
	
	//删除
	$(".deleteSickRoom").click(function(){
		var id = $(this).attr('data-id');
		var token=$('input[name="token"]').val();
		var name = $(this).parent().parent('tr').children('td:eq(0)').html();
	    if(confirm('确定要把产品“'+name+'"从列表中删除吗？')){
	    	//****删除后这个产品后面具体哪周定义的次数都要删除
			var questURL = runParams.mainUrl+'deleteSickRoom.do';
			var questArr = {bedroom_id:id,token:token};
			$.get(questURL,questArr,function(result){
				if(result==1){
					alert('删除成功！');
					location.reload();
				}else{
					alert('删除失败！');
					return false;
				}
			});
		}
	});
	
	
	
	
});


    
</script>
</html>