$("#subMenu").niceScroll({   
	touchbehavior : false, // 是否在触摸屏下使用
	cursorcolor : "#044599", // 滚动条颜色
	cursoropacitymax : 1, // 滚动条是否透明
	cursorwidth : 4, // 滚动条宽度
	horizrailenabled : false, // 是否水平滚动
	cursorborderradius : 0, // 滚动条是否圆角大小
	autohidemode : true, // 是否隐藏滚动条
	cursorborder : 0 // 滚动条边框大小
});
$(function(){
    $('.show_hide_btn').live('click',function(){
		parent.contentFrame.cols="60,*";
		$(this).removeClass("show_hide_btn").addClass("show_hide_btn_right");
		$(this).attr("title","显示侧边栏");
	});
	$('.show_hide_btn_right').live('click',function(){
		parent.contentFrame.cols="280,*";
		$(this).removeClass("show_hide_btn_right").addClass("show_hide_btn"); 
		$(this).attr("title","隐藏侧边栏");
	});
})