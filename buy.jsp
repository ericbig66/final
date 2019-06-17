<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<%@include file="getcookie.jsp"%>
<%
request.setCharacterEncoding("UTF-8");
sql="INSERT INTO datasheet.shoppingcart (`buyerid`, `proname`, `amount`, `color`) VALUES ('";
sql+=request.getParameter("idanme");
sql+="', '";
sql+=request.getParameter("proname");
sql+="', '"+request.getParameter("quantity");
sql+="', '"+request.getParameter("color");
sql+="')";
con.createStatement().execute(sql);
out.println(sql);

%>