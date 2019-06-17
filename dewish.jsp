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
sql="select datasheet.delwish('";
sql +=proid;
sql +="','";
sql +=userid;
sql +="');";
ResultSet ad = con.createStatement().executeQuery(sql);
%>
<script>
	alert("刪除成功!!");
	window.open("javascript:history.back()","_self");
</script>