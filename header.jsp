<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
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
</head>
<body>
	<!--navbar-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="index.jsp"><img src="img/logo.png" alt="logo.png" class="logo float-left mr-0"></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	    <!-- 首頁按鈕 -->
	      <li class="nav-item active">
	        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
	      </li>
		<!-- 油漆選單 -->
	      <!-- <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          paint
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="#">防潮漆</a>
	          <a class="dropdown-item" href="#">白板漆</a>
	          <a class="dropdown-item" href="#">速乾淨味漆</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">油漆總覽</a>
	        </div>
	      </li> -->
		<!-- 壁紙選單 -->
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          wallpaper
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="item_list.jsp?classtype=木紋">木紋系列</a>
	          <a class="dropdown-item" href="item_list.jsp?classtype=磚紋">磚牆風格</a>
	          <a class="dropdown-item" href="item_list.jsp?classtype=大理石">大理石風</a>
	          <a class="dropdown-item" href="item_list.jsp?classtype=纖維">纖維系列</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="item_list.jsp?classtype=">壁紙總覽</a>
	        </div>
	      </li>
	      <!-- 油漆刷選單 -->
	      <!-- <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Brush
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="#">滾輪工具</a>
	          <a class="dropdown-item" href="#">油漆刮刀</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">工具總覽</a>
	        </div>
	      </li> -->
	    </ul>
		
		<ul class="navbar-nav ml-auto">
			<%
				if (userCookie == null) {
    				out.println("<li class='mx-1 tooltip-hover'><a href='login.jsp'><img class='nav-icon' src='img/user.png'></a><div class='tooltip'>登入</div></li>");
    			}
    			else {
    				out.print("您好，"+userCookie.getValue());
					out.println("<li class='mx-1 tooltip-hover'><a href='member.jsp'><img class='nav-icon' src='img/user.png'></a><div class='tooltip'>會員中心</div></li>");
					out.println("<li class='mx-1 tooltip-hover'><a href='logout.jsp'><img class='nav-icon' src='img/logout.png'></a><div class='tooltip'>登出</div></li>");
    			}
			%>
			<li class="mx-1 tooltip-hover"><a href="shoppingcart.jsp"><img class="nav-icon" src="img/cart.png"></a><div class="tooltip">購物推車</div></li>
			<li class="mx-1 tooltip-hover"><a href="wishlist.jsp"><img class="nav-icon" src="img/wish_list.png"></a><div class="tooltip">願望清單</div></li>
			<li class="mx-1 tooltip-hover"><a href="#"><img class="nav-icon" src="img/question.png"></a><div class="tooltip">如何購買</div></li>
		</ul>

	    <form class="form-inline my-2 my-lg-0" method="get">
	      <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>
<!-- ------------------------------------------------- -->