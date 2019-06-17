<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<%@include file="getcookie.jsp"%>
<%request.setCharacterEncoding("UTF-8");%>

<%
String proid ;
proid = request.getParameter("proidn");
String userid ="";
userid = userCookie.getValue();
String amt = "";
amt = request.getParameter("number");
sql="select datasheet.gorder('";
sql +=proid;
sql +="','";
sql +=userid;
sql +="','";
sql +=amt;
sql +="');";
ResultSet ad = con.createStatement().executeQuery(sql);
response.sendRedirect("checkout.html") ;
%>
