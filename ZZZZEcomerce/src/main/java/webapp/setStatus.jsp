<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import="java.sql.*" 
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<%
String orderId=request.getParameter("button");
Connection con=null;
String url="jdbc:mysql://localhost:3306/Ecommercee";
String usrname="root";
String pswrd="Shiva@9948";
try{
	Class.forName("com.mysql.jdbc.Driver");
	 con = DriverManager.getConnection(url, usrname, pswrd);
	 PreparedStatement ps3=con.prepareStatement("update ordertable set orderStatus=? where orderId=?;");
	 ps3.setString(1, "leaved Wearhouse");
	 ps3.setString(2, orderId);
	 ps3.execute();
	RequestDispatcher rd = request.getRequestDispatcher("sellerOrderList.jsp");
	  rd.forward(request, response);
}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>