$(document).ready(function(){
	setInterval("move()", 7000);  
});

var n = 1;
function move(){
	n=(n==4)?1:n+1;
	var obj = $('#headerphoto');
	var val = obj.css("background-image");
	var url = val.substring(0,val.indexOf('css/'));
	var pic = url + "css/header"+n+".jpg\")"	
	obj.css("background-image",pic);
}
