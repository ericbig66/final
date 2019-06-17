

var photos=document.getElementsByClassName("thumbs").length;
var settings="";
// function getpic(p){
// 	photos=p;
// 	altert("get!");
// }
// thumbprocess();
// function thumbprocess(){
// 	console.log(photos+" pictures found");
// 	for (var n = 0; n < photos; n++) {
// 		var j = $('#t'+n).css("filter", "blur(5px)");
// 		console.log("n="+n);
// 	}
// }

$(document).ready(function(){
	for(var x = 0; x<5; x++){
		var p = document.getElementById("t"+x).innerHTML;
		document.getElementById("t"+x).style.backgroundImage="url("+p+")";
	}
})

	
showme(0);
function showme(pic){
	var nowshowing= document.getElementById("photo_frame");
	//document.getElementById("t"+x).style.backgroundImage="url("+document.getElementById("t"+pic).innerHTML+")";
 	var tmp = document.getElementById("t"+pic).innerHTML;
	var output = tmp.substring(0,tmp.length-4)+"_demo.jpg";
	nowshowing.style.backgroundImage="url("+output+")";
	//alert('call me?');
	settings="<style>\n";
	console.log("pic= "+pic);
	for (var n = 0; n < photos; n++) {
		//$('#t'+n).css("opacity", "0.7");
		//$('#t'+n+":hover").css("opacity", "1");
		if(n==pic){continue;}
		console.log("n="+n);
		settings+="#t"+n+"{backgroundSize:cover;opacity:0.5;}\n#t"+n+":hover{opacity:1;}"
	}
	//$('#t'+pic).css("opacity", "1");
	settings+="#t"+pic+"{opacity:1;}\n</style>"
	document.getElementById("thumb_tab").innerHTML=settings;
}
