<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>

<%


Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use datasheet";
con.createStatement().execute(sql);
//-----------
sql = "SELECT * FROM datasheet.produces WHERE proname LIKE '商品1';";
ResultSet tmp = con.createStatement().executeQuery(sql);

while(tmp.next()){
	String proname = tmp.getString(2);
	String introduce = tmp.getString(3);
	String price = tmp.getString(4);
	String supplier = tmp.getString(5);
	String supaddress = tmp.getString(6);
	String saleamount = tmp.getString(7);
	String store = tmp.getString(8);
	String pic1 = tmp.getString(9);
	String pic2 = tmp.getString(10);
	String pic3 = tmp.getString(11);
	String pic4 = tmp.getString(12);
	String pic5 = tmp.getString(13);
	out.println(proname);
	out.println(introduce);
	out.println(price);
	out.println(supplier);
	out.println(supaddress);
	out.println(saleamount);
	out.println(store);
	out.println(pic1);
	out.println(pic2);
	out.println(pic3);
	out.println(pic4);
	out.println(pic5);
	out.println("<br>------------------------------<br>");
}
%>