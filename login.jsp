<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<%%>
<html lang="en" class="full">

<head>
	<meta charset="UTF-8">
	<!-- <meta http-equiv="refresh" content="500"> -->
	<title>sotre</title>
	<link rel="stylesheet" href="css/mdb.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap-grid.css">
	<link rel="stylesheet" href="css/bootstrap-reboot.css">
	<link rel="stylesheet" href="css/bootstrap-custom.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="css/star.css">
</head>

<body class="full d-flex align-items-center">
	<!-- ------------------------------------------------- -->
	<div id="dynamic-bg"></div>

	<div class="login chinese-font col-5 mx-auto" id="login">
		<!-- Login： -->
		<form class="px-4 py-3" name="login" action="login_.jsp">
			<!-- 後端注意：登入表單開始，可自行修改name屬性 -->
			<div class="form-group">
	      <label for="account">帳號</label>
	      <input type="text" class="form-control" name="account" id="account" placeholder="account"><!-- 後端注意：帳號請由此接收 -->
	    </div>
	    <div class="form-group">
	      <label for="pwd">密碼</label>
	      <div class="d-flex">
	      	<input type="password" name="pwd" class="form-control" id="pwd" placeholder="Password"><!-- 後端注意：密碼請由此接收 -->
	      	<div id="pwd-show" class="d-flex ml-1 align-items-center" onmousedown="pwd_off()" onmouseup="pwd_on()"><i class="fas fa-eye"></i></div>
	      </div>	
	    </div>
			<div class="form-group">
				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="keep_login_status" checked>
					<!-- 後端注意：此功能(保持登入狀態)可用cookie的有效期限設定 -->
					<label class="form-check-label" for="keep_login_status">
						保持登入狀態
					</label>
				</div>
			</div>
			<button type="submit" class="btn btn-primary">登入</button><!-- 後端注意：登入按鈕 -->
		</form>
		<div class="dropdown-divider"></div>
		<a class="dropdown-item" href="#" onclick="register_show()">還沒有帳號嗎?點我註冊</a>
		<a class="dropdown-item d-none" href="#">忘記密碼?</a>
	</div>

	<div class="reg chinese-font col-4 mx-auto" id="reg">
		<!-- Register： -->
		<form class="px-4 py-3" name="register" action="registered.jsp" id="register">
			<div class="form-group">
				<span class="text-red">*</span>表示必填
				<div class="d-flex mb-0">
					<label for="reg_account" class="d-flex align-content-center mb-0"><span
							class="text-red">*</span>帳戶名稱</label>
					<input type="text" class="ml-2 rounded-lg border px-1" id="reg_account" placeholder="請設定帳號"
						onchange="med_chk()" required name="reg_id"><!-- 後端注意：帳戶名稱資料請由此接收 -->
				</div>
				<div class="input-error chinese-font text-red pl-5 ml-5 mb-3" id="account-error"><i
						class="fas fa-exclamation-circle" id="account-error_i"></i>請輸入可用的帳號名稱</div>
				<div class="d-flex mb-0">
					<label for="reg_pwd" class="d-flex align-content-center mb-0"><span
							class="text-red">*</span>密碼</label>
					<input type="password" class="ml-2 rounded-lg border px-1 col-5" id="reg_pwd" placeholder="請設定密碼"
						onchange="med_chk()" required name="reg_pwd"><!-- 後端注意：密碼資料請由此接收 -->
					<input type="password" class="ml-2 rounded-lg border px-1 col-5" id="pwd_chk" placeholder="請再次輸入密碼"
						onchange="med_chk()" required>
				</div>
				<div class="input-error chinese-font text-red pl-5 ml-2 mb-3" id="code-error"><i
						class="fas fa-exclamation-circle" id="code-error_i"></i>您所輸入的密碼前後不相符</div>
				<div class="d-flex mb-0">
					<label for="reg_name" class="d-flex align-content-center mb-0"><span
							class="text-red">*</span>姓名</label>
					<input type="text" class="ml-2 rounded-lg border px-1" id="reg_name" placeholder="請輸入您的真實姓名"
						onchange="med_chk()" name="reg_name"><!-- 後端注意：姓名資料請由此接收 -->
					<label for="sex" class="d-flex align-content-center mb-0 ml-3"><span
							class="text-red">*</span>性別&emsp;</label>
					<input type="radio" class="ml-2" id="boy" value="male" name="reg_sex" checked><!-- 後端注意：性別資料請由此接收 -->
					<label for="boy" class="d-flex align-content-center mb-0 ml-1" onchange="med_chk()">男</label>&emsp;
					<input type="radio" class="ml-2" id="girl" value="female" name="reg_sex"><!-- 後端注意：性別資料請由此接收 -->
					<label for="girl" class="d-flex align-content-center mb-0 ml-1" onchange="med_chk()">女</label>
				</div>
				<div class="input-error chinese-font text-red pl-5 ml-2 mb-3" id="name-error"><i
						class="fas fa-exclamation-circle" id="name-error_i"></i>請輸入您的姓名</div>
				<div class="d-flex mb-3">
					<label for="birthday" class="d-flex align-content-center mb-0">生日</label>
					<input type="date" class="ml-2 rounded-lg border px-1" id="birthday" name="reg_birthday"><!-- 後端注意：生日資料請由此接收 -->
				</div>
				<!-- 後端注意 後端注意 後端注意 後端注意  後端注意 後端注意 後端注意 後端注意 後端注意 後端注意 -->
				<!-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ -->
				<div class="d-flex mb-0">
					<label for="mail" class="d-flex align-content-center mb-0"><span
							class="text-red">*</span>e-mail</label>
					<input type="email" class="ml-2 rounded-lg border px-1 col-9" id="mail" placeholder="請輸入您的e-mail"
						onchange="med_chk()" required name="reg_email"><!-- 後端注意：e-mail資料請由此接收 -->
				</div>
				<div class="input-error chinese-font text-red pl-5 ml-5 mb-3" id="mail-error"><i
						class="fas fa-exclamation-circle" id="mail-error_i"></i>請輸入可用的e-mail地址</div>
				<!-- ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ -->
				<div class="d-flex mb-3">
					<label for="address" class="d-flex align-content-center mb-0">地址</label>
					<input type="text" class="ml-2 rounded-lg border px-1 col-10" id="address"
						placeholder="請輸入貨品寄送預設地址" name="reg_address"><!-- 後端注意：地址資料請由此接收 -->
				</div>

				<div class="d-flex mt-4 justify-content-around">
					<div class="btn btn-primary fake_reg_btn" id="fake_reg" onclick="input_test()">註冊</div>
					<!-- 必填欄位未填寫前顯示此按鈕 -->
					<button type="submit" class="btn btn-primary" id="real_reg" onsubmit="med_chk()">註冊</button>
					<!-- 後端注意：登入按鈕 -->
					<button type="reset" class="btn btn-primary">重新填寫</button>
					<button type="reset" class="btn btn-primary" onclick="login_show()">我已經是會員了</button>
					<!-- 後端注意：登入按鈕 -->
				</div>
			</div>
		</form>
	</div>

	<!-- -----------------------此線以下為javascrpit連結區---------------------------------- -->
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/login.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
</body>

</html>