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
        <title>我的病历</title>
        <meta name="description" content="">
	    
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        
         <script src="assets/script/js/jquery.min.js"></script>
        <script src="assets/script/js/jquery-migrate.min.js"></script>
       <link rel="stylesheet" href="assets/css/public.css">
      <link rel="stylesheet" href="assets/css/lCalendar.css">
       <script src="assets/script/js/lCalendar.min.js"></script>
        
      <!--手机移动端web资源的整合  end-->
        <style>
      
           html,body,.main{
              width:100%;
              height:100%;
              font-family:"黑体";
              background:#f1f1f1;
           }
           
           /*添加信息*/
           .main .add_message{
               padding:15px;
               background:#fff;
           }
           
           .main .add_message input.til{
               color:#999;
               font-size:14px;
               border:0;
               width:100%;
           }
           .main .add_message .pics{
              margin-top:30px;
           }
           
           .main  .pics span{
               width:75px;
               height:75px;
               margin-right:10px;
           }
           
           .main .pics span.addPic{
               position:relative;
               display:inline-block;
              
               background:url(assets/image/my_records/add.png);
               background-size:cover;
           
           }
           .main  .pics span.addPic input{
               position:absolute;
               width:100%;
               height:100%;
               z-index:1;
               opacity:0;
           }
            .main .pics  .img img{
                 width:75px;
                 height:75px;
            }
          
          
          /*一条信息*/ 
          .main .message{
             margin-top:12px;
          }
          
          
          .main .message p{
               color:#333;
               font-szie:14px;
               background:#fff;
               position:relative;
          }
          
         
          .main .message  p i{
             display:inline-block;
             width:17px;
             height:10px;
             position:absolute;
            
             
          }
          
          
         
          
          /*大标题*/
           .main .message p.bigTile{
                padding:0 15px;
               height:43px;
               line-height:43px;
               
          }
          .main .message p.bigTile i{
                width:43px;
                height:43px;
                background: url(assets/image/my_records/down.png) no-repeat 50% 50%;
                background-size:17px 10px;
                right:0;
             
          }
          
           .main .message p.bigTile i.up{
                width:43px;
                height:43px;
                background: url(assets/image/my_records/up.png) no-repeat 50% 50%;
                background-size:17px 10px;
                right:0;
             
          }
          
          
          /*展开信息*/
          .main .message .show_info{
               margin-top:12px;
               background:#fff;
               padding:15px;
               display:none;
          
          }
          
          /*小标题*/
         
          
          .main .message .show_info  .pics{
              margin-top:24px;
          }
          
          .main .message .show_info  .pics span.pic{
             position:relative;
             z-index:9;
          }
          
          .main .message .show_info .pics  span.img i{
            display:inline-block;
             position:absolute;
             width:23px;
             height:23px;
             background:url(assets/image/my_records/close.png);
             background-size:cover;
             z-index:10;
             margin-left:-14px;
             margin-top:-8px;
          }
          
           
        </style>
    </head>
    
     <body>
     
        <div class="main">
        
           <div class="add_message">
               <input class="til" type="text" placeholder="病例图片检点介绍">
               
               <div class="pics">
                   <span class="addPic"><input type="file" class="file_input" class="input-upload-image" capture="camera"  multiple/></span>
               </div>
           </div>
           
           <div class="message">
               <p class="bigTile"><span>2016-08-30 门诊报告单</span><i class="drop"></i></p>
               <div class="show_info">
                    <p class="smallTitle"><span>2016-07-22 胸透</span><i></i></p>
                    
                   <div class="pics">
                       <span class="addPic"><input type="file" class="file_input" class="input-upload-image" capture="camera"  multiple/></span>
                    </div>
               </div>
           </div>
           
           
            <div class="message">
               <p class="bigTile"><span>2016-08-30 门诊报告单</span><i class="drop"></i></p>
               <div class="show_info">
                    <p class="smallTitle"><span>2016-07-22 胸透</span><i></i></p>
                    
                   <div class="pics">
                       <span class="addPic"><input type="file" class="file_input" class="input-upload-image" capture="camera"  multiple/></span>
                    </div>
               </div>
           </div>
           
           
             <div class="message">
               <p class="bigTile"><span>2016-08-30 门诊报告单</span><i class="drop"></i></p>
               <div class="show_info">
                    <p class="smallTitle"><span>2016-07-22 胸透</span><i></i></p>
                    
                   <div class="pics">
                       <span class="addPic"><input type="file" class="file_input" class="input-upload-image" capture="camera"  multiple/></span>
                    </div>
               </div>
           </div>
           
           
            
        </div>
        <script>
        $(function(){
        	 //var input = $('.file_input'); 
        	 var input = $('.file_input');
             var result,div;   
         
             if(typeof FileReader==='undefined'){   
                 result.innerHTML = "抱歉，你的浏览器不支持 FileReader";   
                // input.setAttribute('disabled','disabled');
               	 $.each(input , function(i , o){
            		 $(o).attr('disabled','disabled');
            	 });
             }else{ 
            	 $.each(input , function(i , o){
            		 $(o).on('change',readFile);
            	 });
             }
             
             
             function readFile(){ 
            	 var _this = $(this)[0];
                 for(var i=0;i<_this.files.length;i++){   
                     if (!_this['value'].match(/.jpg|.gif|.png|.bmp/i)){　　//判断上传文件格式   
                         return alert("上传的图片格式不正确，请重新选择")　　　　　　　　　　}   
                     var reader = new FileReader();   
                     reader.readAsDataURL(_this.files[i]);
                     reader.onload = function(e){ 
                     	//result='<span class="show_img"><img src="'+this.result+'"><i class="closeImg" onclick="removeImg(this)"></i></span>';
                    	 result='<span class="img"><img src="'+this.result+'"><i class="closeImg"></i></span>';
                    	 $(_this).parent('.addPic').before(result);
                         　　　　　　　　　	 }      
                 }   
             }
             
        });
        
        $('.closeImg').live('click touchend',function(){
        	$(this).parents('.img').remove();
        	event.preventDefault();
       	 
        });
        
        
        $('.message .drop').toggle(function(){
        	$(this).parents('.message').find('.show_info').slideDown('slow');
        	$(this).removeClass('up');
        	
        	
        },
        function(){
        	$(this).parents('.message').find('.show_info').slideUp('slow');
        	$(this).addClass('up');
        	
           }
        );
        
        
        
            
        
        </script>
     </body>
</html>

