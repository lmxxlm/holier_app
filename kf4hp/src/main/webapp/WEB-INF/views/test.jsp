<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript">
    function PreviewImg(imgFile){ 
	       var newPreview = document.getElementById("newPreview");     
	      var imgDiv = document.createElement("div"); 
	       document.body.appendChild(imgDiv); 
	      imgDiv.style.width = "118px";     imgDiv.style.height = "127px"; 
	       imgDiv.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod = scale)";    
	      imgDiv.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgFile.value; 
	      newPreview.appendChild(imgDiv);     
	      var showPicUrl = document.getElementById("showPicUrl"); 
	      showPicUrl.innerText=imgFile.value; 
	      newPreview.style.width = "80px"; 
	      newPreview.style.height = "60px"; 
	} 

    $(function(){
    	
        $(".file").change(function(){
        	
            var fileImg = $(".fileImg");
            var explorer = navigator.userAgent;
            var imgSrc = $(this)[0].value;
            if (explorer.indexOf('MSIE') >= 0) {
                if (!/\.(jpg|jpeg|png|JPG|PNG|JPEG)$/.test(imgSrc)) {
                    imgSrc = "";
                    fileImg.attr("src","assets/images/add.png");
                    return false;
                }else{
                	var file = $(this)[0].files[0];
                    var url = URL.createObjectURL(file);
                    alert(url);
                	imgSrc="assets/images/login/login.png";
                    fileImg.attr("src",imgSrc);
                }
            }else{
            	
                if (!/\.(jpg|jpeg|png|JPG|PNG|JPEG)$/.test(imgSrc)) {
                    imgSrc = "";
                    fileImg.attr("src","assets/images/add.png");
                    return false;
                }else{
                    var file = $(this)[0].files[0];
                    var url = URL.createObjectURL(file);
                    alert(url);
                    console.log(url);
                    fileImg.attr("src",url);
                }
            }
        })
    })
    </script>
</head>
<body>

    <div id="newPreview"></div> 
          <div id="showPicUrl"></div> 
         <hr /> 
          <p> 
              选择图片：<input type="file" size="20" onchange="javascript:PreviewImg(this);" /> 
   </p>

    <form enctype="multipart/form-date" method="post">
        <input type="file" class="file" accept="image/*">
        <input type="submit" class="sub">
    </form>
    <img src="assets/images/add.png" class="fileImg">
</body>
</html>