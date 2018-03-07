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
<%@ include file="./commons/runParams.html"%>
<title>康复管理平台</title>
<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
<style>
.table{margin-bottom:10px !important;}
.td1{padding:10px;text-align:left !important; color:#333 !important;}

#table2 .confirmBtn{

background:#044599 none no-repeat scroll 0 0;padding:5px 10px;color:#fff;border:none;margin-right:25%;border-radius:5px;

}
#table2 .cancelBtn{
background:#aaa none no-repeat scroll 0 0;padding:5px 10px;color:#fff;border:none;margin-right:25%;border-radius:5px;

}

.listImg img{height:50px}
.conImg img{height:70px;}
a.help{float:right; padding-left:20px; background:url(assets/images/common/help_circle.png) no-repeat left center; color:blue; margin-top:0;_margin-top:-17px;*margin-top:-17px;}

.editBtn{background: #044599 none no-repeat scroll 0 0;
padding: 5px 10px;
color: #fff;
border: none;
border-radius: 5px;
float:right;}

#table2{display:none;}
.addImg{border:1px dashed black;display:inline-block;
        background:url(assets/images/add.png) no-repeat ;
        /*background-size:100% 100%;*/
        background-position:50% 50%;
        }
.showHead .addImg{width:50px;height:48px;}
.showList .addImg{width:50px;height:70px;}
.imgUnit .modalDelete{display:none;}
.imgUnit:hover .modalDelete{width:100%;height:20px;background:rgba(0,0,0,0.4);
z-index:10;display:inline-block;
position:absolute;left:0;bottom:0;text-align:center;color:#fff;
*position:absolute;
*background:#bbb;}

.imgUnit{position:relative;display:inline-block;
         *position:relative;
         *float:left;
         *margin-right:5px;}
#table2 input{padding:5px;overflow: visible;padding-left:10px; font-size:15px;}


#addImageModal{
    background:#fff;
};


</style>
</head>


<body>
    <div id="frameMain">
        <div id="top_nav">当前位置：医院信息&nbsp;>&nbsp;医院信息<button class="editBtn"  name="editBtn">修改医院信息</button></div>
        <input type="hidden" name="token" value="${token}"></input>
        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0" id="table1">
                <tr>
                    <td class="ltitle" style="border-top:1px solid #02397F;">医院名称</td>
                    <td class="td1" style="border-top:1px solid #ECECEC;">${hospital_info.name}
                    <a href="javascript:alert('请拨打 400-996-8881 联系运营人员帮您修改。')" class="help">信息有误？</a>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">医院头像</td>
                    <td class="td1"><a href="${hospital_info.image.fileName}" target="_blank" class="listImg"><img src="${hospital_info.image.middle}"/></a></td>
                </tr>
                <tr>
                    <td class="ltitle">医院环境</td>
                    <td class="td1">
                    <c:forEach items="${hospital_info.pictures}" var="image">
                         <a href="${image.fileName}" target="_blank" class="conImg"><img src="${image.middle}"/></a>
                    </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">详细地址</td>
                    <td class="td1">${hospital_info.address}</td>
                </tr>
                <tr>
                    <td class="ltitle">特色专科</td>
                    <td class="td1">${hospital_info.departments}</td>
                </tr>
                <tr>
                    <td class="ltitle">床位数</td>
                    <td class="td1">${hospital_info.bednumber}张</td>
                </tr>
                <tr>
                    <td class="ltitle">简介</td>
                    <td class="td1">${hospital_info.intro}</td>
                </tr>
                <tr>
                    <td class="ltitle">转运车接送</td>
                    <td class="td1">
                    <c:choose>
   <c:when test="${hospital_info.pss == true}">
  是
   </c:when>  
   <c:otherwise>
   否  
   </c:otherwise>
</c:choose>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">授牌信息</td>
                    <td class="td1">
                    <c:choose>
   <c:when test="${hospital_info.auth == true}">
浙江省医学会授牌医疗机构授牌
   </c:when>  
   <c:otherwise>
   未授牌
   </c:otherwise>
