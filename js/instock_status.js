var amount = document.getElementsByClassName("set_status");
var instock = document.getElementsByClassName("add_to_cart");
var out_of_stock = document.getElementsByClassName("out_of_stock");
var count = amount.length;

set_status();
function set_status(){
	for(var i=0; i<count; i++){
		var tmp = parseInt(amount[i].innerHTML);
		if(isNaN(tmp)){tmp=0;}
		if(tmp>0){
			instock[i].style.display="flex";
			out_of_stock[i].style.display="none";
		}
		else{
			instock[i].style.display="none";
			out_of_stock[i].style.display="flex";
		} 
	}
}

var res = $(".item-resource");
var thu = $(".item-thumb");
var am = res.length;

for(var xx= 0; xx<am; xx++){
	thu[xx].style.background="url("+res[xx].innerHTML+")";
}
