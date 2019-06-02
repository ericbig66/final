var act_obj = document.getElementById("pwd");

function pwd_off(){
	act_obj.type="text";
	//console.log("down");
}

function pwd_on(){
	act_obj.type="password";
	//console.log("down");
}

var reg = document.getElementById("reg");
var login = document.getElementById("login");
login_show();
function register_show(){
	reg.style.display="block";
	login.style.display="none";
}

function login_show(){
	reg.style.display="none";
	login.style.display="block";
}

/*以下為背景設定*/
var pic =Math.floor((Math.random() * 5));
var bg = document.getElementById("dynamic-bg");
var t;
bg_change();
function bg_change(){
	console.log("change");
	bg.style.backgroundImage="url(img/bg/bg"+pic+".jpg)";
	pic++;
	if(pic>4){pic=0;}
	t = setTimeout("bg_change()",1000*30);
}