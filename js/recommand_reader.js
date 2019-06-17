$(document).ready(function(){
	for(var n=4; n<7; n++){
		var source = $("#ic"+n);
		source.css("background-image","url("+source.html()+")");
	}
})