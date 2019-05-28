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
	if(isNaN(amount)){amount=1;}
	amount = parseInt(amount);
	console.log("amount before= "+amount);
	if(isNaN(amount)){amount=0;}
	console.log("amount= "+amount);
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
		 document.getElementById("out_of_stock").style.display="block";
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

	if(max==0 && amount!=0){
		document.getElementById("out_of_stock").style.display="block";
	}
	else if(amount<min){
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
number_to_star();
function number_to_star(){
	var count = document.getElementsByClassName("show_comment_star").length;
	var content;
	for(var c =0; c<count; c++){
		content="";
		var number=document.getElementsByClassName("show_comment_star")[c].innerHTML;
		number = parseInt(number);
		if(number==NaN || number==0){number=1};
		for(var s=1; s<6; s++){
			if(s<=number){
				content+="<i class='fas fa-star'></i>";
			}
			else{
				content+="<i class='far fa-star'></i>";
			}
		}
		document.getElementsByClassName("show_comment_star")[c].innerHTML=content;
	}
		
}

change_tab(0);
function change_tab(tab){
	console.log("tab= " + tab);
	var de = document.getElementById("product_detail");
	var mc = document.getElementById("mycomment");
	var co = document.getElementById("comment");
	var de_t = document.getElementById("product_detail-tab");
	var mc_t = document.getElementById("mycomment-tab");
	var co_t = document.getElementById("comment-tab");

	de.className = "tab-pane fade chinese-font px-3";
	mc.className = "tab-pane fade chinese-font";
	co.className = "tab-pane fade chinese-font";
	de_t.className = "nav-link chinese-font";
	mc_t.className = "nav-link chinese-font";
	co_t.className = "nav-link chinese-font";
	de_t.ariaControls = "false";
	mc_t.ariaControls = "false";
	co_t.ariaControls = "false";



	console.log("set done!");
	if(tab==0){
		de.className="tab-pane fade chinese-font px-3 active show";
		de_t.ariaControls = "true";
		de_t.className = "nav-link chinese-font active";
	}
	if(tab==1){
		mc.className="tab-pane fade chinese-font active show";
		mc_t.ariaControls = "true";
		mc_t.className = "nav-link chinese-font active";
	}
	if(tab==2){
		co.className="tab-pane fade chinese-font active show";
		co_t.ariaControls = "true";
		co_t.className = "nav-link chinese-font active";
	}
}