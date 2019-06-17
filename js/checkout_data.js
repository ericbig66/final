var receiver = $("#receiver");
var tel = $("#receiver_tel");
var address = $("#receiver_address");

var receiver_err = $("#receiver-error");
var tel_err = $("#receiver_tel-error");
var address_err = $("#receiver_address-error");

var receiver_err_i = $("#receiver-error_i");
var tel_err_i = $("#receiver_tel-error_i");
var address_err_i = $("#receiver_address-error_i");

var checker = new Array(true,false,false);


function med_chk(){
	if(receiver.val().trim()==""||receiver.val()==null){
		checker[0]=false;
	}
	else{
		checker[0]=true;
	}

	if(tel.val().trim()==""||tel.val()==null){
		checker[1]=false;
	}
	else{
		checker[1]=true;
		checker[1]=phone_chk(tel.val().trim());
	}

	if(address.val().trim()==""||address.val()==null){
		checker[2]=false;
	}
	else{
		checker[2]=true;
	}
	unlock();
}

function input_test(){
	if(checker[0]){
		receiver_err.css({"opacity":"0"});
		receiver_err_i.css({"opacity":"0"});
	}
	else{
		receiver_err.css({"opacity":"1"});
		receiver_err_i.css({"opacity":"1"});
	}

	if(checker[1]){
		tel_err.css({"opacity":"0"});
		tel_err_i.css({"opacity":"0"});
	}
	else{
		tel_err.css({"opacity":"1"});
		tel_err_i.css({"opacity":"1"});
	}

	if(checker[2]){
		address_err.css({"opacity":"0"});
		address_err_i.css({"opacity":"0"});
	}
	else{
		address_err.css({"opacity":"1"});
		address_err_i.css({"opacity":"1"});
	}
}

var test = 0;
function unlock(){
	if(checker[0]&&checker[1]&&checker[2]){
		$("#real_reg").css({"display":"block"});
		$("#fake_reg").css({"display":"none"});
	}
	else{
		$("#fake_reg").css({"display":"block"});
		$("#real_reg").css({"display":"none"});
	}

}
var tel_in = document.getElementById("receiver_tel");
function phone_chk(number){
	number=number.toString();
	console.log("02的位置= "+number.indexOf("02"));
	if(number.indexOf("09")==0){
		tel_in.pattern="[0]{1}[9]{1}[0-9]{8}";
	}
	else if(number.indexOf("03")==0||number.indexOf("05")==0||number.indexOf("06")==0||number.indexOf("07")==0||number.indexOf("08")==0){
		tel_in.pattern="[0]{1}[3|5-8]{1}[0-9]{7}";
		if(number.length>9){
			//console.log(">9");
			tel_in.pattern="[0]{1}[3|5-8]{1}[0-9]{7}[#]{1}[0-9]*$";
			if(number.indexOf("#")==number.length-1){
				tel_in.value=tel_in.value.toString().substring(0,number.length-1);
				tel_in.pattern="[0]{1}[3|5-8]{1}[0-9]{7}";
				//console.log(tel_in.value);
			}
		}
	}

	else if(number.indexOf("02")==0){
		tel_in.pattern="[0]{1}[2]{1}[0-9]{8}";
		if(number.length>10){
			console.log(">10");
			tel_in.pattern="[0]{1}[2]{1}[0-9]{8}[#]{1}[0-9]*$";
			if(number.indexOf("#")==number.length-1){
				tel_in.value=tel_in.value.toString().substring(0,number.length-1);
				tel_in.pattern="[0]{1}[2]{1}[0-9]{8}";
				console.log(tel_in.value);
			}
		}
	}
	else if(number.indexOf("049")==0||number.indexOf("043")==0){
		tel_in.pattern="[0]{1}[4]{1}[3|9]{1}[0-9]{7}";
		if(number.length>10){
			console.log(">10");
			tel_in.pattern="[0]{1}[4]{1}[3|9]{1}[0-9]{7}[#]{1}[0-9]*$";
			if(number.indexOf("#")==number.length-1){
				tel_in.value=tel_in.value.toString().substring(0,number.length-1);
				tel_in.pattern="[0]{1}[4]{1}[3|9]{1}[0-9]{7}";
				console.log(tel_in.value);
			}
		}
	}
	else if(number.indexOf("04")==0){
		tel_in.pattern="[0]{1}[4]{1}[0-2|4-8]{1}[0-9]{6}";
		if(number.length>9){
			//console.log(">9");
			tel_in.pattern="[0]{1}[4]{1}[0-2|4-8]{1}[0-9]{6}[#]{1}[0-9]*$";
			if(number.indexOf("#")==number.length-1){
				tel_in.value=tel_in.value.toString().substring(0,number.length-1);
				tel_in.pattern="[0]{1}[4]{1}[0-2|4-8]{1}[0-9]{6}";
				//console.log(tel_in.value);
			}
		}
	}
}