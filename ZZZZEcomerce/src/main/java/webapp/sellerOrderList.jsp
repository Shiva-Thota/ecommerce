<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.sql.*"  import="java.util.Base64"  
import="java.util.StringTokenizer"  
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        
   </head>    
<style>
table,th, td {
  border-style:solid;
  border-color: #96D4D4;
}

table {
  width: 100%;
  border-collapse: collapse;
}
</style>


<body>
 <table>
<tr>
<th>OrderId</th>
<th>productId</th>
<th>image</th>
<th>Name</th>
<th>Cost</th>
<th>Size</th>
<th>Color</th>
<th>Quantity</th> 
<th>Button</th>
</tr>

<%
ServletContext context=getServletContext();
String  SellerphoneNumber=(String) context.getAttribute("SellerphoneNumber");

String sellersid=null;
int databasesellerId=0;
int sellerId=0;
Connection con=null;
String url="jdbc:mysql://localhost:3306/Ecommercee";
String usrname="root";
String pswrd="Shiva@9948";
try{
	Class.forName("com.mysql.jdbc.Driver");
	 con = DriverManager.getConnection(url, usrname, pswrd);
	 String imagefile=null;
	 String namee=null;
	 String productId=null;
	 String qty=null;
	 String size=null;
	 String colour=null;
	 String cost=null;
	 String orderStatus=null;
	 int OrderId=0;
	 ResultSet rs1=null;
	 PreparedStatement ps=con.prepareStatement("Select * from sellerDetails where phoneNumber=?;");
	 ps.setString(1, SellerphoneNumber);
	  rs1=ps.executeQuery();
	  while(rs1.next()){
		  sellersid=rs1.getString("sellerId");
		  System.out.println("SellerId :"+sellersid);
	  }
	  PreparedStatement ps1=con.prepareStatement("Select * from ordertable where sellerId=?;");
	  ps1.setString(1, sellersid);
	  ResultSet rs=ps1.executeQuery();
	  while(rs.next()){
		  	cost=rs.getString("cost"); 
			size=rs.getString("Sizee");
			namee=rs.getString("namee");
			colour=rs.getString("colourr");
			productId=rs.getString("productId");
			imagefile=rs.getString("image");
			qty=rs.getString("NoOfProducts");
			OrderId=rs.getInt("orderId");
			orderStatus=rs.getString("orderStatus");
		  %>
		  <tr>
		<td><%=OrderId %></td>
 		<td><%=productId %></td>
		<td style="width:20%;" height="275"><img src="data:image/jpeg;base64,<%=imagefile%>" style="width:350px; height:250px;"></td>
		<td><%=namee %></td>
		<td><%=cost %></td>
		<td><%=size %></td>
		<td><%=colour %></td>
		<td><%=qty %></td>
		<td><%if(orderStatus.equalsIgnoreCase("ordered Just Now")){%> <form action="setStatus.jsp"><button  value="<%= OrderId%>" name="button">Confirm Shipping</button></form><%}else{ %>
					SHIPPED
		<%} %>
		</td>
		</tr>
		  
<% }}catch(Exception e){
	System.out.println(e);
}
%>
</table>
</body>
</html>