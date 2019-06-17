<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<%@include file="getcookie.jsp"%>
<%@include file="header.jsp"%>

<!--slideshow-->
	<div class="bd-example mb-5">
	  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
	    <ol class="carousel-indicators">
	      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
	      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
	      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
	    </ol>
	    <div class="carousel-inner">
	      <div class="carousel-item active" data-interval="5000">
	        <div id="b1" class="d-block w-100 slide" alt="..."></div>
	        <div class="carousel-caption d-none d-md-block">
	          <h5 class="chinese-font">紫色情懷</h5>
	          <p class="chinese-font">浪漫、溫和，擁有豐富的色彩情調</p>
	        </div>
	      </div>
	      <div class="carousel-item" data-interval="5000">

	        <div id="b2" class="d-block w-100 slide" alt="..."></div>
	        <div class="carousel-caption d-none d-md-block">
	          <h5 class="chinese-font text-dark">磚牆風格壁紙</h5>
	          <p class="chinese-font text-dark">闊氣、有個性，具備濃厚的自我風格</p>
	        </div>
	      </div>
	      <div class="carousel-item" data-interval="5000">
	        <div id="b3" class="d-block w-100 slide" alt="..."></div>
	        <div class="carousel-caption d-none d-md-block">
	          <h5 class="chinese-font text-dark">休閒風格</h5>
	          <p class="chinese-font text-dark">輕鬆、休閒，<span class="text-white">如同</span>
	          置身度假聖地一<span class="text-white">般</span></p>
	        </div>
	      </div>
	    </div>
	    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
	      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
	      <span class="carousel-control-next-icon" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	</div>
	<!--item cards 站長推薦商品-->
	<div class="recommand-title mx-auto col-2 h2 bothline text-center chinese-font">站長推薦</div>
	<div class="card-deck col-9 mx-auto mb-5 mt-3">
	  <!-- 商品1 -->
	  <div class="card ml-2 mr-2 rounded-xlg">
	    <div id="ic1" class="card-img-top rounded-top-xlg item_card
	    " alt="..."></div>
	    <div class="card-body">
		
		<a href="item.jsp?pronamevalue=123456">
	      <h5 class="card-title">休閒風格</h5></a>
	      <p class="card-text">輕鬆、休閒，如同置身度假聖地一般</p>
	      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		</a>  
	    </div>
	  </div>
	  <!-- 商品2 -->
	  <div class="card ml-2 mr-2 rounded-xlg">
	  	<a href="item.jsp?pronamevalue=藍色纖維壁紙">
	    <div id="ic2" class="card-img-top rounded-top-xlg item_card
	    " alt="..."></div>
	    <div class="card-body">
			
	      <h5 class="card-title">紫色情懷</h5></a>
	      <p class="card-text">浪漫、溫和，擁有豐富的色彩情調</p>
	      <p class="card-text"><small class="text-muted">目前已賣出87件</small></p>
		  
	    </div>
	    </a>
	  </div>
	  <!-- 商品3 -->

	  <div class="card ml-2 mr-2 rounded-xlg">
	  	<a href="item.jsp?pronamevalue=深色磚紋壁紙">
	    <div id="ic3" class="card-img-top rounded-top-xlg item_card
	    " alt="..."></div>
	    <div class="card-body">
		
	      <h5 class="card-title">磚牆風格壁紙</h5>
	      <p class="card-text" >闊氣、有個性，具備濃厚的自我風格</p>
	      <p class="card-text"><small class="text-muted">Last updated 10 mins ago</small></p>
	    
		</div>
		
	  </div>
	  
	</div>




	<!--item cards 熱門商品-->
	<div class="recommand-title mx-auto col-2 h2 bothline text-center chinese-font">熱門商品</div>
	<div class="card-deck col-9 mx-auto mb-5 mt-3">
	  <!-- 商品1 -->
	  <div class="card ml-2 mr-2 rounded-xlg">
	    <div id="ic4" class="card-img-top rounded-top-xlg item_card
	    " alt="...">img/wallpaper/marble_dark_demo.jpg</div>
	    <div class="card-body">
		<a href="#">
	      <h5 class="card-title">休閒風格</h5>
	      <p class="card-text">輕鬆、休閒，如同置身度假聖地一般</p>
	      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	    </a>
		</div>
	  </div>
	  <!-- 商品2 -->
	  <div class="card ml-2 mr-2 rounded-xlg">
	    <div id="ic5" class="card-img-top rounded-top-xlg item_card
	    " alt="...">img/wallpaper/wood_green_demo.jpg</div>
	    <div class="card-body">
		<a href="#">
	      <h5 class="card-title">綠色森林</h5>
	      <p class="card-text">綠色具有護眼效果，當眼睛疲勞是綠色是您最佳的好夥伴，為自己的眼睛保養一番</p>
	      <p class="card-text"><small class="text-muted">目前已賣出56件</small></p>
	    </a>
		</div>
	  </div>
	  <!-- 商品3 -->
	  <div class="card ml-2 mr-2 rounded-xlg">
	    <div id="ic6" class="card-img-top rounded-top-xlg item_card
	    " alt="...">img/paint/waterproof_white_demo.jpg</div>
	    <div class="card-body">
		<a href="#">
	      <h5 class="card-title">紫色情懷</h5>
	      <p class="card-text">溫和的冷色系，在室內裝潢上容易使人產生放鬆的感覺</p>
	      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	    </a>
		</div>
	  </div>
	</div>

	<!-- 壁紙文案 -->
	<div class="wallpaper ">
		<div class="wallpaper_photo col-12 bg-center bg-cover d-flex justify-content-end align-items-center pr-5 mb-5">
			<div class="wallpaper_intro col-3 chinese-font text-white">
				<div class="title">自然。就是美</div>
				<div class="innercontent">透過樸實無華的風格展現空間的藝術</div>	
			</div>
			<div class="arrow-right px-3 py-3"><a href="itemlistbrick.jsp"><i class="fas fa-chevron-right text-white"></i></a></div>
		</div>
	</div>

	<!-- 油漆文案 -->

	<div class="paint ">
		<div class="paint_photo col-12 bg-center bg-cover d-flex justify-content-start align-items-center pl-5">
			<div class="arrow-left px-3 py-3"><a href="itemlistf.jsp"><i class="fas fa-chevron-left text-white"></i></a></div>
			<div class="paint_intro col-3 chinese-font text-white">
				<div class="title">顏色。重新定義空間</div>
				<div class="innercontent">透過顏色將空間大小重新詮釋</div>
			</div>	
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/recommand_reader.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
</body>
</html>