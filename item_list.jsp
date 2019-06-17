<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>
<%@include file="getcookie.jsp"%>
<%request.setCharacterEncoding("UTF-8");%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="refresh" content="500">
	<title>sotre</title> 
	<link rel="stylesheet" href="css/mdb.css">
	<link rel="stylesheet" href="css/bootstrap.css"> 
	<link rel="stylesheet" href="css/bootstrap-grid.css">
	<link rel="stylesheet" href="css/bootstrap-reboot.css">
	<link rel="stylesheet" href="css/bootstrap-custom.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="css/star.css">
</head>
<body>
	<!--navbar-->
	<%@include file = "header.jsp"%>
<!-- ------------------------------------------------- -->
	
	
<%
String class_type = "";
class_type = request.getParameter("classtype");

sql="select * from produces";
ResultSet rs = con.createStatement().executeQuery(sql);
rs.last();
int totalpage = rs.getRow();

String proid = "";
String proname = "";
String introduce3 = "";
String classtype = "";
String price = "";
String store = "";
String pic1 = "";
String pic2 = "";
String pic3 = "";
String pic4 = "";
String pic5 = "";
String pic_demo = "";
String sqlbr = "";



for(int i =0;i<40;i+=5){
	sqlbr = "SELECT * FROM datasheet.produces WHERE proname LIKE '%";
	sqlbr += class_type;
	sqlbr +="%' ORDER BY(proid) DESC limit ";
	sqlbr += + i +", 5";
ResultSet tmpbr= con.createStatement().executeQuery(sqlbr);
%>
<!-- 後端注意:請將商品種類標題放置於此 -->
	<div class="card-deck col-10 mx-auto my-5"><!-- 後端注意:商品排列(1~5項)請從下行開始[每五項商品為一列，需重複此div] -->
<%

while(tmpbr.next()){
	proid = tmpbr.getString("proid");
	proname = tmpbr.getString("proname");
	introduce3 = tmpbr.getString("introduce3");
	classtype = tmpbr.getString("class");
	price = tmpbr.getString("price");
	store = tmpbr.getString("store");
	pic1 = tmpbr.getString("pic1");
	pic2 = tmpbr.getString("pic2");
	pic3 = tmpbr.getString("pic3");
	pic4 = tmpbr.getString("pic4");
	pic5 = tmpbr.getString("pic5");
	pic_demo = tmpbr.getString("pic_demo");

%>
<div class='card rounded-xlg itemcard'><div class='d-none set_status'>
<%out.println(store);%>
</div><div class='item-resource d-none'>
<%out.println(pic_demo);%>
</div><div class='card-img-top rounded-top-xlg item-thumb'></div><div class='card-body'>
<a href='item.jsp?pronamevalue=<%out.println(proname);%>'>
<h5 class='card-title'>
<%out.println(proname);%>
</h5></a><p class='card-text trait'>
<%out.println(introduce3);%>
</p></div><div class='card-footer'><small class='text-muted d-flex justify-content-around'><a href="addcart.jsp?proidn=<%=_No%>,amt=number">
						<div type="button" class="btn btn-outline-success chinese-font mx-2" id="add_to_cart">加入購物車</div></a><!-- 後端注意:此開關為後端設計之範圍 --><button type='button' class='btn btn-outline-dark item_list_button mx-2 out_of_stock' id='out_of_stock' disabled><i class='fas fa-exclamation-circle'></i><div class='btn-text chinese-font'>&nbsp;缺貨</div></button><!-- 此按鈕請勿修改(庫存量為0時會自動使用) --><a href="addwish.jsp?proidn=<%=proid%>"><div class='btn btn-outline-info item_list_button mx-2 d-flex' id='add_to_wishList'><i class='fas fa-heart'></i><div class='btn-text chinese-font'>&nbsp;收藏</div></div></a><!-- 後端注意:此開關為後端設計之範圍 --></small></div></div>
	
<%
}
%>
</div><%}%>

<!-- ------------------------------------------------- -->
<!-- Footer -->
	<%@include file = "footer.jsp"%>
	<!-- Footer -->
<!-- -----------------------此線以下為javascrpit連結區---------------------------------- -->
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/instock_status.js"></script>	
	<script src="js/bootstrap.bundle.js"></script>
</body>
</html>