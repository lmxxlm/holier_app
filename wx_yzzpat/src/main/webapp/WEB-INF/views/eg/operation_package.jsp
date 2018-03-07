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
        <title>手术套餐</title>
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
        
           /*做到了一半*/
      
           html,body,.main{
              width:100%;
              height:100%;
              font-family:"黑体";
              background:#fff;
           }
           .main p.title{
              height:43px;
              line-height:43px;
              padding-left:15px;
              color:#333;
              font-size:16px;
           }
           hr{
             margin:0;padding:0;
             border:0;
             border-bottom:1px solid #e3e3e3; 
           }
           
           /*套餐*/
           .main .packages .package{
               padding-left:15px;
               position:relative;
           }
           
           /*套餐图标*/
           .main .packages .package i.p_check{
              position:absolute;
              display:inline-block;
              width:18px;
              height:18px;
              background: url(assets/image/operation_package/check.png);
              background-size:cover;
              top:50%;
              margin-top:-9px;
           }
           
           /*套餐内容*/
           
           .main .packages .package .p_info {
                margin-left:18px;
                padding:15px;
                
           }
           
           .main .packages .package .p_info .p_name{
               font-size:14px;color:#333;
               
           }
           .main .packages .package .p_info .p_name span{
               color:#fa9d3b;
           }
           
           .main .packages .package .p_info .p_name
           
           
           
           
           
           
           
        </style>
    </head>
    
     <body>
        <div class="main">
            <p class="title">选择服务套餐</p>
            <hr>
            <div class="packages">
            
                <div class="package">
                    <i class="p_check"></i>
                    <div class="p_info">
                        <p class="p_name">A 套餐  <span>200元</span></p>
                        <div class="p_content">
	                         <p>
								A套餐基础服务内容
								基础医疗意外伤害保险
								获得区域性专家免费在线咨询一次
								院外随访（复诊提醒，6个月免费随访）
								电子病历管理
								获得特邀手术专家门诊预约一次（限40天内，以专家所在医院为准），提前一周预约，服务电话4009968881
								阿里健康手术保险一份
								电子病历管理、复诊提醒、6周随访
								浙一专家门诊手术一次
	                        </p>
	                        <p>电子病历管理、院外随访（复诊提醒，术后6个月免费随访）</p>
                        </div>
                        <p class="p_notice"><i></i><span>本套餐费用不包含专家服务费、医药费等</span></p>
                    </div>
                    <hr>
                </div>
                
                
                
            </div>
        </div>
        <script>
        </script>
     </body>
</html>

