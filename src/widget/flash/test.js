var t = n = count = 0;   
$(document).ready(function(){
	count = $("#play_list a").size();   
	$("#play_list a:not(:first-child)").hide();   
	$("#play_info").html($("#play_list a:first-child").find("img").attr('alt'));   
	$("#play_text li:first-child").css({"background":"#fff",'color':'#000'});   
	$("#play_info").click(function(){window.open($("#play_list a:first-child").attr('href'), "_blank")});   
	$("#play_text li").click(function() {   
		var i = $(this).text() - 1;   
		n = i;   
		if (i >= count) return;   
		$("#play_info").html($("#play_list a").eq(i).find("img").attr('alt'));   
		$("#play_info").unbind().click(function(){window.open($("#play_list a").eq(i).attr('href'), "_blank")})   
		$("#play_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);   
		$(this).css({"background":"#fff",'color':'#000'}).siblings().css({"background":"#000",'color':'#fff'});   
	});   
	t = setInterval("showAuto()", 3000);   
	$("#play").hover(function(){clearInterval(t)}, function(){t = setInterval("showAuto()", 3000);});   
});

function showAuto(){   
	n = n >= (count - 1) ? 0 : n + 1;   
	$("#play_text li").eq(n).trigger('click');   
}   
