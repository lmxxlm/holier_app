function showMainMenu(id){
	var leftFrame = $(window.parent.frames["leftFrame"].document);
	var thisObj = leftFrame.find('.'+id+' a');
	leftFrame.find('#mainMenu span a').removeClass('active');
	thisObj.addClass('active');
    var navName=thisObj.parent().attr('class');
    leftFrame.find('.menuTree').find('div[data-id="'+navName+'"]').show().siblings().hide();
}