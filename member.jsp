<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>

<!DOCTYPE html>
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
    <div class="reg chinese-font col-4 mx-auto" id="reg">
        <!-- Register： -->
        <form class="px-4 py-3" name="register" action="update_member.jsp">
            <div class="recommand-title mx-auto col-5 mb-3 h2 bothline text-center chinese-font">會員中心</div>
            <div class="form-group">

            <%
                if(session.getAttribute("account") != null ){
                        sql = "SELECT * FROM datasheet WHERE Name='" +session.getAttribute("account")+"';";
                        ResultSet paperrs1 =con.createStatement().executeQuery(sql);
                        String account="", pwd="",idname="",sex="",birth="",email="",address="";
                        //讀出account, pwd當成使用者要更改時的內定值
                        while(paperrs1.next()){
                            //name=paperrs1.getString(1);
                            account=paperrs1.getString("account");
                            pwd=paperrs1.getString("pwd");
                            idname=paperrs1.getString("idname");
                            sex=paperrs1.getString("sex");
                            birth=paperrs1.getString("birth");
                            email=paperrs1.getString("email");
                            address=paperrs1.getString("address");
                            }
                            out.println("<label style='font-size: 16pt'>"+account+ "</label>");
                            out.println("<label style='font-size: 11pt'>"+email+ "</label>");
                            out.println("<p class='loginyes'>(已登入)</p>");
                            }
                            con.createStatement().execute(sql);
            %>

                <span class="text-red">*</span>表示必填
                <div class="d-flex mb-0">
                    <label for="reg_account" class="d-flex align-content-center mb-3">帳戶名稱</label>
                    <input type="text" class="ml-2 rounded-lg border px-1 mb-3" id="reg_account" placeholder="請設定帳號"
                    value="account_goes_here" disabled onchange="med_chk()" name="account" value="<%=account%>"><!-- 後端注意：帳戶名稱資料請由此接收 -->
                </div>
                <div class="d-flex mb-0">
                    <label for="reg_pwd" class="d-flex align-content-center mb-0"><span
                            class="text-red">*</span>密碼</label>
                    <input type="password" class="ml-2 rounded-lg border px-1 col-5" id="reg_pwd" placeholder="請設定密碼"
                        onchange="med_chk()" name="pwd" value="<%=pwd%>"><!-- 後端注意：密碼資料請由此接收 -->
                    <input type="password" class="ml-2 rounded-lg border px-1 col-5" id="pwd_chk" placeholder="請再次輸入密碼"
                        onchange="med_chk()">
                </div>
                <div class="input-error chinese-font text-red pl-5 ml-2 mb-3" id="code-error"><i
                        class="fas fa-exclamation-circle" id="code-error_i"></i>您所輸入的密碼前後不相符</div>
                <div class="d-flex mb-0">
                    <label for="reg_name" class="d-flex align-content-center mb-3">姓名</label>
                    <input type="text" class="ml-2 rounded-lg border px-1 mb-3" id="reg_name" placeholder="請輸入您的真實姓名"
                        onchange="med_chk()" value="name_goes_here" disabled name="idname" value="<%=idname%>"><!-- 後端注意：姓名資料請由此接收 -->
                    <label for="sex" class="d-flex align-content-center mb-0 ml-3">性別&emsp;</label>
                    <input type="radio" class="ml-2" id="boy" value="male" name="sex" onchange="med_chk()"
                        onclick="return false" checked name="sex" value="<%=sex%>"><!-- 後端注意：性別資料請由此接收 -->
                    <label for="boy" class="d-flex align-content-center mb-0 ml-1"
                        onclick="return false">男</label>&emsp;
                    <input type="radio" class="ml-2" id="girl" value="female" name="sex" onchange="med_chk()"
                        onclick="return false" name="sex" value="<%=sex%>"><!-- 後端注意：性別資料請由此接收 -->
                    <label for="girl" class="d-flex align-content-center mb-0 ml-1" onclick="return false">女</label>
                </div>
                <div class="d-flex mb-3">
                    <label for="birthday" class="d-flex align-content-center mb-0">生日</label>
                    <input type="date" class="ml-2 rounded-lg border px-1" id="birthday" name="birth" value="<%=birth%>">
                    <!-- 後端注意：生日資料請由此接收 -->
                </div>
                <!-- 後端注意 後端注意 後端注意 後端注意  後端注意 後端注意 後端注意 後端注意 後端注意 後端注意 -->
                <!-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ -->
                <div class="d-flex mb-0">
                    <label for="mail" class="d-flex align-content-center mb-0"><span
                            class="text-red">*</span>e-mail</label>
                    <input type="email" class="ml-2 rounded-lg border px-1 col-9" id="mail" placeholder="請輸入您的e-mail"
                        onchange="med_chk()" name="email" value="<%=email%>"><!-- 後端注意：e-mail資料請由此接收 -->
                </div>
                <div class="input-error chinese-font text-red pl-5 ml-5 mb-3" id="mail-error"><i
                        class="fas fa-exclamation-circle" id="mail-error_i"></i>請輸入可用的e-mail地址</div>
                <!-- ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ -->
                <div class="d-flex mb-3">
                    <label for="address" class="d-flex align-content-center mb-0">地址</label>
                    <input type="text" class="ml-2 rounded-lg border px-1 col-10" id="address" placeholder="請輸入貨品寄送預設地址"
                        name="address"value="<%=address%>"><!-- 後端注意：地址資料請由此接收 -->
                </div>

                <div class="d-flex mt-4 justify-content-around">
                    <div class="btn btn-primary fake_reg_btn" id="fake_reg" onclick="input_test()">儲存變更</div>
                    <!-- 必填欄位未填寫前顯示此按鈕 -->
                    <button type="submit" class="btn btn-primary " id="real_reg">儲存變更</button><!-- 後端注意：登入按鈕 -->
                    <button type="reset" class="btn btn-primary ">取消變更</button>

                </div>
            </div>
        </form>
    </div>

    <!-- -----------------------此線以下為javascrpit連結區---------------------------------- -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/member.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
</body>

</html>