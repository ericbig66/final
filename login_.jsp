<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<%
	if(request.getParameter("account") !=null && request.getParameter("pwd") != null){
   sql = "SELECT * FROM identity WHERE account='" +request.getParameter("account") + "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    ResultSet paperrs =con.createStatement().executeQuery(sql);
    if(paperrs.next()){            
        //setCookie
        String account=request.getParameter("account");
        if(account==null){
          account="";
        }
        Cookie cookie = new Cookie ("account",account);
        response.addCookie(cookie);
        response.sendRedirect("index.jsp") ;
    }
    else{
        out.println("密碼帳號不符 !! <a href='login.jsp'>按此</a>重新登入") ;
    }
    }
%>