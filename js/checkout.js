var instock =$(".getstock");
//var instocktxt =$(".instock_txt");
var incart_ = $(".incart");
var set_amount = $(".quantity_input");
var thumb = $(".propic");
var total_bill= 0;
//var set_amount = document.getElementsByClassName("quantity_input");
var auto_correction= new Array(100);

initial();
function initial(){
	for(var i=0; i<instock.length; i++){
		var left = parseInt(instock[i].innerHTML);
		var cart = parseInt(incart_[i].innerHTML);
		var output = left - cart;
		 if(output>=0){
		 	set_amount[i].max=left;
		 	//instocktxt[i].innerHTML=output;
		 	set_amount[i].value=cart;
		 }
		 else if(left>0 && cart>0){
		 	set_amount[i].max=left;
		 	//instocktxt[i].innerHTML=0;
		 	set_amount[i].value=left;
		 }
		 else{
		 	set_amount[i].max=0;
		 	set_amount[i].min=0;
		 	//instocktxt[i].innerHTML=0;
		 	set_amount[i].value=0;
		 }
		$(".pic")[i].style.backgroundImage="url("+thumb[i].innerHTML+")";
		 quantity(0,i);
	}
}


function quantity(amount_,n){
	var max = set_amount[n].max;
	var min = set_amount[n].min;
	var input = parseInt(amount_)+parseInt(set_amount[n].value);
	//console.log(parseInt(amount_));
	if(input<=max && input>=min){
		set_amount[n].value=parseInt(amount_)+parseInt(set_amount[n].value);
		auto_correction[n]=set_amount[n].value;
	}
	
	getsum(n);
}

function getsum(nn){
	// console.log("set_amount["+nn+"].value= "+set_amount[nn].value);
	// console.log("set_amount["+nn+"].max= "+set_amount[nn].max);
	// console.log(set_amount[nn].value>set_amount[nn].max);

	if(set_amount[nn].value=="" || set_amount[nn].value==0){
		set_amount[nn].value=auto_correction[nn];
	}
	else if(parseInt(set_amount[nn].value)>parseInt(set_amount[nn].max)){
		set_amount[nn].value=set_amount[nn].max;
	}
	else if(parseInt(set_amount[nn].value)<parseInt(set_amount[nn].min)){
		set_amount[nn].value=set_amount[nn].min;
	}
	$(".showquantity")[nn].innerHTML="購買數量："+set_amount[nn].value;
	var sumout= set_amount[nn].value*parseInt($(".price")[nn].innerHTML);
	//console.log(sumout);
	$(".sum")[nn].innerHTML="小計：$"+sumout;
	$(".sum_output")[nn].value=sumout;
	bill(sumout);
}

function del(p){
	$(".car-items")[p].style.display="none";
}


function bill(money){
	console.log(total_bill);
	total_bill+=money;
	console.log(total_bill);
	$("#bill").html("總金額：$" + total_bill);
	document.getElementById("bill_output").value=total_bill;
}

