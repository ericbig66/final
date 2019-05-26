

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

	
showme(0);
function showme(pic){
	var nowshowing= document.getElementById("photo_frame");
	nowshowing.style.backgroundImage="url(https://fakeimg.pl/501x501)";
	//alert('call me?');
	settings="<style>\n";
	console.log("pic= "+pic);
	for (var n = 0; n < photos; n++) {
		//$('#t'+n).css("opacity", "0.7");
		//$('#t'+n+":hover").css("opacity", "1");
		if(n==pic){continue;}
		console.log("n="+n);
		settings+="#t"+n+"{opacity:0.7;}\n#t"+n+":hover{opacity:1;}"
	}
	//$('#t'+pic).css("opacity", "1");
	settings+="#t"+pic+"{opacity:1;}\n</style>"
	document.getElementById("thumb_tab").innerHTML=settings;
}
