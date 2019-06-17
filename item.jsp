<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>
<%@include file="getcookie.jsp"%>
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
<%
String pronamevalue;
pronamevalue = request.getParameter("pronamevalue");
String sqlpro = "";
sqlpro = "SELECT * FROM datasheet.produces WHERE proname LIKE '"+pronamevalue+"';";
ResultSet tmppro = con.createStatement().executeQuery(sqlpro);
String _No = "";
String proname = "";
String introduce2 = "";
String price = "";
String store = "";
String pic1 = "";
String pic2 = "";
String pic3 = "";
String pic4 = "";
String pic5 = "";
while(tmppro.next()){
	_No = tmppro.getString("proid");
	proname = tmppro.getString("proname");
	introduce2 = tmppro.getString("introduce2");
	price = tmppro.getString("price");
	store = tmppro.getString("store");
	pic1 = tmppro.getString("pic1");
	pic2 = tmppro.getString("pic2");
	pic3 = tmppro.getString("pic3");
	pic4 = tmppro.getString("pic4");
	pic5 = tmppro.getString("pic5");
}
%>

<%
String sqlvc="";
sqlvc = "SELECT COUNT(score) FROM datasheet.proevaluation"+pronamevalue+";";
ResultSet tmpvc = con.createStatement().executeQuery(sqlvc);
String valamount = "";
while(tmpvc.next()){
	valamount = tmpvc.getString(1);
}
%>
	<!--navbar-->
	<%@include file = "header.jsp"%>
