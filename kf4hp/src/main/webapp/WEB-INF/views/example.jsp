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
<title>无标题文档</title>
<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="assets/scripts/jquery/jquery.js"></script>   
   <script type="text/javascript" src="assets/scripts/left.js"></script>
<script type="text/javascript">
$(function(){

	
	
	 $('dt').click(function(){
	    var $dd=$(this).nextAll('dd');
	    $('dd').slideUp();
	    if($dd.is(':visible')){
	    	$(this).addClass('dt');
	    	$(this).removeClass('add');
	    	$(this).nextAll('dd').slideUp();
	    	
	    }else{
	    	$(this).addClass('add');
	    	$(this).nextAll('dd').slideDown();
	    	$(this).removeClass('dt');
	    }
		
	});	   
	
});  





</script>


</head>

<body >
    <div id="frameSide">
        <div id="mainMenu">
            <span class="kf"><a href="javascript:void(0)" title="康复" class="active">康复</a></span>
            <span class="hd"><a href="javascript:void(0)" title="互动">互动</a></span>
            <span class="ywsf"><a href="javascript:void(0)" title="院外随访">院外随访</a></span>
            <span class="qxsz"><a href="javascript:void(0)" title="权限设置">权限设置</a></span>
            <a href="javascript:void(0)" title="隐藏侧边栏" class="sh show_hide_btn">隐藏显示</a>
        </div>
        <div id="subMenu">
            <div class="subTitle"><img src="assets/images/common/module_1.gif" /></div>
            <div class="choosePatient">
                <input type="checkbox" />&nbsp;门诊&nbsp;&nbsp;
                <input type="checkbox" />&nbsp;出院&nbsp;&nbsp;
                <input type="checkbox" />&nbsp;住院
            </div>
            <div class="menuTree ">
                <div data-id="kf">
                    <dl class="dl1">
	                   <dt class="mainTitle"><a href="javascript:void(0)">康复患者</a></dt>
	                   <dd class="subTitle"><a href="javascript:void(0)">康复患者1</a></dd>
	                   <dd class="subTitle"><a href="javascript:void(0)">康复患者2</a></dd>
	                   <dd class="subTitle"><a href="javascript:void(0)">康复患者3</a></dd>
	                   <dd class="subTitle"><a href="javascript:void(0)">康复患者4</a></dd>
	                   <dd class="subTitle"><a href="javascript:void(0)">康复患者5</a></dd>
	                   <dd class="subTitle"><a href="javascript:void(0)">康复患者6</a></dd>
                    </dl>
                    <dl class="dl2">
	                    <dt class="mainTitle"><a href="javascript:void(0)">康复患者</a></dt>
	                    <dd class="subTitle"><a href="javascript:void(0)">康复患者1</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">康复患者2</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">康复患者3</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">康复患者4</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">康复患者5</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">康复患者6</a></dd>
                    </dl>
                </div>
                
                 <div data-id="hd" style="display:none">
                    <dl class="dl1">
	                    <dt class="mainTitle"><a href="javascript:void(0)">相互交流</a></dt>
	                    <dd class="subTitle"><a href="javascript:void(0)">相互交流1</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">相互交流2</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">相互交流3</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">相互交流4</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">相互交流5</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">相互交流6</a></dd>
                    </dl>
                </div>
                
                <div data-id="ywsf" style="display:none">
                    <dl class="dl1">
	                    <dt class="mainTitle"><a href="javascript:void(0)">院外随访</a></dt>
	                    <dd class="subTitle"><a href="javascript:void(0)">院外随访1</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">院外随访2</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">院外随访3</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">院外随访4</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">院外随访5</a></dd>
	                    <dd class="subTitle"><a href="javascript:void(0)">院外随访6</a></dd>
                    </dl>
                </div>
                
                <div data-id="qxsz" style="display:none">
                    <dl class="dl1">
	                    <dt class="mainTitle"><a href="javascript:void(0)">权限设置</a></dt>
	                    <dd class="subTitle"><a href="javascript:void(0)">权限设置1</a></dd>
                    </dl>
                    <dl class="dl1">
	                    <dt class="mainTitle"><a href="javascript:void(0)">设备管理与监控</a></dt>
	                    <dd class="subTitle"><a href="main.html" target="mainFrame">设备监控1</a></dd>
                    </dl>
                    <dl class="dl1">
	                    <dt class="mainTitle"><a href="javascript:void(0)">基础数据管理</a></dt>
	                    <dd class="subTitle"><a href="equipment_list.html" target="mainFrame">设备管理1</a></dd>
                    </dl>
                </div>
                
            </div>
            
        </div>
    </div>
</body>
</html>

 <script type="text/javascript">
    /*
    $('#mainMenu span a').bind('click',function(){
	  	  // var preActive = $("#mainMenu").find("a[class='active']");
	     	   $(this).addClass('active');
	     	   $(this).parent().siblings().find('a').removeClass('active');
	     	 //  preActive.addClass('active');
	     	   var name=$(this).parent().attr('class');
	     	   var target = $('.menuTree').find("div[data-id='"+name+"']");
	     	   var tar_id = target.data("id");
	     	   if(name == tar_id){
	     		   //var kf = $('.menuTree').find("div").data("id");
	     		   var sib = target.siblings();
	     		   target.show();
	     		   sib.hide();
	     	   }
	     });
	     
	     //主菜单 移入/移除事件(不包含当前活跃a链接)
	     $('#mainMenu span a:not(:hover)').on("mouseover mouseout",
	     	function(event){
	  	   //鼠标移入
	  	   if(event.type == "mouseover"){
	  		   var preActive = $("#mainMenu").find("a[class='active']");
	        	   $(this).addClass('active');
	        	   $(this).parent().siblings().find('a').removeClass('active');
	        	   preActive.addClass('active');
	        	   var name=$(this).parent().attr('class');
	        	   var target = $('.menuTree').find("div[data-id='"+name+"']");
	        	   var tar_id = target.data("id");
	        	   if(name == tar_id){
	        		   var sib = target.siblings();
	        		   target.show();
	        		   sib.hide();
	        	   }   
	  	   }
	  	   //鼠标移出
	  	   if(event.type == "mouseout"){
		          var allActive = $("#mainMenu").find("a[class='active']");
	        	  if(allActive.length != 1){
	            	  $(this).removeClass('active');
	            	  var preActive = $("#mainMenu").find("a[class='active']");
	            	  $(preActive).trigger('click');
	        	  }
	  	   }
	        });
	     */
    </script>
