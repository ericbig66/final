<%@ page import="java.util.*"%>
<%
  String username=request.getParameter("idname");
  if(username==null){
    username="";
  }
  Cookie cookie = new Cookie ("username",username);
  response.addCookie(cookie);
  response.sendRedirect("getcookie.jsp") ;
%>

    
<!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  -->
<!--        <title>JSP Page</title>  -->
<!--        <a href="getcookie.jsp">Next Page to view the cookie value</a>  -->