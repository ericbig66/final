<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file = "config.jsp"%>
<%
//算出共幾筆留言
sql = "SELECT * FROM proevaluation WHERE proname LIKE '磚紋';";
ResultSet rs =con.createStatement().executeQuery(sql);
//先移到檔尾, getRow()後, 就可知道共有幾筆記錄
rs.last();
int total_content=rs.getRow();
//out.println("共"+total_content+"筆留言<p>");

//每頁顯示5筆, 算出共幾頁
int page_num=(int)Math.ceil((double)total_content/3.0); //無條件進位
//out.println("請選擇頁數");
//使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
   {
//out.print("<a href=\"view.jsp?page="+i+"\">"+i+"</a>&nbsp;"); //&nbsp;html的空白
//out.print("<a href='view.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白
}
//out.println("<p>");
//讀取page變數
String page_string = request.getParameter("page");
if (page_string == null) 
    page_string = "0";          
int current_page=Integer.valueOf(page_string);
if(current_page==0) //若未指定page, 令current_page為1
 current_page=1;
//計算開始記錄位置   
//Step 5: 顯示結果 
int start_record=(current_page-1)*3;
//遞減排序, 讓最新的資料排在最前面
sql="SELECT * FROM proevaluation order by _No desc limit  ";
sql+=start_record+",10";
rs=con.createStatement().executeQuery(sql);
//  逐筆顯示, 直到沒有資料(最多還是5筆)
String username="";
String content="";
String score="";
while(rs.next())
     {
      username = rs.getString(2);
      content = rs.getString(3);
      score = rs.getString(4);
      out.print(username+"<br>");
      out.print(content+"<br>");
      out.print(score+"<br>");
}
%>
