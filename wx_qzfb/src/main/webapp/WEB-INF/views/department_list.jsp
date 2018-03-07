<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=”zh”> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=”zh”> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=”zh”> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=”zh”> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>科室列表</title>
        <meta name="description" content="">
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
        <link href="assets/css/productAdmin/department_list.css" rel="stylesheet">
	    <script src="assets/script/productAdmin/jquery.min.js"></script>
	    <script src="http://cdn.bootcss.com/iScroll/5.2.0/iscroll-infinite.min.js"></script>
        <script src="assets/script/productAdmin/vendor/modernizr-2.6.2.min.js"></script>
        <style>
        .list ul li a{text-decoration:none;color:#333333;height:3em;line-height:2.9em;border-bottom:0.5px solid #dedede;margin-left:1em;display:inline-block; width:92%;}
        .list ul span{margin-left:2.3em;}
		.match{display:block;}
		.mis_match{display:none;}
		.hoverLi{ background:#C0C7C8; -webkit-tap-highlight-color: rgba(255,0,0,0); }
		html::-webkit-scrollbar,
		body::-webkit-scrollbar{width:0;height:0;}
		::-webkit-scrollbar{width:0;height:0}
		#wrapper{overflow:hidden;}
      </style>
  </head>
       <body style="overflow:-Scroll;overflow-y:hidden" onload="loaded()">
            <input type="hidden" name="startDate"/>
		    <input type="hidden" name="endDate"/>
            <div class="head">
              <form action="" id="seachform">
	             <input class="search_input" type = "text" placeholder="请输入科室名" value="" oninput="searchObj(this)"/>
	          </form>
		    </div>
		    <div class="list" id="wrapper">
		        <ul class="target_ul">
		          
		           <c:if test="${nolist==true}">
                       	 <a>暂无科室列表</a>
                   	   </c:if>
                    	<c:forEach items="${data}" var="department">
                    	  <li>
	                    	<a class="keshi_${department.departmentCode}" id="${department.departmentCode}"  data-url="${mainUrl}" href="javascript:void(0)">
	                    		<span>${department.departmentName}</span>
	                    	</a>
	                      </li>
                    	</c:forEach>
		        </ul>
		    </div>

<script>
        var myScroll;
        function loaded() {
        	$('#wrapper').height($(window).height()-parseInt($(".list").css("marginTop")));
        	//alert($('#wrapper ul').height());
            myScroll = new IScroll('#wrapper', {mouseWheel:true,click:true});
        }
		$("li").bind("touchstart", function(event){
		    //event.preventDefault();
		    $(this).addClass('hoverLi');
		});
		$("li").bind("touchend", function(event){
		    $(this).removeClass('hoverLi');
		});
        
        //显示所有列表
        
        function searchObj( x ){
		      var span_nodes = $("ul.target_ul").find("span");
		      var input_text = $(x).val();
			  if(input_text==""){
				  $('ul.target_ul').find('li').attr('class',"match");
				  return false;
			  };
			  $.each( span_nodes , function( i , o){
					  var span = $( o );
			          var htm = span.html();
			        	  var result = regex_match(input_text,htm);//匹配成功 ,返回true ; 否则,返回false
						  if(result){
								span.closest('li').attr('class',"match");
						  }else{
								span.closest('li').attr('class',"mis_match");
						  }
					 
			  });

		}

		/* 
				正则匹配法 :
			    @param test_text     : input组件的值
				@param target_text  : 要匹配的科室名称(span中的) 
		*/
		function regex_match( test_text , target_text ){
			var regex =  new RegExp( "[\\d\\w\u4E00-\u9FA5]*"+test_text+"+[\\d\\w\u4E00-\u9FA5]*","gim" ); 
			var result = regex.test(target_text);
			return result;
		}
		
        
           $(function(){
        	   //渲染图片
        	   showPic();
        	   function showPic(){
        		   //var length=$(ul li).size();
        		   $('ul li a').each(function(index){
        			   var picName=$(this).attr('class');
        			  
        			   $(this).css({
            			   'background':'url("assets/image/productAdmin/department_list/'+picName+'.png") left center no-repeat,url("assets/image/productAdmin/department_list/right.png") right center no-repeat',
            			   'background-size':'1.2em 2.5em,0.5em 0.8em'
            		   });
        		   });
        	   }
        	   
        	   function nextDate(){
        		   var start = new Date();
                   start.setDate(start.getDate()+1);  
            		var str = "" + start.getFullYear() + "-";
 	           	   str += (start.getMonth()+1) + "-";
 	           	   str +=start.getDate();
              		return str;
        	   }
        	   /*
        	  
        	 //链接跳转
               //<!-- ${mainUrl}outpatient.html?departId=${department.departmentCode}-->
               $('li a').each(function(){
                	var departmentCode=$(this).attr('id');
                	var startDate=nextDate();
                	var endDate=nextDate();
                	var url=$(this).attr('data-url');
                	var strHref=url+"outpatient.html?departmentCode="+departmentCode+"&startDate="+startDate+"&endDate="+endDate;
                	$(this).attr('href',strHref);
               });
        	   */
        	   
        	   $('li a').each(function(){
               	var departmentCode=$(this).attr('id');
               	var startDate=nextDate();
               	var endDate=nextDate();
               	var strHref="two_department_list?departmentCode="+departmentCode;
               	$(this).attr('href',strHref);
              });
        	   
        	   
           })
        </script>
		   
  </body>
</html>
