var reg = document.getElementById("reg");


/*以下為背景設定*/
var pic =Math.floor((Math.random() * 5));
var bg = document.getElementById("dynamic-bg");
var t;
bg_change();
function bg_change(){
	//console.log("change");
	bg.style.backgroundImage="url(img/bg/bg"+pic+".jpg)";
	pic++;
	if(pic>4){pic=0;}
	t = setTimeout("bg_change()",1000*30);
}

/*註冊按鈕控制*/
var acc = document.getElementById("reg_account");
var pwd = document.getElementById("reg_pwd");
var pwd_chk = document.getElementById("pwd_chk");
var rname = document.getElementById("reg_name");
var boy = document.getElementById("boy");
var girl = document.getElementById("girl");
var mail = $("#mail");

var acc_err = document.getElementById("account-error");
var acc_err_i = document.getElementById("account-error_i");
var code_err = document.getElementById("code-error");
var code_err_i = document.getElementById("code-error_i");
var name_err = document.getElementById("name-error");
var name_err_i = document.getElementById("name-error_i");
var mail_err = $("#mail-error");
var mail_err_i = $("#mail-error_i");

var fill = new Array(true,false,true,true,false);


function med_chk(){
	if(pwd.value!=pwd_chk.value||pwd.value==""||pwd_chk.value==""){
		fill[1]=false;
	}
	else{
		fill[1]=true;
	}

	if(mail.val().indexOf("@")==-1 || mail.val()==""){
		fill[4]=false;
	}
	else{
		fill[4]=true;
	}

	unlock()
}

function input_test(){
	if(fill[1]){
		code_err.style.opacity="0";
		code_err_i.style.opacity="0";
	}
	else{
		code_err.style.opacity="1";
		code_err_i.style.opacity="1";
	}

	if(fill[4]){
		mail_err.css({"opacity":"0"});
		mail_err_i.css({"opacity":"0"});		
	}
	else{
		mail_err.css({"opacity":"1"});
		mail_err_i.css({"opacity":"1"});		
	}
}

function unlock(){
	if(fill[0]&&fill[1]&&fill[2]&&fill[3]&&fill[4]){
		document.getElementById("fake_reg").style.display="none";
		document.getElementById("real_reg").style.display="block";		
	}
	else{

		document.getElementById("real_reg").style.display="none";
		document.getElementById("fake_reg").style.display="block";		
	}
}