</c:choose>
                    </td>
                </tr>
        </table>
        
        <!-- --------------------------------------------- -->
        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0" id="table2">
                <tr>
                    <td class="ltitle" style="border-top:1px solid #02397F;">医院名称</td>
                    <td class="td1" style="border-top:1px solid #ECECEC;"><input type="text" value="${hospital_info.name}" name="hospital_name"></input>
                    <a href="javascript:alert('请拨打 400-996-8881 联系运营人员帮您修改。')" class="help">信息有误？</a>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">医院头像</td>
                     <td class="td1 showHead">
	                    <div class="imgUnit">
                         <a href="${hospital_info.image.fileName}" data-small="" data-large="" target="_blank" class="listImg"><img src="${hospital_info.image.middle}"/></a>
                         <span class="modalDelete">删除</span>
	                    </div>
	                    <span class="addImg"></span>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">医院环境</td>
                    <td class="td1 showList">
                    <c:forEach items="${hospital_info.pictures}" var="image">
                         <div class="imgUnit"><a href="${image.fileName}" data-small="" data-large="" target="_blank" class="conImg"><img src="${image.middle}"/></a><span class="modalDelete">删除</span></div>
                    </c:forEach>
                    <span class="addImg"></span>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">详细地址</td>
                    <td class="td1"><textarea type="text" name="address" value="${hospital_info.address}">${hospital_info.address}</textarea></td>
                </tr>
                <tr>
                    <td class="ltitle">特色专科</td>
                    <td class="td1"><input type="text" name="departments" value="${hospital_info.departments}"></input></td>
                </tr>
                <tr>
                    <td class="ltitle">床位数</td>
                    <td class="td1"><input type="text" name="bednumber" value="${hospital_info.bednumber}"></input>张</td>
                </tr>
                <tr>
                    <td class="ltitle">简介</td>
                    <td class="td1"><textarea type="text" name="intro" value="${hospital_info.intro}">${hospital_info.intro}</textarea></td>
                </tr>
                <tr>
                    <td class="ltitle">转运车接送</td>
                    <td class="td1">
                   
                    <c:choose>
   <c:when test="${hospital_info.pss == true}">
     <input type="radio" value="yes" name="pss" checked>是</input>
     <input type="radio" value="no" name="pss">否</input>
   </c:when>  
   <c:otherwise>
     <input type="radio" value="yes" name="pss">是</input>
     <input type="radio" value="no" name="pss" checked>否</input>              
   </c:otherwise>
</c:choose>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">授牌信息</td>
                    <td class="td1">
                    <input type="text" value=" <c:choose>
   <c:when test="${hospital_info.auth == true}">
浙江省医学会授牌医疗机构授牌
   </c:when>  
   <c:otherwise>
   未授牌
   </c:otherwise>
</c:choose>" name="auth"></input>
                 
                    </td>
                </tr>
                 <tr>
                    <td class="ltitle">操作</td>
                    <td class="td1"><button class="confirmBtn" >确定</button><button class="cancelBtn">取消</button></td>
                </tr>
        </table>
        
        
    </div>
    
<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript" src="assets/scripts/common/frame.js"></script>
<script>
$(function(){
	//设置菜单
	showMainMenu('data');
	menuInit();
	function menuInit(){
		var leftFrame = $(window.parent.frames["leftFrame"].document);
		leftFrame.find('.menuTree a').removeClass('active');
		leftFrame.find('.yyxx').addClass("active");
		/*leftFrame.find('input[value="1"]').attr('checked',false);
		leftFrame.find('input[value="0"]').attr('checked',false);*/
	}
	
	//点击修改医院信息
	$('.editBtn').on('click',function(){
		$('#table1').hide();
		$('#table2').show();
	});
    
})

