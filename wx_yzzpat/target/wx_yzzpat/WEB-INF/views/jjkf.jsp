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
        <title>居家康复预约登记</title>
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
              background:#e3e3e3;
           }
           
           .til{
              background:#fff;padding-left:15px;
              font-size:15px;
           }
            hr{
             margin:0;
             padding:0;
             height:0;
             border-top:0;
           }
           .til p{
               height:43px;
               line-height:43px;
               font-color:#333333;
           }
           .til p.inTime{
               padding-left:30px;
               color:#999999;
               background:url(assets/image/order_sickroom/time.jpg) no-repeat 0 50%;
               background-size:18px,18px;
           }
           
           /*注意事项*/
           .notice{
               background:#f1f1f1;
               padding-left:15px;
                font-size:14px;
           }
         .notice hr{
              border-bottom:1px dashed #999999;
           }
          .notice p.p1{
              height:40px;
              line-height:40px;
              color:#333333;
           }
           
          .main .notice p.p2{
              color:#999999;
              padding: 13px 0;
              line-height:22px;
           }
           
           /*填写患者的信息*/
           
           .writeInfo{
               background:#fff;
               padding-left:15px;
           }
           .writeInfo p{
               height:50px;
               line-height:50px;
               position:relative;
              
           }
           .writeInfo p span{
               display:inline-block;
               font-size:15px;
               width:80px;
               color:#333333;
               position:absolute;
           }
            .writeInfo textarea{
             padding:15px;
             font-size:14px;
             color:#999999;
             border:0;
             width:100%;
             overflow-y:visible ;
             box-sizing:border-box;
             -webkit-box-sizing:border-box;
           }
           .writeInfo p input{
              height:50px;
              border:0;
              padding-left:80px;
              padding-right:60px;
              color:#999999;
              font-size:15px;
              background:rgba(0,0,0,0);
              width:100%;
               box-sizing:border-box;/*对padding是及其有用的*/
               -webkit-sizing:border-box;
           }
           
           
            .writeInfo p.patientName i{
                display:inline-block;
                width:50px;
                height:50px;
                position:absolute;
                right:0;
                top:0;
                background:#a5d3a7 url(assets/image/order_sickroom/right.jpg);
                background-size:cover;
            }
            
            
            /*转院日期*/
            .writeInfo p.transTime input{
               position:absolute;
               z-index:10;
            }
            .writeInfo p.transTime i{
               display:inline-block;
                width:16px;
                height:16px;
                position:absolute;
                right:15px;
                top:50%;
                margin-top:-8px;
                background:url(assets/image/order_sickroom/down.png) no-repeat;
                background-size:cover;
                z-index:9;
            }
           /*上传出院小结图片*/
           
           .upImg{
             /* margin-bottom:50px;*/
              margin-top:12px;
              background:#fff;
              padding:15px;
           }
           
           .upImg .user-avatar,.upImg .show_img{
              position:relative;
              width:75px;
              height:75px;
              margin-right:20px;
              display:inline-block;
              margin-bottom:10px;
           }
           
           .upImg .show_img i{
              position:absolute;
              width:21px;
              height:21px;
              display:inline-block;
              background: url(assets/image/order_sickroom/closeImg.jpg);
              background-size:cover;
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
			width: 75px;
			height: 75px;
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
       display:none;
       margin-bottom:100px;
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
    
    .round{
       display:inline-block;
       width:30px;
       height:30px;
       background:url(assets/image/order_sickroom/round.gif) no-repeat;
       background-size:cover;
       position:absolute;
       top:10px;
    }
    
    .modal{
       width:100%;
       height:100%;
       position:fixed;
       left:0;
       top:0;
       background:rgba(0,0,0,0.1);
       display:none;
       z-index:99999;
    }
    
    
      .main {
			  overflow: auto;
			  -webkit-overflow-scrolling: touch;
			}
        </style>
    </head>
    
     <body>
        <div class="main">
        <div class="til">
               <p>请填写下列信息，我们收到后会马上与您取得联系！</p>
               <hr>
            </div>
            <div class="writeInfo">
               <p class="patientName"><span>姓名</span><input name="patientName" type="text" placeholder="请输入您的真实姓名">
               <!-- <i></i> -->
               </p>
               <hr>
               <p><span>手机号码</span><input type="text" name="tel" placeholder="请输入您的手机号码"></p>
               <hr>
               <p><span>备注说明</span></p>
                <textarea name="describe" placeholder="在这里您可以输入对居家康复的期望"/></textarea><br>
               <hr> 
               <button id="confirm">提交预约</button> 
            </div>
        </div>
        <div class="modal"></div>
        <script>
       
        $('#confirm').on('click',function(){
        
       	 var patientName=$('.writeInfo input[name="patientName"]').val();
       	 var tel=$('.writeInfo input[name="tel"]').val();
       	 var describe=$('.writeInfo textarea[name="describe"]').val();
       	 
       	 if(!patientName){
       		 alert("请输入患者姓名");
       		 return false;
       	 };
       	 
       	 if(!tel){
       		 alert("请输入联系方式");
       		 return false;
       	 };
       	 
       	var questURL="jjkf_order.do";
    	var questArr={
    			name:patientName,
    			tel:tel,
    			describe:describe
    	}  
    	$.post(questURL,questArr,function(result){
    		if(result){
    			alert("提交成功，我们收到后会马上跟您联系。");
    			window.location.href="contact.html";
    		}else{
    			alert("系统开小差了，请稍后重试。");
    			return false;
    		}
    		
    	});
       	 
   });
        </script>
     </body>
</html>

