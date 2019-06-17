<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<%@include file="getcookie.jsp"%>
<%@include file="header.jsp"%>
<%
<%
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
String cookiename = "";
cookiename = userCookie.getValue();
sql = "call datasheet.searchwish('";
sql += cookiename;
sql += "');";
ResultSet ac = con.createStatement().executeQuery(sql);
%>
<%
while(ac.next()){
String sac = ac.getString("proid");
for(int i =0;i<20;i+=5){
  sqlbr = "SELECT * FROM datasheet.produces where proid = '";
  sqlbr += sac;
  sqlbr += "' ORDER BY(proid) DESC limit ";
  sqlbr += + i +", 5";
ResultSet tmpbr= con.createStatement().executeQuery(sqlbr);
%>
<!-- 後端注意:請將商品種類標題放置於此 -->
  <!-- 後端注意:商品排列(1~5項)請從下行開始[每五項商品為一列，需重複此div] -->
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
 
  	<div class="recommand-title mx-auto col-2 h2 bothline text-center chinese-font mt-5 mb-5">購物車</div>
  <form name="" action="" method="post"><!-- 後端注意：表單開始 -->
  	<div class="carbody col-7 border rounded-xlg mx-auto mt-3 px-4 py-4">
      <!-- 商品1 -->
  		<div class="car-items align-items-center mb-3" id="item0">
  			<div class="d-none propic"><%out.print(pic_demo);%></div><!-- 後端注意：請在div內填入商品圖檔名才能正確顯示圖片 -->
        <div class="d-none getstock" id="gst0"><%out.print(price);%></div><!-- 後端注意：請在div內填入庫存數量才能觸動數量限制 -->
        <div class="d-none incart" id="incart0">10</div><!-- 後端注意：目前購物車內的數量請在div內填入 -->
        
        <div class="pic"></div>
  			<div class="product_name chinese-font mx-4 d-flex align-items-center"><%out.print(proname);%>&emsp;(目前還可加購<span class="instock_txt"></span>樣)</div>
              <div class="chinese-font">單價：$</div>
              <div class="price mr-2" id="incart0"><%out.print(price);%></div><!-- 後端注意：商品單價請在div內填入才能正確計算價格 -->
        			<div class="btn btn-outline-primary quantity_minus mx-2 amount_btn" onclick="quantity(-1,0)"><i class="fas fa-minus"></i></div><!-- 後端注意: onclick裡面的表示法 uqantity(-1,第n項商品)[注意n從0開始] -->

        			<input class="text-center quantity_input" type="number" name="quantity" min="1" max="30" value="1" id="amount" onchange="getsum(0)"><!-- 後端注意: onclick裡面的表示法 getsum(第n項商品)[注意n從0開始] -->
        			<div class="btn btn-outline-primary quantity_plus mr-2 amount_btn" onclick="quantity(1,0)"><i class="fas fa-plus"></i></div><!-- 後端注意: onclick裡面的表示法 uqantity(1,第n項商品)[注意n從0開始] -->
              <div class="sum mx-4" id="s0">小計：$1000</div>
        			<input type="reset" class="trash" onclick="del(0)" value=""><!-- 後端注意: onclick裡面的表示法 del(第n項商品)[注意n從0開始](用於隱藏刪除的商品) -->
  		</div>
      <%}}}%>
      <!-- 按鈕區 -->
      <div class="btn-group chinese-font d-flex">
        <a href="decart.jsp?proidn=<%=usercookie%>,amt=number">
        <div type="reset" class="btn btn-outline-danger mr-3">清空購物車</div>
      </a><!-- 後端注意:此開關設計為後端範圍 -->
      <a href="gorder.jsp?proidn=<%=usercookie%>,amt=number">
        <div type="button" class="btn btn-outline-success mr-2">確認結帳</div>
      </a><!-- 後端注意:此開關設計為後端範圍 -->
      </div>
  	</div>
  </form>
</div>	


<!-- Footer -->
<%@include file = "footer.jsp"%>
<!-- Footer -->

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="js/bootstrap.js"></script>
  <script src="js/cart.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
</body>
</html>