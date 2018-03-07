<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=”zh”> <!--<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css2/jquery.mobile-1.4.3.css">
<script src="assets/script/productAdmin/jquery.min.js"></script>
<script src="assets/script/productAdmin/vendor/jquery.mobile-1.4.3.js"></script>
</head>
<body>
<style>
.ui-listview > .ui-li-has-icon > img:first-child, .ui-listview > .ui-li-has-icon > .ui-btn > img:first-child {
    left: 0.625em;
    max-height: 2.3em;
     max-width: 2.3em;
    position: absolute;
    top: 0.25em;
}

</style>
<div data-role="page" id="pageone">
 <div data-role="main" class="ui-content">
   <form class="ui-filterable">
     <input id="myFilter" data-type="search" placeholder="根据科室姓名进行搜索..">
   </form>
   <!-- data-autodividers="true" 安分类进行区分 -->
   <ul data-role="listview" data-filter="true" data-input="#myFilter" data-inset="true">
       <c:if test="${nolist==true}">
        	 <a>暂无科室列表</a>
    	   </c:if>
     	<c:forEach items="${data}" var="department">
     	  <li >
	       	<a class="keshi_${department.departmentCode}" id="${department.departmentCode}"  data-url="${mainUrl}" href="javascript:void(0)">
	       	    <img src="assets/image/productAdmin/department_list/keshi_${department.departmentCode}.png"  class="ui-li-icon" >
	       		${department.departmentName}
	       	</a>
         </li>
     	</c:forEach>
   </ul>
 </div>
</div> 
<script>
   $(document).on("pagecreate","#pageone",function(){
	   $('li a').on('tap',function(){
		   var mydate = new Date();
			   var str = "" + mydate.getFullYear() + "-";
			   str += (mydate.getMonth()+1) + "-";
			   str += mydate.getDate();
			var departmentCode=$(this).attr('id');
			var startDate=str;
			var endDate=str;
			var url=$(this).attr('data-url');
			var strHref=url+"outpatient.html?departmentCode="+departmentCode+"&startDate="+startDate+"&endDate="+endDate;
			$(this).attr('href',strHref);
		});
	   
	                     
	});

	//链接跳转
	//<!-- ${mainUrl}outpatient.html?departId=${department.departmentCode}-->
	
</script>

</body>