<%

Cookie nameCookie[] = request.getCookie();
int cookielength = namecookie.length;
String cookieid = "";
for(int i = 0;i<cookielength;i++){
	if(cookieid[i].getName().equals("admin1")){
		response.sendRedirect("index_admin.html");
	}
	else if(!(cookieid[i].getName().equals(null))){
		response.sendRedirect("index.html");
	}
	else {
	response.sendRedirect("login.html");
	}
}


%>