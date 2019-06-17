<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>

<%
String pwd=new String(request.getParameter("pwd").getBytes("ISO-8859-1"),"UTF-8");
String sex=new String(request.getParameter("sex").getBytes("ISO-8859-1"),"UTF-8");
String birth=new String(request.getParameter("birth").getBytes("ISO-8859-1"),"UTF-8");
String email=new String(request.getParameter("email").getBytes("ISO-8859-1"),"UTF-8");
String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
 
%>
<%

    if(request.getParameter("account")!=null){
    Object member = session.getAttribute("account");
    String account= member.toString();
    sql = "UPDATE `identity` SET `pwd`='"+pwd+"' WHERE `account`='"+account+"'";
	con.createStatement().execute(sql);
	sql = "UPDATE `identity` SET `sex`="+sex+" WHERE `account`='"+account+"'";
	con.createStatement().execute(sql);	
	sql = "UPDATE `identity` SET `birth`='"+birth+"'WHERE `account`='"+account+"'";
	con.createStatement().execute(sql);
    sql = "UPDATE `identity` SET `email`='"+email+"'WHERE `account`='"+account+"'";
	con.createStatement().execute(sql);
    sql = "UPDATE `identity` SET `address`='"+address+"'WHERE `account`='"+account+"'";
	con.createStatement().execute(sql);
	response.sendRedirect("member.jsp?op=ok");
	}
%>