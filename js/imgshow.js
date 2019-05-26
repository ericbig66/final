

var photos;

function getpic(p){
	photos=p;
}


function showme(pic){
	var nowshowing= document.getElementById("photo_frame");
	nowshowing.style.backgroundImage="url(https://fakeimg.pl/501x501)";
	//alert('call me?');
	console.log(pic);
	for(var i=0; i<photos; i++){
		
	}
}