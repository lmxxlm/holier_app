<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    
    <title>我的检验</title>
    <script type="text/javascript">
    
    	
    	function init(){
    		
    		var pixclPatio = 1 / window.devicePixelRatio;
			document.write('<meta name="viewport" content="width=device-width,initial-scale='+pixclPatio+',minimum-scale='+pixclPatio+',maximum-scale='+pixclPatio+',user-scalable=no" />');
			
			var html = document.getElementsByTagName('html')[0];
			var pageWidth = html.getBoundingClientRect().width;
			html.style.fontSize = pageWidth / 12 + 'px';
    	}
   
       init();
       
        window.onresize = function(){
        	
     	  location.reload();
        }
    	
    </script>
    <link href="assets/css/productAdmin/check_record/qz.css" rel="stylesheet"/>
		<link href="assets/css/productAdmin/check_record/public.css" rel="stylesheet"/>
	</head>
	<body>
		<div class="main">
			<div class="head clearfix">
				<span class="name">当前就诊人：匿名</span>
				<i class="i1"></i>
				<i class="i2"></i>
			</div>
			<div class="tab">
				<span class="active">检验报告</span>
				<span >检查报告</span>
			</div>
			<div class="show">
				<p>暂无发现您的检验报告</p>
				
			</div>
		</div>
	</body>
	<script>
	   window.onload=function(){
			var tab=document.getElementsByClassName('tab')[0];
			var tabSpan=tab.getElementsByTagName('span');
			for(var i=0;i<tabSpan.length;i++){
				tabSpan[i].onclick=function(){
					for(var i=0;i<tabSpan.length;i++){
						tabSpan[i].className='';
						
					}
					this.className='active';
				}
			}
			}
	</script>
</html>
