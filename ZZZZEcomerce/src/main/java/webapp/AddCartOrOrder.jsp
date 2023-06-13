<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="java.sql.*" import="java.util.StringTokenizer" import="java.util.Base64"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerHomePage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
       
</head>
<style>
.center{
   position: absolute;
   top:50%;
   left: 50%;
   transform:translate(-50%,-50%);
}
.popup{
   width: 350px;
   height: 280px;
   padding: 30px 20px;
   background: #f5f5f5;
   border-radius: 10px;
   box-sizing: border-box;
   text-align: center;box-shadow: 0px 5px 8px 0px rgba(0,0,0,0.63);
}


.popup .icon{
   margin: 5px 0px;
   width: 50px;
   height: 50px;
   border: 2px solid #34f234;
   text-align: center;
   display: inline-block;
   border-radius: 50%;
   line-height: 60px;
}
.popup .icon i.fa{
   font-size: 30px;
   color:#34f234;
}
.popup .title{
   margin:5px 0px;
   font-size: 30px;
   font-weight: 600;
}
.popup .description{
   color: #222;
   font-size: 15px;
   padding: 5px;
}
.popup .dismiss-btn{
   margin-top: 15px;
}
.popup .dismiss-btn button{
   padding: 10px 20px;
   background: #414040;
   color:#f5f5f5;
   border: 2px solid #111;
   font-size: 16px;
   font-weight: 600;
   cursor: pointer;
   outline: none;
   border-radius: 10px;
   transition: all 300ms ease-in-out;
}
.popup .dismiss-btn button:hover{
background-color: rgb(78, 235, 78);
color: #474646;
border-radius: 0%;
border-color: #34f234;
}


</style>
<body>
<%
String productId=request.getParameter("productId");
String SelectedColour=request.getParameter("color");
String SelectSize=request.getParameter("size");
byte[] image1=null;
String buyNow=request.getParameter("buyNow");
String Namee=null;
String qty=request.getParameter("quantity");
int cost=0;
ServletContext context=getServletContext(); 
String phoneNumber=(String) context.getAttribute("phoneNumber");

if(phoneNumber==null) {
	RequestDispatcher rd1;
	rd1=request.getRequestDispatcher("loginPage.jsp");
	rd1.forward(request, response);
	
}else {

String image=null;
String sellerId=null;
Connection con=null;
String url="jdbc:mysql://localhost:3306/Ecommercee";
String usrname="root";
String pswrd="Shiva@9948";
try {
	Class.forName("com.mysql.jdbc.Driver");
	 con = DriverManager.getConnection(url, usrname, pswrd);
	 int NoOfProducts = 0;
	 PreparedStatement ps2=con.prepareStatement("select *from productDetails where productId=?;");
	 ps2.setString(1, productId);
	 ResultSet rs2=ps2.executeQuery();
	 while(rs2.next()) {
		 NoOfProducts=rs2.getInt("noOfProducts");
		 image1 = rs2.getBytes("image1");
		 image = Base64.getEncoder().encodeToString(image1);
		 cost=rs2.getInt("cost");
		 Namee=rs2.getString("namee");
		 sellerId=rs2.getString("sellerId");
	 } 
	 
	 if(buyNow!=null) {
		 String address=request.getParameter("address");
		System.out.println("came to delivery Section    "+buyNow);
 if(NoOfProducts!=0) {
	 int qty1=Integer.parseInt(qty);
	 int leftproducts=NoOfProducts-qty1;
	 String NoOfProduct=String.valueOf(leftproducts);
	 PreparedStatement ps3=con.prepareStatement("update productDetails set noOfProducts=? where productId=?;");
	 ps3.setString(1, NoOfProduct);
	 ps3.setString(2, productId);
	 ps3.execute();
	 System.out.println("NoOfProduct  :"+NoOfProduct);
	 
	 
	 int totalcost=qty1*cost;
	 totalcost= totalcost+200;
	 PreparedStatement ps6=con.prepareStatement(" insert into ordertable(phoneNumber,address,productId,Sizee,colourr,image,namee,cost,NoOfProducts,TotalCost,sellerId,orderStatus) values(?,?,?,?,?,?,?,?,?,?,?,?);");
	 ps6.setString(1, phoneNumber);
	 ps6.setString(2, address);
	 ps6.setString(3, productId);
	 ps6.setString(4, SelectSize);
	 ps6.setString(5, SelectedColour);
	 ps6.setString(6, image);
	 ps6.setString(7, Namee);
	 ps6.setInt(8, cost);
	 ps6.setString(9, qty);
	 ps6.setInt(10, totalcost);
	 ps6.setString(11, sellerId);
	 ps6.setString(12, "ordered Just Now");
	 ps6.execute();
	 
 }else {
	 System.out.println("OUT OF STOCK");
 }}else {
	 
	 PreparedStatement ps8=con.prepareStatement(" insert into AddCart(phoneNumber,productId,Sizee,colourr,image,namee,cost,NoOfProducts) values(?,?,?,?,?,?,?,?);");
	 ps8.setString(1, phoneNumber);
	 ps8.setString(2, productId);
	 ps8.setString(3, SelectSize);
	 ps8.setString(4, SelectedColour);
	 ps8.setString(5, image);
	 ps8.setString(6, Namee);
	 ps8.setInt(7, cost);
	 ps8.setString(8, qty);
	 ps8.execute();
 }
 }
catch( Exception e) {
	System.out.println(e);
}}

if(buyNow!=null) {
%>
<br><br><br><br><br><br><br><br>
 <div class="popup center">
         <div class="icon">
            <i class="fa fa-check"></i>
         </div>
           <div class="title">
            success!!
           </div>
           <div class="description"><h6>
            Added to Cart successfully</h6>
           </div>
           <div class="dismiss-btn">
            <form action="viewOrder.jsp"><button id="dismiss-popup-btn">View Order</button>
           <input type="hidden" name="order" value="order"> 
            </form>
           </div>
      </div>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<%}else{ %>
<br><br><br><br><br><br><br>
 <div class="popup center">
         <div class="icon">
            <i class="fa fa-check"></i>
         </div>
           <div class="title">
            success!!
           </div>
           <div class="description"><h6>
            order placed successfully</h6>
           </div>
           <div class="dismiss-btn">
            <form action="viewOrder.jsp"><button id="dismiss-popup-btn">View Cart
            </button>
            </form>
           </div>
      </div>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<%} %>
</body>
</html>
<%@ include file="footerHomePage.jsp" %>
