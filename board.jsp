<%request.setCharacterEncoding("UTF-8");%>
<%@page pageEncoding="UTF-8"%>
<%
//遞減排序, 讓最新的資料排在最前面
String sqlc="SELECT * FROM proevaluation"+proname+" order by idname desc";
ResultSet rs=con.createStatement().executeQuery(sqlc);
//  逐筆顯示, 直到沒有資料(最多還是3筆)
String username="";
String content="";
String score="";
while(rs.next())
     {
      username = rs.getString(1);
      content = rs.getString(2);
      score = rs.getString(3);
				  out.print("<div class='show_comment mx-2 mt-2 mb-2'><div class='d-flex'>");
     			out.print(username);
     			out.print("：&emsp;<div class='show_comment_star d-flex'>");
     			out.print(score);
     			out.print("</div></div><div class='show_comment_text ml-3 mr-2 mt-3'>");
     			out.print(content);
     			out.print("</div></div><hr class='col-10'>");
          out.print("<hr class='col-10'>");
}
%>
