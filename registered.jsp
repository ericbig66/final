<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>

<html>

<head>
    <title>JSP page</title>
</head>

<body>
    <% request.setCharacterEncoding("UTF-8");%>
    <% 
    String account;
    account = request.getParameter("reg_id");
    String pwd;
    pwd = request.getParameter("reg_pwd");
    String idname;
    idname = request.getParameter("reg_name");
    String sex;
    sex= request.getParameter("reg_sex");
    String birth;
    birth= request.getParameter("reg_birthday");
    String email;
    email= request.getParameter("reg_email");
    String address;
    address= request.getParameter("reg_address");

    sql="datasheet";				   
	sql="insert into identity (account, pwd, idname, sex, birth, email, address)";
    sql+="value ('" +account+"', ";
    sql+="'"+pwd+"', "; 
	sql+="'"+idname+"', "; 
	sql+="'"+sex+"', ";
	sql+="'"+birth+"', ";
	sql+="'"+email+"', ";
	sql+="'"+address+"')";
    con.createStatement().execute(sql);
    

               
    out.println("以下為您的個人資料");
    out.print("<br>");
    out.println("帳號："+ account +"\n"); 
    out.print("<br>");
    out.println("密碼："+ pwd +"\n");
    out.print("<br>");
    out.println("姓名："+ idname +"\n");
    out.print("<br>");
    out.println("性別："+ sex +"\n");
    out.print("<br>");
    out.println("生日："+ birth +"\n");
    out.print("<br>");
    out.println("電子郵件："+ email +"\n");
    out.print("<br>");
    out.println("地址："+ address +"\n");
    out.print("<br>");
    out.println("註冊成功");
    
    %>
    <a href="index.jsp">回首頁</a>
    
</body>

</html>