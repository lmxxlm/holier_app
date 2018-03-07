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
<!--[if gt IE 8]><!-->
<!--<![endif]-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="./commons/runParams.html"%>
<title>康复管理平台</title>
<link href="assets/style/reStyle/reset.css" rel="stylesheet" type="text/css" />
<link href="assets/style/reStyle/frame.css" rel="stylesheet" type="text/css" />
<style>
#table3 input{padding:5px;overflow: visible;padding-left:10px;}
#table3  input[type="button"]{ margin-left:50%;padding:10px;color:#777 !important;border-radius:10px;}
#table3  input[type="button"]:hover{color:#333 !important;}


body{behavior:url("assets/style/css/csshover.htc");}
.table{margin-bottom:10px !important;}
.td1{padding:10px;text-align:left !important; color:#333 !important;}
.listImg img{height:48px}
.conImg img{height:70px;}
a.help{float:right; padding-left:20px; background:url(assets/images/common/help_circle.png) no-repeat left center; color:blue; margin-top:0;_margin-top:-17px;*margin-top:-17px;}
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

#addImageModal{
    background:#fff;
};






</style>
</head>


<body>
    <div id="frameMain">
        <input type="hidden" name="token" value="${token}"></input>
        <div id="top_nav">当前位置：<a href="wards.html?hospital_id=${hospital_id}">病房管理</a>&nbsp;>&nbsp;添加病房</div>
        
        <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0" id="table3">
                <tr>
                    <td class="ltitle" style="border-top:1px solid #02397F;">病房名称</td>
                    <td class="td1" style="border-top:1px solid #ECECEC;"><input type="text" value="${bedroom_info.name}" name="bedroom_name"></input>
                    <a href="javascript:alert('请拨打 400-996-8881 联系运营人员帮您修改。')" class="help">信息有误？</a>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">病房头像</td>
                    <td class="td1 showHead">
	                    <div class="imgUnit">
                         <a href="${bedroom_info.image.fileName}" data-small="" data-large="" target="_blank" class="listImg"><img src="${bedroom_info.image.middle}"/></a>
                         <span class="modalDelete">删除</span>
	                    </div>
	                    <span class="addImg"></span>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">病房环境</td>
                    <td class="td1 showList">
                    <c:forEach items="${bedroom_info.pictures}" var="image">
                         <div class="imgUnit"><a href="${image.fileName}" data-small="" data-large="" target="_blank" class="conImg"><img src="${image.middle}"/></a><span class="modalDelete">删除</span></div>
                    </c:forEach>
                    <span class="addImg"></span>
                    </td>
                </tr>
                <tr>
                    <td class="ltitle">参考价格</td>
                    <td class="td1"><input type="text" name="price" value="${bedroom_info.price}">元/人/天</input></td>
                </tr>
                <tr>
                    <td class="ltitle">建筑面积</td>
                    <td class="td1"><input type="text" name="space" value="${bedroom_info.space}"> ㎡</input></td>
                </tr>
                <tr>
                    <td class="ltitle">床位数</td>
                    <td class="td1"><input type="text" name="bednumber" value="${bedroom_info.bednumber}"> 张</input></td>
                </tr>
                <tr>
                    <td class="ltitle">楼层</td>
                    <td class="td1"><input type="text" name="floor" value="${bedroom_info.floor}"> 层</input></td>
                </tr>
                <tr>
                    <td class="ltitle">设备标签</td>
                    <td class="td1"><input type="text" name="tags" value="${bedroom_info.tags}"></input></td>
                </tr>
                <tr>
                    <td class="ltitle">操作</td>
                    <td class="td1 addTd" ><input type="button" name="add" value="确定" style="text-align:center;"></input></td>
                </tr>
        </table>
        
    </div>
    
    <input type="file"  name="upd_image_init" id="upd_image_init" multiple style="opacity: 0;filter:alpha(opacity:0);"/>
<script type="text/javascript" src="assets/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript" src="assets/scripts/common/frame.js"></script>
<script type="text/javascript" >


$(function(){
	//设置菜单
	showMainMenu('data');
	menuInit();
	function menuInit(){
		var leftFrame = $(window.parent.frames["leftFrame"].document);
		var menuID = $('input[name="menuID"]').val();
		leftFrame.find('.menuTree a').removeClass('active');
		leftFrame.find('.bfgl').addClass("active");
		//leftFrame.find('.'+menuID).addClass("active");
	}
    
});

$(function(){
	init();
    //初始化 table
	function init(){
		$('#table3 td input').val('');
		//$('#table3 .showHead').html('<span class="addImg"></span>');
		//$('#table3 .showList').html('<span class="addImg"></span>');
		$('#table3 input[type="button"]').val("确定");
	};
	//pdLen();
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
          		addImg.before('<div class="imgUnit"><a href="'+result.data.fileName+'" data-small="'+result.data.small+'" data-large="'+result.data.large+'" target="_blank" class="listImg"><img src="'+result.data.middle+'"/></a><span class="modalDelete">删除</span></div>');
          	  }else{
          		  alert("添加失败");
          		  return false;
          	  }
            });
	    };
	      
	});
	
	
	
	//点击确定进行确定修改
	$('input[name="add"]').on('click',function(){
		var bedroom_name=$('#table3 input[name="bedroom_name"]').val();
		var price=$('#table3 input[name="price"]').val();
		var space=$('#table3 input[name="space"]').val();
		var bednumber=$('#table3 input[name="bednumber"]').val();
		var floor=$('#table3 input[name="floor"]').val();
		var tags=$('#table3 input[name="tags"]').val();
		var token=$('input[name="token"]').val();
		
		
		//(1)获得头像的路径
  	    //（2）获得图集的路径reward
  	   
  	    var imgUpList=[];
  	    var imgUpHead='';
  	    
  	    var fileName=$('.showHead a').attr('href');
  	    var middle=$('.showHead a img').attr('src');
  	    var large=$('.showHead a').attr('data-large');
	    var small=$('.showHead a').attr('data-small');
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
    	 if(imageHeadPath.length<1){
    		 alert("没有添加头像");
    		 return false;
    	 }
    	 if(imageListpath.length<1){
    		 alert("没有添加病房的环境");
    		 return false;
    	 }
    	 
    	 if(!bedroom_name){
    		 alert("没有输入病房名称！");
    		 return false;
    	 };
    	 var zs=/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/;
    	 if(!zs.test(price)||!price){
    		 alert("您没有输入价格或输入的价格式不对！");
    		 return false;
    	 };
    	 if(!space){
    		 alert("没有输入建筑面积！");
    		 return false;
    	 };
    	 
    	 if(!zs.test(bednumber)||!bednumber){
 		    alert("请输入床位数！");
 			return false;
 		}
    	 if(!floor){
    		 alert("没有输入楼层！");
    		 return false;
    	 }
    	 if(!tags){
    		 alert("没有输入标签！");
    		 return false;
    	 }
    	 var questURL="do_add_img.do";
    	 var questArr={
    			 bedroom_name:bedroom_name,
    			 price:price,
    			 space:space,
    			 bednumber:bednumber,
    			 floor:floor,
    			 tags:tags,
    			 image:imageHeadPath,
    			 pictures:imageListpath,
    			 token:token
    			 
    	 };
    	 $.post(questURL,questArr,function(result){
    		 if(result){
    			 alert("修改成功");
    			 window.location.href="wards.html";
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