$(function(){
	pdLen();
	function pdLen(){
		var len=$('.showHead').find('.imgUnit').length;
		if(len>=1){
			$('.showHead').find('.addImg').hide();
		}else{
			$('.showHead').find('.addImg').show();
		}
	};
	//删除图片
	$('.imgUnit .modalDelete').live('click',function(){
		$(this).parents('.imgUnit').remove();
		pdLen();
	});
	
	
	//添加图片
	var addImg;
	$('.addImg').on('click',function(){
		addImg=$(this);
		$('input[name="upd_image_init"]').click();
		
	});
	
	$('input[name="upd_image_init"]').on('change',function(){//改成on才好使
		var file=$(this).get(0);
	    var pic;
		var ext=file.value.substring(file.value.lastIndexOf(".")+1).toLowerCase();
		// gif在IE浏览器暂时无法显示
	     if(ext!='png'&&ext!='jpg'&&ext!='jpeg'){
	         alert("图片的格式必须为png或者jpg或者jpeg格式！"); 
	         return;
	     }
	     var isIE = navigator.userAgent.match(/MSIE/)!= null,
	         isIE6 = navigator.userAgent.match(/MSIE 6.0/)!= null;
	     if(isIE) {
	         file.select();
	         window.parent.document.body.focus();
	         var reallocalpath = document.selection.createRange().text;
	         
	         // IE6浏览器设置img的src为本地路径可以直接显示图片
	          if (isIE6) {
	        	 //addImg.before('<div class="imgUnit"><a href="'+reallocalpath+'" target="_blank" class="listImg"><img src="'+reallocalpath+'"/></a><span class="modalDelete">删除</span></div>');
	             //pic.src = reallocalpath;
	              upLoadImg(reallocalpath);
	          }else {
	        	  // 非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现
	             // pic.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\"" + reallocalpath + "\")";
	              // 设置img的src为base64编码的透明图片 取消显示浏览器默认图片
	              //pic.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==';
	              //var style_str = "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src='" + reallocalpath + "')";
	              //console.log(style_str);
	              //addImg.before('<div class="imgUnit"><a href="'+reallocalpath+'" target="_blank" class="listImg"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" style="'+style_str+'"/></a><span class="modalDelete">删除</span></div>');
	             // alert(reallocalpath);
	              upLoadImg(reallocalpath)
	          }
	      }else {
	          html5Reader(file);
	        
	      };
	      
	      function html5Reader(file){
	    	     var file = file.files[0];
	    	     var reader = new FileReader();
	    	     reader.readAsDataURL(file);
	    	     reader.onload = function(e){
	    	         //var pic = document.getElementById("preview");
	    	         //pic.src=this.result;
	    	         //addImg.before('<div class="imgUnit"><a href="'+this.result+'" target="_blank" class="listImg"><img src="'+this.result+'"/></a><span class="modalDelete">删除</span></div>');
	    	         var imgUrl=this.result;
	    	          upLoadImg(imgUrl);
	    	     }
	    };
	    
	    function upLoadImg(url){
	    	//向后台传值
	    	var token=$('input[name="token"]').val();
            var questURL=runParams.mainUrl+'get_url.do';
            var questArr={
          		  imgurl:url,
          		  token:token
            };
            
            $.post(questURL,questArr,function(result){
          	  result = eval("("+result+")");
          	  if(result){
          		addImg.before('<div class="imgUnit"><a href="'+result.data.fileName+'" data-small="'+result.data.small+'" data-large="'+result.data.large+'" target="_blank" class="listImg"><img src="'+result.data.middle+'" style="'+style_str+'"/></a><span class="modalDelete">删除</span></div>');
          	  }else{
          		  alert("添加失败");
          		  return false;
          	  }
            });
	    };
	      
	});
	
	
	//点击取消、
	$('.cancelBtn').on('click',function(){
		$('#table1').show();
		$('#table2').hide();
	});
	//点击确定进行确定修改
	$('.confirmBtn').on('click',function(){
		var hospital_name=$('#table2 input[name="hospital_name"]').val();
		var address=$('#table2 textarea[name="address"]').val();
		var departments=$('#table2 input[name="departments"]').val();
		var bednumber=$('#table2 input[name="bednumber"]').val();
		var intro=$('#table2 textarea[name="intro"]').val();
		var pss=$('#table2 input[name="pss"]:checked').val();
		var auth=$('#table2 input[name="auth"]').val();
		var token=$('input[name="token"]').val();
		
		
		//(1)获得头像的路径
  	    //（2）获得图集的路径reward
  	   
  	    var imgUpList=[];
  	    var imgUpHead='';
  	    
  	    var fileName=$('.showHead .listImg').attr('href');
  	    var middle=$('.showHead .listImg img').attr('src');
  	    var large=$('.showHead .listImg').attr('data-large');
	    var small=$('.showHead .listImg').attr('data-small');
        imgUpHead = {
        		"large" : large ,
  	    		"small" : small ,
  	    		"middle": middle,
  	    		"fileName":fileName
      	    	};
    	var imageHeadPath= JSON.stringify(imgUpHead);
  	   
  	     $('.showList .imgUnit').each(function(){
  	    	var targetPath= $(this).find('a');
      	   	var large=targetPath.data('large');
  	    	var small=targetPath.data('small');
  	    	var middle=targetPath.data('href');
  	    	var fileName=targetPath.find('img').attr('src');
  	    	
  	    	var obj = {
      	    		"large" : large ,
      	    		"small" : small ,
      	    		"middle": middle,
      	    		"fileName":fileName
      	    	};
  	      imgUpList.push(obj);
  	     });
    	 var imageListpath = JSON.stringify(imgUpList);
    	 console.log(imageHeadPath);
    	 console.log(imageListpath);
    	 
    	 if(!hospital_name){
    		 alert("没有输入医院名称！");
    		 return false;
    	 };
    	 if(imageHeadPath.length<1){
    		 alert("没有添加头像");
    		 return false;
    	 }
    	 if(imageListpath.length<1){
    		 alert("没有添加病房的环境");
    		 return false;
    	 }
    	 
    	 if(!address){
    		 alert("没有输入地址！");
    		 return false;
    	 };
    	 
    	 
    	 if(!departments){
    		 alert("没有输入详细专科！");
    		 return false;
    	 };
    	 
    	 
    	 if(!bednumber){
    		 alert("没有输入床位数！");
    		 return false;
    	 };
    	 if(!intro){
    		 alert("没有输入简介！");
    		 return false;
    	 };
    	 
    	 if(!auth){
    		 alert("没有输入受牌信息！");
    		 return false;
    	 };
    	 
    	 if(!token){
    		 alert("非法提交");
    		 return false;
    	 }
    	 
    	 
    	 var questURL="do_edit_img.do";
    	 var questArr={
    			 hospital_name:hospital_name,
    			 address:address,
    			 departments:departments,
    			 bednumber:bednumber,
    			 intro:intro,
    			 pss:pss,
    			 auth:auth,
    			 image:imageHeadPath,
    			 pictures:imageListpath,
    			 token:token
    			 
    	 };
    	 $.post(questURL,questArr,function(result){
    		 if(result){
    			 alert("修改成功");
    			 location.reload();
    		 }else{
    			 alert("修改失败");
    			 location.reload();
    		 };
    	 });
	});
	
	            	     
	 	     
	            	     
}); 
</script>
</body>
</html>