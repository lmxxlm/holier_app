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
        <title>添加信息</title>
        <meta name="description" content="">
	    
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        
        <script src="../assets/image/eg/js/jquery-1.8.0.min.js"></script>
         <script src="../assets/image/eg/js/jquery-migrate.min.js"></script>
       <link rel="stylesheet" href="../assets/css/public.css">
        
      <!--手机移动端web资源的整合  end-->
        <style>
      
           html,body,.main{
              width:100%;
              height:100%;
              font-family:"黑体";
              font-size:16px;
              background:#ECF1F2;
           }
           
           .til{
              background:#fff;padding-left:15px;
           }
            hr{
              border-top:0;
              margin:0;
              padding:0;
           }
           .til p{
               height:40px;
               line-height:40px;
           }
           .til p.inTime{
               padding-left:30px;
               color:#ABABAB;
               background:url(../assets/image/eg/inTime.jpg) no-repeat 0 50%;
           }
           /*注意事项*/
           .notice{
               background:#ECF1F2;
               color:#A8A8A9;
               padding-left:15px;
           }
         .notice hr{
              border-color:#E2E5E6;
           }
          .notice p.p1{
              height:34px;
              line-height:34px;
              font-size:15px;
              color:#444444;
           }
           
          .main .notice p.p2{
              font-size:14px;
              padding: 10px 0;
           }
           
           /*填写患者的信息*/
           
           .writeInfo{
               background:#fff;
               padding-left:15px;
           }
           .writeInfo p{
               height:45px;
               line-height:45px;
               
           }
           .writeInfo p span{
               display:inline-block;
               width:80px;
           }
           .writeInfo p input{
              height:42px;
              border:0;
              margin-left:20px;
              color:#C1C1C1;
              font-size:14px;
           }
           
            .writeInfo p.patientName i{
                display:inline-block;
                width:44px;
                height:44px;
                float:right;
                background:url(../assets/image/eg/nameRight.jpg);
            }
           /*上传出院小结图片*/
           
           .upImg{
              margin-top:10px;
              background:#fff;
              padding:15px;
           }
           .upImg textarea{
             margin-top:10px;
             height:35px;
             border:0;
             padding:0;
             display:block;
             width:100%;
           }
           .upImg .user-avatar,.upImg .show_img{
              position:relative;
              width:72px;
              height:72px;
              margin-right:20px;
              display:inline-block;
           }
           
           .upImg .show_img i{
              position:absolute;
              width:21px;
              height:21px;
              display:inline-block;
              background: url(../assets/image/eg/closeImg.jpg);
              z-index:2;
              margin-left:-15px;
              margin-top:-10px;
              border-radius:50%;
           }
           .upImg img{
               width:72px;
               height:72px;
           }
           .upImg .user-avatar .input-upload-image{
              z-index: 1;
			border: none;
			-webkit-opacity: 0;
			opacity: 0;
			width: 72px;
			height: 72px;
			display: inline-block;
			position: absolute;
			left:0;
			top:0;
			width:100%;
			height:100%;
              
           }
           
           button{
              width:100%;
              height:50px;
              line-height:50px;
              background:#FFBE28;
              position:fixed;
              bottom:0;
              left:0;
              border:0;
              color:#fff;
              font-size:16px;
              z-index:999;
           }
      /*转运车接送*/     
     .pass{
        padding-left:15px;
        margin-top:10px;
        height:45px;
        line-height:45px;
        background:#fff;
     }  
     
     .pass .container{
        float:right;
        margin-right:15px;
        padding-top:13px;
     }  
     
     .pass .container input{
        display:none;
     }  
           /*开关按钮*/
    .text {
        display: none;
    }
    .on{
        color:#333;
    }
    .off{
        color:#eee;
    }
    .circle {
        position: absolute;
        display: inline-block;
    }

    #radio ~label {
       /* background-color: grey;*/
        background-color:#fff;
    }

    #radio ~label .circle {
        left: 0;
        transition: all 0.3s;
        --webkit-transition: all 0.3s;
    }

    #radio ~label .on {
        display: none;
    }

    #radio ~ label .off {
        display: inline-block;
    }

    #radio:checked ~ label {
        background: lime;
    }

    #radio:checked ~label .circle {
        left: 20px;
    }
    #radio:checked ~label .on {
        display: inline-block;
    }

    #radio:checked ~ label .off {
        display: none;
    }

    label {
        display: inline-block;
        position: relative;
        height: 20px;
        width: 40px;
        border-top-left-radius: 10px 50%;
        border-bottom-left-radius: 10px 50%;
        border-top-right-radius: 10px 50%;
        border-bottom-right-radius: 10px 50%;
        box-shadow: 0 0 2px black;
    }

    label .circle {
        display: inline-block;
        height: 16px;
        width: 16px;
        border-radius: 50%;
        border: 2px solid #fff;
        background-color: #eee;
        box-shadow:0px 2px 3px 2px rgba(5,5,5,0.5);
    }

    label .text {
        text-indent: 30px;
        line-height: 28px;
        font-size: 18px;
        font-family: sans-serif;
        text-shadow: 0 0 2px #ddd;
    }
        </style>
    </head>
    
     <body>
        <div class="main">
            <div class="til">
               <p>浙江明州康复医院-普通多人间</p>
               <hr>
               <p class="inTime">入住时间：2016-10-18</p>
            </div>
            <div class="notice">
               <p class="p1">注意事项</p>
               <hr>
               <p class="p2">
                  请提醒患者留意一下注意事项：<br>
                  1、办理好出院手续；
                  2、带齐相关病历资料（就诊资料、门诊病历、片子、化验单、出院小结等）。
                  3、保持电话畅通，以便康复医院及时联系。
                  
               </p>
            </div>
            
            <div class="writeInfo">
               <p class="patientName"><span>患者</span><input  type="text" placeholder="请输入或选择患者姓名"><i></i></p>
               <hr>
               <p><span>手机号码</span><input type="text" placeholder="请输入患者或者家属的手机号码"></p>
               <hr>
               <p><span>转院日期</span><input type="text" value="2016-10-18"></p>
            </div>
            
            <div class="upImg">
                <p>上传出院小结</p>
                <textarea type="text" placeholder="患者病情描述:"/></textarea><br>
                
               <div class="img">
                   <span class="user-avatar">
                      <input type="file" id="file_input" class="input-upload-image" capture="camera"  multiple/>
                      <img src="../assets/image/eg/camera72_72.jpg">
                   </span>
               </div>
            </div>
            
            <div class="pass">
               转运车接送
               
               
					  <div class="container">
					        <input type="checkbox" id="radio" name="switch">
					        <label for="radio" class="radio">
					            <span class="circle"></span>
					            <span class="text on"></span>
					            <span class="text off"></span>
					        </label>
					    </div>  

               
            </div>
            
            <button>确认转院</button>
        </div>
        <script>
        $(function(){
        	check();
        	
        	 var input = document.getElementById("file_input");   
             var result,div;   
         
             if(typeof FileReader==='undefined'){   
                 result.innerHTML = "抱歉，你的浏览器不支持 FileReader";   
                 input.setAttribute('disabled','disabled');   
             }else{   
                 input.addEventListener('change',readFile,false);   
             }　　　　//handler   
             function readFile(){   
                 for(var i=0;i<this.files.length;i++){   
                     if (!input['value'].match(/.jpg|.gif|.png|.bmp/i)){　　//判断上传文件格式   
                         return alert("上传的图片格式不正确，请重新选择")　　　　　　　　　　}   
                     var reader = new FileReader();   
                     reader.readAsDataURL(this.files[i]);
                     reader.onload = function(e){ 
                     	//result='<span class="show_img"><img src="'+this.result+'"><i class="closeImg" onclick="removeImg(this)"></i></span>';
                     	result='<span class="show_img"><img src="'+this.result+'"><i class="closeImg" ></i></span>';
                     	$('.user-avatar').before(result);
                     	$('.user-avatar img').attr('src','../assets/image/eg/addImg.jpg');
                         　　　　　　　　　}   
                 
                     
                 }   
             }
             
             
           
            
             
        });
        
        $('.closeImg').live('click touchend',function(){
        	$(this).parents('.show_img').remove();
        	check();
       	 
        });
        function check(){
    		var len= $('.img').find('.show_img').length;
    		if(len<1){
    			$('.user-avatar img').attr('src','../assets/image/eg/camera72_72.jpg');
    		}
    	 }
            
       
        </script>
     </body>
</html>
