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
        <title>病房列表</title>
        <meta name="description" content="">
	    
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        
       <script src="assets/script/jquery.min.js"></script>
       <script src="assets/css/move_wm2.js"></script>
       <link rel="stylesheet" href="assets/css/public.css">
        
      <!--手机移动端web资源的整合  end-->
        <style>
      
           html,body,.main{
              width:100%;
              height:100%;
              font-family:"黑体";
              font-size:16px;
              background:#f1f1f1;
              overflow-y:hidden;
              
              
           }
           
           .main .all{
              overflow:scroll;
              /*height:350px;用js动态控制*/
           }
           
            /*轮播*/
            #container {width:100%;  height: 130px;  overflow: hidden; position: relative;}
            #list { 
             width:400%;height: 130px; position: absolute; z-index: 1;
             }
            #list img { float: left;width:25%;height:130px;}
            
            /*mask*/
            #container .mask{
                width:100%;
                height:45px;
                position:absolute;
                background:rgba(0,0,0,0.4);
                left:0;
                bottom:0;
                z-index:10;
                line-height:45px;
                color:#fff;
                font-size:17px;
            }
            
            #container .mask .picNum{
                display:inline-block;
                height:45px;
                line-height:45px;
                margin-left:16px;
                padding-left:35px;
                background:url(assets/image/ward_list/cama.jpg) no-repeat 0 50%;
            }
            
            #container .mask .bed{float:right;margin-right:17px;}
            
            /*医院地址简介*/
            .info{
               margin-top:10px;
               padding-left:16px;
               background:#fff;
               font-size:16px;
            }
            .info p{
               height:55px;
               line-height:55px;
               padding-left:28px;
            }
            .info p.address{
               background:url(assets/image/ward_list/label.png) no-repeat 0 50%;
                 -webkit-background-size:25px 25px; 
                 background-size:25px 25px;
            }
            .info p.hosInfo{
               position:relative;
                background:url(assets/image/ward_list/adress.png) no-repeat 0 50%;
                 -webkit-background-size:25px 25px; 
                 background-size:25px 25px;
             
            }
            
            .info p.hosInfo i{
               position:absolute;
               display:inline-block;
               width:15px;
               height:15px;
               right:13px;
               top:50%;
               margin-top:-7px;
               background: url(assets/image/ward_list/detail.png)no-repeat;
            }
            .info p.hosInfo i:hover{
               background: url(assets/image/ward_list/detail_h.png)no-repeat;
            }
            .info p.car{
               background:url(../assets/image/eg/car.jpg) no-repeat 0 50%;
            }
            .info p.car span{
               
               color:#DBDBDB;
               border:1px solid #DBDBDB;
               border-radius:3px;
               margin-right:4px;
               padding:1px;
               font-size:10px;
            }
            .info p.car span.first{
                color:#FEC067;
               border:1px solid #FEC067;
            }
            .info hr{
                
                margin:0;
                padding:0;
                border-color:#F2F2F2;
                color:#F2F2F2;
                height:0;
                margin-left:30px;
                border-top:0;
            }
            
            /*时间*/
            .time{
                border-bottom:1px solid #F2F2F2;
                margin-top:10px;
                height:50px;
                padding-left:13px;
                background:#fff;
                position:relative;
            }
            .time .span1{
               display:block;
               height:50px;
               font-size:14px;
            }
            .time .span1 b{
               display:block;
               font-weight:normal;
              padding-top:5px;
            }
            .time .span1 b.b2{
                font-size:12px;
                color:#D0D0D0;
            }
            
            .time .span2{
               position:absolute;
               right:0;
               top:0;
               display:inline-block;
               float:right;
               height:50px;
               line-height:50px;
               background:#8FD1EB;
               color:#fff;
               padding:0 20px;
               font-size:14px;
            }
            .time .span2 i{
            display:inline-block;
            width:18px;
            height:14px;
               background:
             url(../assets/image/eg/right.jpg) no-repeat ;
	         position:relative;
	         top:2px;
	         left:2px;
	         
            }
            
            /*列表*/
            .roomlist{
               padding:13px 60px 10px 87px;
               margin-bottom:10px;
               background:#fff;
               font-size:12px;
               color:#D0D0D0;
               position:relative;
            }
            
            .roomlist img{
               position:absolute;
               left:13px;
               top:50%;
               margin-top:-30px;
               height:60px;
               width:60px;
            }
            
            .roomlist div .p1{
                font-size:14px;
                color:#5E5E5E;
                position:relative;
            }
            .roomlist div .p1 i{
	            display:inline-block;
	            width:10px;height:15px;
	            background:url(../assets/image/eg/right.png) no-repeat  100% 0;
	            position:absolute;
	            margin-left:5px;
	            margin-top:1px;
            }
            .roomlist div .p2{
               line-height:17px;
               margin-top:5px;
            }
            
            .roomlist span{
               position:absolute;
               right:13px;
               top:50%;
               margin-top:-10px
            }
            
           /*模态框*/
           .bg{
               z-index:999;
               position:fixed;
               width:100%;
               height:100%;
               left:0;
               top:0;
               background:rgba(0,0,0,0.5);
               display:none;
           } 
           
           .bg .modal{
               font-size:12px;
               background:#ECF1F2;
               margin:13px;
           }
           .bg .modal .til{
               background:#8CD1EB;
               height:40px;
               line-height:40px;
               color:#fff;
               position:relative;
           }
           
           .bg .modal .til span{
              padding-left:13px;
           }
           
           .bg .modal .til i{
              display:inline-block;
              width:16px;
              height:18px;
              background:url(../assets/image/eg/close.jpg) no-repeat;
              position:absolute;
              right:13px;
              top:50%;
              margin-top:-9px;
              margin-right:13px;
           }
           
           /*轮播*/
           .bg .modal #loop{
              position:relative;
              overflow:hidden;
              height:200px;
             
              
           }
           
           .bg .modal #pics{
              position:absolute;
              height:200px;
           }
           
           .bg .modal #pics img{
           	  height:200px;
           	  float:left;
           	 
           }
           
           .bg .modal #loop span{
               position:absolute;
               z-index:9999;
               display:inline-block;
               background:rgba(0,0,0,0.5);
               left:50%;
               bottom:13px;
               color:#fff;
               padding:3px 13px;
               border-radius:13px;
           }
           
           /*病房设施*/
           .bg .modal .bedRoom{
              height:40px;
              line-height:40px;
              background:#fff;
              padding-left:13px;
              margin-top:10px;
              border-bottom:1px solid #F4F4F4;
              font-size:14px;
           }
           
           .bg .modal .floor{
               background:#fff;
               padding-left:13px;
               padding-bottom:40px;
           }
           
           .bg .modal .floor p.p1{
             padding-top:13px;
             font-size:14px;
             
           }
           .bg .modal .floor p.p1 span{
             border-right:1px solid #DBDBDB;
             padding-right:10px;
           }
           
           .bg .modal .floor p.p1 span:last-child{
              border-right:0px;
           }
           
           .bg .modal .floor p.p2{
            margin-top:13px;
            color:#D7D7D7;
             
           }
           
           .bg .modal .floor p.p2 span{
              border:1px solid #D7D7D7;
              border-radius:3px;
              padding:2px;
           }
           
           /*尾部*/
           .bg .modal .foot{
              height:60px;
              line-height:60px;
              color:#A2A3A2;
              padding:0 13px;
              font-size:13px;
           }
           
           .bg .modal button{
              height:35px;
              width:90px;
              color:#fff;
              background:#FEA01D;
              text-align:center;
              border-radius:5px;
              float:right;
              border:0;
              margin-top:12px;
           }
           
           
        </style>
    </head>
    
     <body>
        <div class="main">
        
	        <div class="top">
	        
		        <div id="container">
		                <div id="list">
		                   <img src="../assets/image/eg/hos_1.jpg" class="img1"/>
		                   <img src="../assets/image/eg/hos_2.jpg" class="img2"/>
		                   <img src="../assets/image/eg/hos_3.jpg" class="img3"/>
		                   <img src="../assets/image/eg/hos_4.jpg" class="img4"/>
		                </div>
		                
		                <div class="mask">
		                    <span class="picNum">1/4</span>
		                    <span class="bed">床位数:450</span>
		                </div>
		            </div>
		            
		            <div class="info">
		                <p class="address">杭州市下城区永华街117号</p>
		                <hr>
		                <p class="hosInfo">医院简介<i></i></p>
		                <hr>
		                <p class="car"><span class="first">转运车接送</span><span>康复医学科</span></p>
		            </div>
		            
		            <div class="time">
		               <span class="span1">
		                  <b>2016-10-18</b>
		                  <b class="b2">星期二</b>
		               </span>
		               <span class="span2">
		                   	入住时间<i></i>
		               </span>
		            </div>
	        
	        </div>
            
            <div class="all" id="allList">
	            
	               <div class="roomlist">
		                <img src="../assets/image/eg/bedRoom.jpg">
		                <div >
		                    <p class="p1">普通多人间<i></i></p>
		                    <p class="p2">中央空调，数字电视</br>
		                    24小时热水 24小时WiFi</br> 一人一柜 无障碍卫生间</p>
		                </div>
		                
		                <span >
			                                                            参考价格：</br>
			                 ￥40人/天
		                </span>
	              </div>
	            
	              <div class="roomlist">
		                <img src="../assets/image/eg/bedRoom.jpg">
		                <div >
		                    <p class="p1">普通多人间<i></i></p>
		                    <p class="p2">中央空调，数字电视</br>
		                    24小时热水 24小时WiFi</br> 一人一柜 无障碍卫生间</p>
		                </div>
		                
		                <span >
			                                                            参考价格：</br>
			                 ￥40人/天
		                </span>
	              </div>
	            
	            
	              <div class="roomlist">
		                <img src="../assets/image/eg/bedRoom.jpg">
		                <div >
		                    <p class="p1">普通多人间<i></i></p>
		                    <p class="p2">中央空调，数字电视</br>
		                    24小时热水 24小时WiFi</br> 一人一柜 无障碍卫生间</p>
		                </div>
		                
		                <span >
			                                                            参考价格：</br>
			                 ￥40人/天
		                </span>
	             </div>
	             
	             <div class="roomlist">
		                <img src="../assets/image/eg/bedRoom.jpg">
		                <div >
		                    <p class="p1">普通多人间<i></i></p>
		                    <p class="p2">中央空调，数字电视</br>
		                    24小时热水 24小时WiFi</br> 一人一柜 无障碍卫生间</p>
		                </div>
		                
		                <span >
			                                                            参考价格：</br>
			                 ￥40人/天
		                </span>
	              </div>
	            
	               <div class="roomlist">
		                <img src="../assets/image/eg/bedRoom.jpg">
		                <div >
		                    <p class="p1">普通多人间<i></i></p>
		                    <p class="p2">中央空调，数字电视</br>
		                    24小时热水 24小时WiFi</br> 一人一柜 无障碍卫生间</p>
		                </div>
		                
		                <span >
			                                                            参考价格：</br>
			                 ￥40人/天
		                </span>
	              </div>
              
            </div>
            
        </div>
        
       <div class="bg" >
           <div class="modal">
              <div class="til"><span>单人间</span><i class="close"></i></div>
              
              <div id="loop">
                <div id="pics">
                   <img src="../assets/image/eg/hos_1.jpg" class="img1"/>
                   <img src="../assets/image/eg/hos_2.jpg" class="img2"/>
                   <img src="../assets/image/eg/hos_3.jpg" class="img3"/>
                   <img src="../assets/image/eg/hos_4.jpg" class="img4"/>
                </div>
                
                <span>1/3</span>
            </div>
            
            <div class="bedRoom">
               病房设施
            </div>
            
            <div class="floor">
                <p class="p1">
                  <span>建筑面积30㎡</span>
                  <span>床位1张</span>
                  <span>楼层5层</span>
                </p>
                <p class="p2">
                  <span>空调</span>
                  <span>电视</span>
                  <span>24小时热水</span>
                  <span>独立卫生间</span>
                </p>
            </div>
        
            <div class="foot">
               <span>参考价格：￥80人/天</span>
               <button>预定</button>
            </div>
        
           </div>
       </div>
        <script>
        //姐姐我准备封装
       $(function(){
    	   //弹出模态框
           $('.all .roomlist').on('click',function(){
           	$('.bg').show();
           	
           });
           
           
           //关掉模态框
           $('.bg .close').on('click',function(){
           	$('.bg').hide();
           	
           });
    	   
       });
        
        //返回id
        var getId=function(id){
        	return document.getElementById(id);
        }
        
        //详情里的图片
        var loop1=getId('loop');
        var pics1=getId('pics');
        var imgs1=pics1.getElementsByTagName('img');
        setImg(loop1,pics1,imgs1);
        
        //主页的图片
        var loop2=getId('container');
        var pics2=getId('list');
        var imgs2=pics2.getElementsByTagName('img');
        setImg(loop2,pics2,imgs2);
        
        //给图片宽度进行赋值
       function setImg(loop,pics,imgs){
    	   var sum=0;
           for(var i=0;i<imgs.length;i++){
           	imgs[i].style.width=loop.offsetWidth+'px';
           	sum +=loop.offsetWidth;
            }
           pics.style.width=sum+'px';
       }
        
       //设置列表的局部滚动
      var allList=getId('allList');
      allList.style.height=document.body.offsetHeight-allList.offsetTop+'px';
      //var myScroll = new IScroll('#allList', {mouseWheel:true,click:true});
        
        var list =getId('list');
        var pics=getId('pics');
        getTouch(list);
        getTouch(pics);
      
        
        function getTouch(mybody){
        	
        	  
            //返回角度

            function GetSlideAngle(dx,dy) {

              return Math.atan2(dy,dx) * 180 / Math.PI;

            }

     

            //根据起点和终点返回方向 1：向上，2：向下，3：向左，4：向右,0：未滑动

            function GetSlideDirection(startX,startY, endX, endY) {

              var dy = startY - endY;

              var dx = endX - startX;

              var result = 0;

     

              //如果滑动距离太短

              if (Math.abs(dx) < 2 && Math.abs(dy) < 2) {

                 return result;

              }

              var angle = GetSlideAngle(dx, dy);

              if (angle >= -45 && angle < 45) {

                 result = 4;

              }else if (angle >= 45 && angle < 135) {

                 result = 1;

              }else if (angle >= -135 && angle < -45) {

                 result = 2;

              }else if ((angle >= 135 && angle <= 180) || (angle >= -180 && angle < -135)) {

                 result = 3;

              }

              return result;

            }

     

     
          
            //滑动处理

            var startX, startY;

            mybody.addEventListener('touchstart', function (ev){

              ev.preventDefault();

              startX = ev.touches[0].pageX;

              startY = ev.touches[0].pageY; 

            }, false);

     
            var leftX;
            var leftPic;
            mybody.addEventListener('touchmove', function (ev){

              var endX, endY;

              ev.preventDefault();

              endX = ev.changedTouches[0].pageX;

              endY = ev.changedTouches[0].pageY;

     

            var direction = GetSlideDirection(startX, startY, endX, endY);
            switch (direction){
              case 3:
            	
                 leftX=mybody.offsetLeft-mybody.getElementsByTagName('img')[0].offsetWidth;
                 if(leftX == -mybody.offsetWidth){
          	    	leftX=0;
                 }	
                 
                 
                break;

              case 4:
            	    if(mybody.offsetLeft >= 0){
            	    	leftX=-mybody.offsetWidth+mybody.getElementsByTagName('img')[0].offsetWidth;
                    }else{
                    	leftX = mybody.offsetLeft + mybody.getElementsByTagName('img')[0].offsetWidth;
                    }
            	    
            
                break;

              default:          

            } 

          }, false);
            
            
           mybody.addEventListener('touchend', function (ev){
        	   mybody.style.left=leftX+'px';
           });
           
        	
        }
     
      
        
       
        </script>
     </body>
</html>