<!-- ------------------------------------------------- -->
	<!-- 商品介紹區 -->
	<div class="card-deck mx-auto col-10 mt-5">
		<!-- 商品圖片區 -->
		<div class="card rounded-xlg">
			<div class="imgshow mx-auto mt-4 mb-4">
				<!-- 大圖 -->
				<div class="product_photo"><div id="photo_frame"></div></div>
				<!-- 縮圖列表 -->
				<div class="product_thumb d-flex"><!-- 後端注意:使用時src命名規則為"產品;樣式_顏色"、id命名規則為"t"加上從0開始的數字、 -->
					<div class="thumbs" id="t0" onclick="showme('0')"><%out.print(pic1);%></div><!-- 請將圖片檔名放在div內 -->
					<div class="thumbs" id="t1" onclick="showme('1')"><%out.print(pic2);%></div><!-- 請將圖片檔名放在div內 -->
					<div class="thumbs" id="t2" onclick="showme('2')"><%out.print(pic3);%></div><!-- 請將圖片檔名放在div內 -->
					<div class="thumbs" id="t3" onclick="showme('3')"><%out.print(pic4);%></div><!-- 請將圖片檔名放在div內 -->
					<div class="thumbs" id="t4" onclick="showme('4')"><%out.print(pic5);%></div><!-- 請將圖片檔名放在div內 -->
				</div>
			</div>
		</div>
		<!-- 商品簡介區 -->
		<div class="card rounded-xlg pt-4 px-4">
			<h2 class="chinese-font mb-2 chinese-font"><%out.print(proname);%></h2>
			<div class="d-flex star"><!-- 後端注意:此處之星星數須經過後端計算輸出(語法在本段下方) -->
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star-half-alt"></i>
				<i class="far fa-star"></i>
		<!-- <i class="far fa-star"></i> 空星-->
		<!-- <i class="fas fa-star-half-alt"></i> 半星-->
		<!-- <i class="fas fa-star"></i> 全星-->
				<div class="mx-3 chinese-font" onclick="change_tab(2)"><a href="#tabs" class="chinese-font" ><%out.print(valamount);%>筆評價</a></div><!-- 後端注意:n為該商品評價的比數，並非所有留言的總比數!! -->
				<div onclick="change_tab(1)"><a href="#tabs" class="chinese-font" >我要評價</a></div>
			</div>
		
			<h2 class="price mb-4" id="getprice">$<%out.print(price);%></h2><!-- 後端注意:更改價格時應保留$若去除將導致錯誤 -->
			<div class="product_detail mb-4 chinese-font">
				商品編號：<%out.print(_No);%><br><!-- 後端注意:產品名稱命名規則為"商品編號加顏色"，其餘部分請存入資料庫 -->
				材質：防潑水特殊材質<br>
				特色：<br>
				<ul>
					<li>遇到髒污可直接用清水擦拭</li>
					<li>色彩封存技術顏色始終如一</li>
					<li>彈性表層長久使用不龜裂</li>
					<li onclick="change_tab(0)"><a href="#tabs" class="text" >more...</a></li>
				</ul>
				<span id="amount_left">庫存量：<%out.print(store);%></span><br><!-- 後端注意:更改庫存時應保留"庫存量:"，若去除將導致錯誤，另外若庫存量為0時加入購物車的開關會自動消失並以灰色的"銷售一空"按鈕取代，因此後端可省略庫存量為0之控制，但需控制數量為空的例外情形 -->
			</div>
			<div class="buy_form">
				<form name="order"><!-- 後端注意:此為購買表單起始處name可自行修改 -->
					<div class="d-flex">
						<!-- <span class="chinese-font amount_text">我要買</span> -->
						<div class="btn btn-outline-primary quantity_minus mx-2 amount_btn" onclick="quantity(-1)"><i class="fas fa-minus"></i></div>
						<input class="text-center quantity_input" type="number" name="quantity" min="1" max="30" value="1" id="amount" onchange="getsum()"><!-- 後端注意:name可以修改，數量請由此接收 -->
						<div class="btn btn-outline-primary quantity_plus mr-2 amount_btn" onclick="quantity(1)"><i class="fas fa-plus"></i></div>	
						<span class="chinese-font amount_text">組</span>
						<span class="chinese-font color_select mx-2">
							<select class="rounded-lg color_selector"><!-- 後端注意:請自行加入name屬性 -->
								<option value="w">淺色</option>
								<option value="b">深色</option>
								<option value="r">紅色</option>
								<option value="g">綠色</option>
								<option value="b">藍色</option>
							</select>
						</span>
						<input type="hidden" name="proid" value="<%out.print(_No);%>">
						<a href="addcart.jsp?proidn=<%=_No%>,amt=number">
						<div type="button" class="btn btn-outline-success chinese-font mx-2" id="add_to_cart">加入購物車</div></a><!-- 後端注意:此開關為後端設計之範圍 -->
						<button type='button' class='btn btn-outline-dark chinese-font mx-2' id='out_of_stock' disabled>銷售一空</div><!-- 此按鈕請勿修改(庫存量為0時會自動使用) -->
						<a href="addwish.jsp?proidn=<%=_No%>">
						<div type="reset" class="btn btn-outline-info chinese-font mx-2">加入願望清單</div></a><!-- 後端注意:此開關為後端設計之範圍 -->
					</div>
				</form>
				
				<h3 class="price_sum chinese-font mt-3" id="sum">
					小計：$0<!-- 此行請勿修改，小計會根據購買數量及單價自動產生 -->
				</h3>

				<div class="transit_fee chinese-font mt-3"><!-- 運費計算方案可自行修改 -->
					運費計算方式：<br>
					&emsp;&emsp;<span class="strike_through">原價:每樣商品$60</span><br>
					&emsp;&emsp;開幕期間優惠:全面免運費
				</div>	
			</div>
			
			<div id="thumb_tab"></div>
		</div>
	</div>


	<!-- 詳細規格/評價 --><a id="tabs"/>
	<div class="detail_review rounded-xlg col-10 mx-auto mt-5">
		<div class="mx-4 border rounded-xlg px-3 pt-3">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
			 <!-- 詳細規格 頁籤 -->
			  <li class="nav-item">
			    <a class="nav-link active chinese-font" id="product_detail-tab" data-toggle="tab" href="#product_detail" role="tab" aria-controls="product_detail" aria-selected="true">詳細規格</a>
			  </li>
			 <!-- 我要評價 頁籤 -->
			  <li class="nav-item">
			    <a class="nav-link chinese-font" id="mycomment-tab" data-toggle="tab" href="#mycomment" role="tab" aria-controls="mycomment" aria-selected="false">我要評價</a>
			  </li>
			 <!-- 評價 頁籤 -->
			  <li class="nav-item">
			    <a class="nav-link chinese-font" id="comment-tab" data-toggle="tab" href="#comment" role="tab" aria-controls="comment" aria-selected="false">評價</a>
			  </li>
			</ul>
			<div class="tab-content" id="myTabContent">
			<!-- 詳細規格 內容 -->
			  <%out.print(introduce2);%>
			<!-- 我要評價 內容 -->
			  <div class="tab-pane fade chinese-font" id="mycomment" role="tabpanel" aria-labelledby="mycomment-tab">
				<form class="pt-3 px-3 chinese-font" id="ratingsForm" name="user_comment" method="post"><!-- 後端注意:此為評價表單之開始處name可自行修改 -->
					<div class="mb-3">我的評價：</div>
					<div class="stars"><!-- 後端注意:星星數計算方式以收到的value計算 -->
						<input type="radio" name="star" class="star-1" id="star-1" value="1"/>
						<label class="star-1" for="star-1">1</label>
						<input type="radio" name="star" class="star-2" id="star-2" value="2"/>
						<label class="star-2" for="star-2">2</label>
						<input type="radio" name="star" class="star-3" id="star-3" value="3"/>
						<label class="star-3" for="star-3">3</label>
						<input type="radio" name="star" class="star-4" id="star-4" value="4"/>
						<label class="star-4" for="star-4">4</label>
						<input type="radio" name="star" class="star-5" id="star-5" value="5"/>
						<label class="star-5" for="star-5">5</label>
						<span></span>
					</div>
					<div class="mb-3">我的看法：</div>
					<textarea name="words" class="rounded-xlg col-12 row-4 mb-2" placeholder="告訴我們您的想法..."></textarea><!-- 後端注意:使用者所輸入的文字請放入資料庫 -->
					<div class="button-group d-flex justify-content-end chinese-font mb-3">
						<button type="reset" class="btn btn-outline-danger mr-3">重新填寫</button><!-- 後端注意:此開關設計為後端範圍 -->
						<button type="button" class="btn btn-outline-success mr-2">確認送出</button><!-- 後端注意:此開關設計為後端範圍 -->
					</div>
					
				</form>
				
			  </div>
			<!-- 評論 內容 -->
			  <div class="tab-pane fade chinese-font" id="comment" role="tabpanel" aria-labelledby="comment-tab">
				<!-- 第一筆 -->
				
			<%@include file = "board.jsp"%>
				

			  </div>
			</div>
		</div>
	</div>



