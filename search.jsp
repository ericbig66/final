<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<%request.setCharacterEncoding("UTF-8");%>

<%
String address="";
//String searchtype = new String(request.getParameter("search").getBytes("ISO-8895-1"),"UTF-8");
address = "item_list.jsp?classtype=";
address += java.net.URLEncoder.encode(request.getParameter("search"));
out.print(address);
response.sendRedirect(address);
%>