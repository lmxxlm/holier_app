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
        <title>提交申请</title>
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
           .upImg p{
              font-size:15px;
              color:#333333;
              
           }
           .upImg textarea{
             padding:15px;
             font-size:14px;
             color:#999999;
             border:0;
             width:100%;
             overflow-y:visible ;
             box-sizing:border-box;
             -webkit-box-sizing:border-box;
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
               <p>${hospital_name}-${bedroom_name}</p>
                <input type="hidden" name="modal_time" 
                  data-time="${date.transfer_date}" 
                  data-bedroomId="${bedroom_id}" 
                   data-pss="${pss}"
                   data-hospitalId="${hospital_id}">
               <hr>
               <p class="inTime" >入住时间：${date.transfer_date}</p>
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
               <p class="patientName"><span>患者</span><input name="patientName" type="text" placeholder="请输入患者姓名">
               <!-- <i></i> -->
               </p>
               <hr>
               <p><span>手机号码</span><input type="text" name="tel" placeholder="请输入患者或者家属的手机号码"></p>
               <hr>
               <p class="transTime">
                   <span>转院日期</span>
                   <input name="transTime" type="text" data-lcalendar="${date.current_date},${date.transfer_date}" readonly  class="check_time">
                                                                      <!-- 当前时间，转院时间 -->
                   <i></i>
               
               </p>
            </div>
            
            <div class="upImg">
                <p>上传出院小结</p>
                <textarea name="describe" placeholder="患者病情描述:"/></textarea><br>
                
               <div class="img">
                   <span class="user-avatar">
                      <input type="file" id="file_input" class="input-upload-image" capture="camera"  multiple/>
                      <img src="assets/image/order_sickroom/upCamera.png">
                   </span>
               </div>
            </div>
           
             <div class="pass">
         		   转运车接送
			    <div class="container">
			        <input type="checkbox" id="radio" name="switch" checked>
			        <label for="radio" class="radio">
			            <span class="circle"></span>
			            <span class="text on"></span>
			            <span class="text off"></span>
			        </label>
			    </div>  
             </div>
             
             
             <div style="opacity:0;">jdhfdhfj</div>
             
            
        </div>
         <button id="confirm">确认转院</button> 
        <div class="modal"></div>
        <script>
       
        
        var calendar = new lCalendar();
        calendar.init({
            'trigger': '.check_time',
            'type': 'date'
        });
        
        
        function show(){
	   		   var mydate = new Date();
	   		   var str = "" + mydate.getFullYear() + "-";
	   		   str += (mydate.getMonth()+1) + "-";
	   		   str += mydate.getDate();
	   		   return str;
	   	 }
        
        $('input[name="transTime"]').val(show);
       
        $(function(){
        	
        	//去掉alert的网址
       	 window.alert = function(name){  
                var iframe = document.createElement("IFRAME");  
               iframe.style.display="none";  
               iframe.setAttribute("src", 'data:text/plain,');  
               document.documentElement.appendChild(iframe);  
               window.frames[0].window.alert(name);  
               iframe.parentNode.removeChild(iframe);  
           }  
        	
        	   
            //是否显示转运车
              showPss();
              function showPss(){
             	 var pss=$('input[name="modal_time"]').attr('data-pss');
             	 if(pss=='true'){
                   	$('.pass').show();
                   };
              };
             
             
        	check();
        	 var input = document.getElementById("file_input");   
             var result,div;   
         
             if(typeof FileReader==='undefined'){   
                 result.innerHTML = "抱歉，你的浏览器不支持 FileReader";   
                 input.setAttribute('disabled','disabled');   
             }else{   
                 input.addEventListener('change',readFile,false);   
             }　　　　//handler
           
             
             
             
             //********图片上传******************************************
             var filechooser = document.getElementById("choose");
             //    用于压缩图片的canvas
             var canvas = document.createElement("canvas");
             var ctx = canvas.getContext('2d');
             //    瓦片canvas
             var tCanvas = document.createElement("canvas");
             var tctx = tCanvas.getContext("2d");
             var maxsize = 100 * 1024;
             
             
             //图片先压缩再上传
             function readFile(){
            	 if (!this.files.length) return;
            	 var files = Array.prototype.slice.call(this.files);
            	 
                 if (files.length > 9) {
                     alert("最多同时只可上传9张图片");
                     return;
                 }
                 
                 files.forEach(function(file, i) {
                	 if (!/\/(?:jpeg|png|gif)/i.test(file.type)) return;
                     var reader = new FileReader();
		              //获取图片大小
		               var size = file.size / 1024 > 1024 ? (~~(10 * file.size / 1024 / 1024)) / 10 + "MB" : ~~(file.size / 1024) + "KB";
                	 
		               reader.onload = function(e){
	                     	
	                     	var result = this.result;
	                        var img = new Image();
	                        img.src = result;
	                        
	                        var resultURL='';
	                      //如果图片大小小于100kb，则直接上传
	                        if (result.length <= maxsize) {
	                        	resultURL=result;
	                        	var result1='<span class="show_img" ><img src="'+this.result+'" data-type="'+file.type+'" data-result="'+resultURL+'"><i class="closeImg"  ></i></span>';
		                     	$('.user-avatar').before(result1);
		                     	$('.user-avatar img').attr('src','assets/image/order_sickroom/add.png');
	                          return;
	                        }
	                      
                             // 图片加载完毕之后进行压缩，然后上传
	                        if (img.complete) {
	                          callback();
	                        } else {
	                          img.onload = callback;
	                        }
	                        
	                        
	                        function callback() {
	                        	
	                            var data = compress(img);
	                            img = null;
	                            resultURL=data;
	                            var result1='<span class="show_img" ><img src="'+result+'" data-type="'+file.type+'" data-result="'+resultURL+'"><i class="closeImg"  ></i></span>';
		                     	$('.user-avatar').before(result1);
		                     	$('.user-avatar img').attr('src','assets/image/order_sickroom/add.png');
	                          }
	                        
	                        
	                        
            
		               };
		               reader.readAsDataURL(file);
		               
                 });
             };
             
            //使用canvas对大图片进行压缩
             function compress(img) {
            	 var initSize = img.src.length;
           	    var width = img.width;
           	    var height = img.height;
           	    
              	//如果图片大于四百万像素，计算压缩比并将大小压至400万以下
              	var ratio;
			    if ((ratio = width * height / 4000000) > 1) {
			      ratio = Math.sqrt(ratio);
			      width /= ratio;
			      height /= ratio;
			    } else {
			      ratio = 1;
			    }
			    
			    canvas.width = width;
			    canvas.height = height;
			    
				//  铺底色
			    ctx.fillStyle = "#fff";
			    ctx.fillRect(0, 0, canvas.width, canvas.height);
			    
			  //如果图片像素大于100万则使用瓦片绘制
			  var count;
			  if ((count = width * height / 1000000) > 1) {
			      count = ~~(Math.sqrt(count) + 1); //计算要分成多少块瓦片
			//            计算每块瓦片的宽和高
			      var nw = ~~(width / count);
			      var nh = ~~(height / count);
			      tCanvas.width = nw;
			      tCanvas.height = nh;
			      for (var i = 0; i < count; i++) {
			          for (var j = 0; j < count; j++) {
			            tctx.drawImage(img, i * nw * ratio, j * nh * ratio, nw * ratio, nh * ratio, 0, 0, nw, nh);
			            ctx.drawImage(tCanvas, i * nw, j * nh, nw, nh);
			          }
			        }
			      } else {
			        ctx.drawImage(img, 0, 0, width, height);
			      }
			  
			  
			  //进行最小压缩
			    var ndata = canvas.toDataURL('image/jpeg', 0.1);
			    console.log('压缩前：' + initSize);
			    console.log('压缩后：' + ndata.length);
			    console.log('压缩率：' + ~~(100 * (initSize - ndata.length) / initSize) + "%");
			    tCanvas.width = tCanvas.height = canvas.width = canvas.height = 0;
			    return ndata;
			  
            }
            
             //    图片上传，将base64的图片转成二进制对象，塞进formdata上传
              function upload(basestr, type) {
            	  var text = window.atob(basestr.split(",")[1]);
           	      var buffer = new Uint8Array(text.length);
           	      var pecent = 0, loop = null;
           	      for (var i = 0; i < text.length; i++) {
           	         buffer[i] = text.charCodeAt(i);
           	      }
           	      
           	      var blob = getBlob([buffer], type);
            	  return blob;
             };
        
        
	        /**
	         * 获取blob对象的兼容性写法
	         * @param buffer
	         * @param format
	         * @returns {*}
	         */
	        function getBlob(buffer, format) {
	          try {
	            return new Blob(buffer, {type: format});
	          } catch (e) {
	            var bb = new (window.BlobBuilder || window.WebKitBlobBuilder || window.MSBlobBuilder);
	            buffer.forEach(function(buf) {
	              bb.append(buf);
	            });
	            return bb.getBlob(format);
	          }
	        }
	         
	         
	         
	         /**
	          * 获取formdata
	          */
	         function getFormData() {
	           var isNeedShim = ~navigator.userAgent.indexOf('Android')
	               && ~navigator.vendor.indexOf('Google')
	               && !~navigator.userAgent.indexOf('Chrome')
	               && navigator.userAgent.match(/AppleWebKit\/(\d+)/).pop() <= 534;
	           return isNeedShim ? new FormDataShim() : new FormData()
	         }
	         
	         
	         
	         /**
	          * formdata 补丁, 给不支持formdata上传blob的android机打补丁
	          * @constructor
	          */
	         function FormDataShim() {
	           console.warn('using formdata shim');
	           var o = this,
	               parts = [],
	               boundary = Array(21).join('-') + (+new Date() * (1e16 * Math.random())).toString(36),
	               oldSend = XMLHttpRequest.prototype.send;
	           this.append = function(name, value, filename) {
	             parts.push('--' + boundary + '\r\nContent-Disposition: form-data; name="' + name + '"');
	             if (value instanceof Blob) {
	               parts.push('; filename="' + (filename || 'blob') + '"\r\nContent-Type: ' + value.type + '\r\n\r\n');
	               parts.push(value);
	             }
	             else {
	               parts.push('\r\n\r\n' + value);
	             }
	             parts.push('\r\n');
	           };
	           // Override XHR send()
	           XMLHttpRequest.prototype.send = function(val) {
	             var fr,
	                 data,
	                 oXHR = this;
	             if (val === o) {
	               // Append the final boundary string
	               parts.push('--' + boundary + '--\r\n');
	               // Create the blob
	               data = getBlob(parts);
	               // Set up and read the blob into an array to be sent
	               fr = new FileReader();
	               fr.onload = function() {
	                 oldSend.call(oXHR, fr.result);
	               };
	               fr.onerror = function(err) {
	                 throw err;
	               };
	               fr.readAsArrayBuffer(data);
	               // Set the multipart content type and boudary
	               this.setRequestHeader('Content-Type', 'multipart/form-data; boundary=' + boundary);
	               XMLHttpRequest.prototype.send = oldSend;
	             }
	             else {
	               oldSend.call(this, val);
	             }
	           };
	         }
             
             
             //删除图片
             $('.closeImg').live('touchend',function(event){
            	 $(this).parents('.show_img').remove();
            	 event.preventDefault();
            	 
             });
             
             
             
            
             
             
             //********图片上传****************************************** 
             
             $('#confirm').on('touchend',function(){
            	
            	 var formData=getFormData();
            	
            	 $('.show_img img').each(function(i,o){
            		 var type=$(o).data('type');
            		
            		 var resultSrc=$(o).data('result');
            		 
            		 var data=upload(resultSrc, type);
            		
            		 formData.append("picFiles",data);
            		 
            		 
            	 });
            	 
            	 
            	 var _this=$(this);
            	// 判断转运车
            	 var pssVal=$('input[name="modal_time"]').attr('data-pss');
            	 var pss=pssVal;
            	 if(pssVal=='true'){
            		 if($('#radio').is(':checked')){
            			 pss=true;
            		 }else{
            			 pss=false;
            		 }
            	 };
            	 var patientName=$('.writeInfo input[name="patientName"]').val();
            	 var tel=$('.writeInfo input[name="tel"]').val();
            	 var transTime=$('.writeInfo input[name="transTime"]').val();
            	 var describe=$('.upImg textarea[name="describe"]').val();
            	 
            	 if(!patientName){
            		 alert("没有输入患者姓名");
            		 return false;
            	 };
            	 
            	 if(!tel){
            		 alert("没有输入联系方式");
            		 return false;
            	 };
            	 
            	 if(!transTime){
            		 alert("没有选择转院时间");
            		 return false;
            	 };
            	 
            	 if(!describe){
            		 alert("没有输入患者病情描述");
            		 return false;
            	 };
            	 
            	 //获得图片的路径
            	 var result=$('.upImg .img').find('span.show_img img');
            	 
            	 
            	 if(result.length<1){
            		 if(!confirm("建议您最好上传出院小结图片，确认不上传么？"))
            			 return false;
            	 };
            	 
            	 
            	 $('.modal').show();
            	 $(this).css('background','#af6e29');
            	 $(this).css('color','#fff');
            	 $(this).html("正在提交数据"+'<i class="round"></i>');
            	 
                  
            	 //入住时间
                 var check_in_time=$('input[name="modal_time"]').attr('data-time');
            	 //转院
                 var transfer_date=$('input[class="check_time"]').val();
                 var bedroom_id=$('input[name="modal_time"]').attr('data-bedroomId');
                 var hospital_id=$('input[name="modal_time"]').attr('data-hospitalId');
                 
            	formData.append("patient_name",patientName);
            	formData.append("patient_phone",tel);
            	formData.append("patient_desc",describe);
            	
            	formData.append("transfer_time",transfer_date);
            	formData.append("check_in_time",check_in_time);
            	
            	formData.append("bedroom_id", bedroom_id);
            	formData.append("hospital_id",hospital_id);
            	formData.append("pss",pss);
            	
            	
            	 $.ajax({
            		 url:"confirm_trans.do",
            		 type:"POST",
            		 processData: false,// 告诉jQuery不要去处理发送的数据
					 contentType: false,// 告诉jQuery不要去设置Content-Type请求头
					 data:formData,
					 cache: false,
					 success:function(result){
						 $('.modal').hide();
						 _this.html("提交完毕");
						 if(result==0){
							 alert("转院申请成功，请等待医护人员跟您联系。");
							 location.href="turn_hospital_order.html";
	            		 }else if(result==403){
	            			 alert("有未处理的订单，提交转院申请失败");
	            			 location.href="turn_hospital_order.html";
	            		 }
						 else{
	            			 alert("提交转院申请失败,请刷新再试。");
	            			 location.reload();
	            			 return false;
	            		 }
					 }
            	 });
            	 
             });
        });
       
        
        function check(){
    		var len= $('.img').find('.show_img').length;
    		if(len<1){
    			$('.user-avatar img').attr('src','assets/image/order_sickroom/upCamera.png');
    		}
    	 }
        
        
        
            
       
       
       
        </script>
     </body>
</html>