<!-- ------------------------------------------------------- -->
<!-- Footer -->
<footer class="page-footer font-small unique-color-dark mt-5">

  <div style="background-color: #6351ce;">
    <div class="container">

      <!-- Grid row-->
      <div class="row py-4 d-flex align-items-center">

        <!-- Grid column -->
        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
          <h6 class="mb-0 chinese-font">更多消息請關注我們社群媒體粉絲專頁！</h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-6 col-lg-7 text-center text-md-right">

          <!-- Facebook -->
          <a class="fb-ic">
            <i class="fab fa-facebook-f white-text mr-4"> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic">
            <i class="fab fa-twitter white-text mr-4"> </i>
          </a>
          <!-- Google +-->
          <a class="gplus-ic">
            <i class="fab fa-google-plus-g white-text mr-4"> </i>
          </a>
          <!--Linkedin -->
          <a class="li-ic">
            <i class="fab fa-linkedin-in white-text mr-4"> </i>
          </a>
          <!--Instagram-->
          <a class="ins-ic">
            <i class="fab fa-instagram white-text"> </i>
          </a>

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row-->

    </div>
  </div>

  <!-- Footer Links -->
  <div class="container text-center text-md-left mt-5">

    <!-- Grid row -->
    <div class="row mt-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <h6 class="text-uppercase font-weight-bold chinese-font">紙在必行</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto chinese-font" style="width: 60px;">
        <p>感謝您的造訪，如需詳細資訊可以透過粉絲專頁或著右側的聯絡電話與我們聯繫，營業時間：<br>周一至周五：8:00~20:00<br>週六：10:00~15:00<br>週日及國定假日均暫停服務</p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold chinese-font">工作團隊</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!" class="chinese-font">陳冠廷</a>
        </p>
        <p>
          <a href="#!" class="chinese-font">陳君修</a>
        </p>
        <p>
          <a href="#!" class="chinese-font">邱筠文</a>
        </p>
        

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold chinese-font">連結傳送門</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!" class="chinese-font">回到頁首</a>
        </p>
        <p>
          <a href="#!" class="chinese-font">壁紙專區</a>
        </p>
        <p>
          <a href="#!" class="chinese-font">油漆專區</a>
        </p>
        <p>
          <a href="#!" class="chinese-font">購物流程介紹</a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold chinese-font">聯絡我們</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p class="chinese-font">
          <i class="fas fa-home mr-3"></i> 桃園市中壢區中北路200號</p>
        <p>
          <i class="fas fa-envelope mr-3"></i> getwallpaper@boximail.com</p>
        <p>
          <i class="fas fa-phone mr-3"></i> (03) 265-1999</p>
        <p>
          <i class="fas fa-print mr-3"></i> (03) 265-1888</p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2019 Copyright:
    <a href="https://ericbig66.github.io/resume/"> Eric's</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
<!-- --------------------------------------------------------- -->
<!-- -----------------------此線以下為javascrpit連結區---------------------------------- -->
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/imgshow.js"></script>
	<script src="js/setprice.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
</body>
</html>