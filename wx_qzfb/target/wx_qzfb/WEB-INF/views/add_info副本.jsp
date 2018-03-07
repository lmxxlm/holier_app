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
        <meta content=”width=device-width;  initial-scale=no; maximum-scale=1.0; user-scalable=0;″ name=”viewport” />
        <link rel="stylesheet" href="assets/css/productAdmin/normalize.css">
        <link rel="stylesheet" href="assets/css/productAdmin/main.css">
        <link href="assets/css/productAdmin/add_info.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/productAdmin/add_info.css">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" >
	   <script src="assets/script/productAdmin/jquery.min.js"></script>
       <script src="assets/script/productAdmin/bootstrap.min.js"></script>
        
        <script src="assets/script/productAdmin/vendor/modernizr-2.6.2.min.js"></script>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="format-detection" content="telephone=no" />
        <meta name="format-detection" content="email=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        
    
        
      <!--手机移动端web资源的整合  end-->
        
    </head>
    <style>
    
		    
		#bg{
			 width: 100%;
			 height: 100%;
			 opacity:0.8;/*设置背景色透明度,1为完全不透明,IE需要使用filter:alpha(opacity=80);*/
			 filter:alpha(opacity=80);
			display: none;
			position:fixed;
			 top:0;
			 left:0;
			 z-index:2;
			background: silver;
		    }
		#modal{
			display:none;
			 border:1px solid #41b2a6;
			 width:100%;
			 position:fixed;/*让节点脱离文档流,我的理解就是,从页面上浮出来,不再按照文档其它内容布局*/
			/* top:24%;/*节点脱离了文档流,如果设置位置需要用top和left,right,bottom定位*/
			 bottom:0px;
			  z-index:3;/*个人理解为层级关系,由于这个节点要在顶部显示,所以这个值比其余节点的都大*/
			 background: white;
		    }
	   #modal ul{width:100%;padding:0;margin:0;}
	   
       #modal ul li{
       height:3em;
       line-height:3em;
       border-bottom:0.5px solid #E8E8E8;
       margin:0;padding:0;
       margin-left:0.7em;
       background:url("assets/image/productAdmin/order/defaut.png") no-repeat left center;
	   background-size:1.3em;
	    font-size:0.9em;
	    color:#646464;
	    list-style-type:none;
	    }
	  .li1{border-bottom:1px solid #e1e1e1;}
	#modal ul li p{margin-left:2em;}
	
	input[name="card_type"]{border:1px solid #41b2a6;color:#41b2a6;margin:0.5em;padding:0.2em 0.5em;background:#fff;border-radius:0.3em;}
	/*模态框底部按钮*/
	p.buttonCon{width:100%;text-align:center;margin-top:2em;}
	p.buttonCon span{width:100%; display:inline-block;background:#41b2a6;}
	p.buttonCon span input.confirm{border:1px solid #41b2a6;background:#41b2a6; font-size:1.1em;color:#fff; width:100%;height:3em;letter-spacing:0.5em;display:inline-block;}
	/*模态框标题*/
	p.head{width:100%;text-align:center;height:3em;line-height:3em;font-size:1.2em;}
	.cancelImg{position:absolute;right:0.5em;top:-0.3em;}
	
	/*添加性别*/
	.main .message ul .li5 div{
	 
	  margin-left:1em;
	  background:url("assets/image/productAdmin/add_info/sex.png") left center no-repeat;
       background-size:1.5em;  
      
        padding-left:2em;
	}
	
	
	.main .message .button{width:100%;display:inline-block;text-align:center;}
	.main .message button{
	
	width:94%;
	display:inline-block;
	 text-align:center;
	/*
	display:-moz-box;
    display:-webkit-box;
    display:box; 
    
	-moz-box-flex:1;
    -webkit-box-flex:1;
    box-flex:1;
	
	*/
   
   
   /* margin:0 1em;*/
	height:2.4em;
	background:#41b2a6;
	color:#FFF;
	border:none;
	border-radius:0.3em;
	font-size:1em;
	
	}
	
	/*
	两个按钮
	p.buttonCon span{display:inline-block;width:50%;text-align:center;}
	p.buttonCon span input{display:inline-block;width:5em;text-align:center;font-size:0.85em;border-radius:0.3em;}
	p.buttonCon span input.confirm{border:1px solid #41b2a6; color:#41b2a6; }
	p.buttonCon span input.cancel{border:1px solid red;color:red;}
	*/
	
    </style>
     <body>
     <form action="myinfo_card_bind.do" type="post" id="form">
        <div class="main">
            <input type="hidden" name="wex_id" value="${openid}"/>
            <section>
                <div class="message">
<!--                    <p class="chooseType"><input type="button" value="请选择就诊卡类型" name="card_type"></p> -->
                   <input type="hidden" name="c_type" value="02">
                    <ul>
                        <li class="li1"><input type="text" placeholder="请输入就诊人的姓名" name="patient_name"></li>
                        <li class="li5"><div><input type="radio" name="sex" value="1">男<input type="radio" name="sex" value="2" style="margin-left:2em;">女</div></li>
                         <li class="main_li li2" style="position:relative;"><input type="text" name="card_no" class="cardType" placeholder="请输入身份证号">
                         <a href="javascript:void(0)" id="card_type" style="position:absolute; text-decoration:none; height:3em; padding:0 15px 0 10px; background:url(assets/image/productAdmin/add_info/down.gif) no-repeat right center #41b2a6; color:#fff; right:0;top:0;">变更就诊卡</a>
                         </li>
                         <li class="li3"><input type="text" name="telephone" placeholder="请输入您的手机号"></li>
                         <li class="li4"><input type="text" name="address" placeholder="请输入您的地址"></li>
                    </ul>
                  <!--   <p>温馨提示：<a href="javascript:void(0);" style="color:red;text-decoration:none;">目前不支持医保用户在线建卡</a></p> -->
                    <span class="button" style="margin-top:1em;"><button type="button">确定</button></span>
                </div>
            </section>
        
        </div>
      </form>
      
      <!-- 模态框 -->
      <div id="bg"></div>
      <div id="modal">
          <p class="head">请选择就诊卡类型<span class="cancelImg"><img src="assets/image/productAdmin/add_info/cancel.jpg" style="width:1em;"></span></p>
          
          <ul>
             <li><p data-val="02">身份证</p></li>
             <li><p data-val="04">医保卡</p></li>
             <li><p data-val="02">注册医疗卡</p></li>
          </ul>
          <p class="buttonCon"><span><input type="button" name="confirm" class="confirm" value="确认"></span></p>
      </div>
    </body>
    <script type="text/javascript">
    //显示模态框
      function showModal(){
    	  $('#bg').show(1,function(){
    		  $('#modal').slideDown(500);
			});
      }
    //隐藏模态框
      function hideModal(){
    	  $('#modal').slideUp(500,function(){
    		  $('#bg').hide();
			});
      }
    //初始化模态框
    function initCheck(){
    	$('#modal ul li').each(function(){
    		$(this).css({
    		 'background':'url("assets/image/productAdmin/order/defaut.png") left center no-repeat',
   			 'background-size':'1.3em'
    		});
    	});
    }
    //选择卡号类型---按钮
      $('#card_type').on('touchend',function(){
    	  initCheck();
    	  showModal();
      });
      //点击确认选择卡号
      $('input[name="confirm"]').on('touchend',function(){
    	  //循环就诊卡，有没有被选
    	 var checkLi= $('#modal ul').find('li[data-val="1"]');
    	  if(checkLi.length==0){
    		  alert("您没有选择就诊卡号，请选择");
    		  return false;
    	  }else{
    		  //获取卡号的类型
    		  var c_type=$(checkLi).find('p').attr('data-val');
    		  //获取卡号的名字
    		  var cardType=$(checkLi).find('p').html();
    		  //给选择卡号的按钮变更名字
    		  $('#card_type').html(cardType);
    		  if(cardType=="注册医疗卡"){
    			  cardType=cardType+"(身份证)";
    		  }
    		  //输入卡号的提示文字
    		  $('.cardType').attr('placeholder',"请输入"+cardType);
    		  //给主页面的存储当前的卡号类型进行赋值
    		  $('input[name="c_type"]').val(c_type);
    		  
    		  hideModal()
    	  }
    	  
      });
    //点击取消隐藏模态框
    $('.cancelImg,#bg').on('touchend',function(){
    	 hideModal();
    });

	  $('#modal ul li').on('touchend',function(){
		/*var target=$(this).slibings().find('li');*/
		//被选中的
		$(this).css({
			 'background':'url("assets/image/productAdmin/order/checked.png") left center no-repeat',
			 'background-size':'1.3em'
			 }).attr('data-val',1); 
		$(this).siblings().css({
			  'background':'url("assets/image/productAdmin/order/defaut.png") left center no-repeat',
			 'background-size':'1.3em'
			 }).attr('data-val',0);
		});
    
       $(function(){
    	   
    	 //移动页面滚动后不触发touchend、
   		//解决方法是在滚动时就给停止touchend事件冒泡，实现如下：
   		stopTouchendPropagationAfterScroll();
   		function stopTouchendPropagationAfterScroll(){
   		    var locked = false;
   		    window.addEventListener('touchmove', function(ev){
   		        locked || (locked = true, window.addEventListener('touchend', stopTouchendPropagation, true));
   		    }, true);
   		    function stopTouchendPropagation(ev){
   		        ev.stopPropagation();
   		        window.removeEventListener('touchend', stopTouchendPropagation, true);
   		        locked = false;
   		    }
   		}
   		
   	// 验证中文名称
		function isChinaName(name) {
		 var pattern = /^[\u4E00-\u9FA5]{1,6}$/;
		 return pattern.test(name);
		}
		
		// 验证手机号
		function isPhoneNo(phone) { 
		 var pattern = /^1[34578]\d{9}$/; 
		 return pattern.test(phone); 
		}
		
		// 验证身份证 
		function isCardNo(card) { 
		 var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
		 return pattern.test(card); 
		} 
		
		// 验证函数
		function formValidate() {
		 var str = '';
		
		 // 判断名称
		 var objName=$('input[name="patient_name"]');
		 if($.trim(objName.val()).length == 0) {
		  str += '名称没有输入\n';
		  objName.focus();
		 } else {
		  if(isChinaName($.trim(objName.val())) == false) {
		   str += '名称不合法\n';
		   objName.focus();
		  }
		 }
		
		//判断性别
		var sex=$('input[type="radio"]:checked').val();
		if(!sex){
			 str += '您没有选择性别\n';
		}
		 
		 
		 //验证卡号
		  var objCard=$('input[name="card_no"]');
		 if($.trim(objCard.val()).length == 0) { 
			  var showStr=objCard.attr('placeholder');
			  str += showStr+'\n';
			  objCard.focus();
		 } else {
			 //判断卡号的类型
			 var c_type=$('input[name="c_type"]').val();
			 if(c_type == '02' && isCardNo($.trim(objCard.val())) == false){
				 str += '卡号不正确；\n';
				   objCard.focus();
			 }
			 
		 }
		 
		 
		 // 判断手机号码
		 var objTel=$('input[name="telephone"]');
		 if ($.trim(objTel.val()).length == 0) { 
		  str += '手机号没有输入\n';
		  objTel.focus();
		 } else {
		  if(isPhoneNo($.trim(objTel.val()) == false)) {
		   str += '手机号码不正确\n';
		   objTel.focus();
		  }
		 }
		 
		 
		/*
		 // 验证身份证
		 var objCard=$('input[name="card_no"]');
		 if($.trim(objCard.val()).length == 0) { 
		  str += '身份证号码没有输入\n';
		  objCard.focus();
		 } else {
		  if(isCardNo($.trim(objCard.val())) == false) {
		   str += '身份证号不正确；\n';
		   objCard.focus();
		  }
		 }
		 */
		//验证地址
		 var address=$('input[name="address"]');
		 if($.trim(address.val()).length == 0){
			 str += '地址没有输入\n';
			  objCard.focus();
		 }
		 
		 // 如果没有错误则提交
		 if(str != '') {
		  alert(str);
		  return false;
		 }else{
		  $('#form').submit();
		 }
		}
		
		$('.button button').on('touchend',function(event){
			  event.preventDefault();
		      formValidate();
		});
});

</script>
</html>
