var SetPreviewPic=function(fileObj,preview,picWrap,maxImgSize){
this.fileObj=fileObj;
this.preview=preview;
this.picWrap=picWrap;
this.maxImgSize=maxImgSize;


if(maxPics){ 
	if(this.fileObj.files && this.fileObj.files[0]){
		var imgs=this.picWrap.querySelectorAll('img'); //查找DOM里面已经有多少张图片了
		var num=imgs.length;
		var html=this.picWrap.innerHTML;
		if(Number(num)<Number(maxPics)){ //判断是否超过最大上传限度
		if(num==1&&(!imgs[0].classList.contains('newLoad'))){ //覆盖第一张默认图片
		html='';
		}
		if(this.pattern.test(fileObj.files[0].name)){
		if(judgeSize(fileObj.files[0].size/1024,this.maxImgSize)){//判断图片的大小是否超限
		html='<img class="newLoad" style="margin:5px;width:'+width+'px;height:'+height+'px;" src='+window.URL.createObjectURL(this.fileObj.files[0])+' />'+html;
		this.picWrap.innerHTML=html;
		}else{
		alert('你上传的图片太大！');
		}
		}else{
		alert('你上传的好像不是图片哦，请检查！');
		}
		}else{
		alert('每次最多上传'+maxPics+'张图片！');
		}
	}


	var nums=this.picWrap.childNodes.length;//因为IE6以下不支持querySelectorAll等方法，就通过childNodes的长度判断
	if(nums<maxPics+2){//这里加2是因为本来有一张默认的图片，而且childNodes读出来的长度会多1
		this.fileObj.select();
		if(document.selection){
			var imgSrc=document.selection.createRange().text;
			var image=new Image(); 
			image.src=imgSrc; 
			filesize=image.fileSize; 
			if(judgeSize(image.fileSize/1024,this.maxImgSize)){
			//IE下必须设置div的大小
			var ele=document.createElement('div');
			ele.style.width=width+'px';
			ele.style.height=height+'px';
			ele.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src='"+imgSrc+"')";
			try{
			this.picWrap.appendChild(ele);
			}catch(e){
			alert('你上传的图片格式有误,请重新选择！');
			return false;
			}
			this.preview.style.display='none';
			document.selection.empty();
			}else{
			alert('你上传的图片太大！');
			}
   }
 }
}
}

