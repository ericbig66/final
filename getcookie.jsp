<%
//抓取cookie
  String cookieaccount = "account";
  Cookie cookies [] = request.getCookies ();
  Cookie userCookie = null;
  if (cookies != null){
    for (int i = 0; i < cookies.length; i++) {
      if (cookies [i].getName().equals (cookieaccount)){
        userCookie = cookies[i];
        break;
      }
      else {
        userCookie = null;
      }
    }
  }
  else {
  userCookie = null;
}

%>
