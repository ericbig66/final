var price = document.getElementById("getprice").innerHTML;
var amount = document.getElementById("amount").value;
var left = document.getElementById("amount_left").innerHTML;

setprice();
function setprice(){
	price = document.getElementById("getprice").innerHTML;
	price = price.substr(1);
	//price = parseInt(price);
	console.log("price= "+price);
}
getsum();
function getsum(){
	amount = document.getElementById("amount").value;
	if(amount==NaN){amount=1;}
	amount = parseInt(amount);
	console.log("amount="+amount);
	document.getElementById("sum").innerHTML="小計:$"+amount*price;
}

getleft();
function getleft(){
	left = document.getElementById("amount_left").innerHTML;
	left = left.substr(4);
	left = parseInt(left);
	var limit = document.getElementById("amount");
	if(left==0){
		document.getElementById("add_to_cart").style.display="none";
		 limit.min=0;
		 limit.max=0;
		 limit.value=0;
		 getsum();
	}
	else{
		limit.min=1;
		limit.max=left;
	}
}

function quantity(alter){
	var max=document.getElementById("amount").max;
	var min=document.getElementById("amount").min;
	amount = document.getElementById("amount").value;
	amount = parseInt(amount);
	amount += alter;
	if(amount<min){
		document.getElementById("amount").value=1;
		alert("您至少需要訂購一個");
	}
	else if(amount>max){
		document.getElementById("amount").value=max;
		alert("您最多只能買"+max+"個\n如欲大量購買請洽客服(01)2345678");
	}
	else{
		document.getElementById("amount").value=amount;
	}
	getsum();
}