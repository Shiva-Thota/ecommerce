<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="java.sql.*"   import="java.util.Base64"  
    pageEncoding="ISO-8859-1"%>
   <%@ include file="headerHomePage.jsp" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8"> 
        <title>ALLPRODUCTS</title>
                <!--  BOOTSTRAP5 --> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="css/bootstrap.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
              <!-- LINK TO STYLESHEET  --> 
 <link rel="stylesheet" href="MEN-STYLE.CSS">
            <link rel="stylesheet" href="HOME-STYLE.CSS">
               <!--  FONTAWESOME LINK  -->

           <script src="https://kit.fontawesome.com/7d2e05e490.js" crossorigin="anonymous"></script>
            <!--  JQUERY LINK  -->    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
           <!--  SCALING   -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
        
<style>
@media screen and (min-width:992px) {
  .ProductList-item { 
    width: 25% !important;
}
.ProductList .ProductList-item:nth-child(3n+1) {
    clear: none !important;
}
��}
 .card-img-top{                  
        width: 100%;
    height:330px ;
}
.card{margin:50px}
.card-body{background-color: rgb(119, 115, 115);}
.card-header{background-color:rgb(221, 218, 218);text-transform: capitalize;}
</style>
</head>
 <body>
<%

String all=request.getParameter("all");
ServletContext context=getServletContext();
String phoneNumber=(String) context.getAttribute("phoneNumber");


if(all==null){ %> </br>
<br><%@ include file="HomeCorasel.jsp" %> 
 <%  if(phoneNumber!=null) {
                	   if(phoneNumber.equalsIgnoreCase("Admin")) { %>
 <form action="carousel.jsp">                  
      				<button class="btn btn-primary" type="submit">Change Carousel</button>
               </form>	
                <%}}%>
<%}

Connection con=null;
String url="jdbc:mysql://localhost:3306/Ecommercee";
String usrname="root";
String pswrd="Shiva@9948";
try {
	Class.forName("com.mysql.jdbc.Driver");
	 con = DriverManager.getConnection(url, usrname, pswrd);
	 String imagename=null;
	 String imagefile=null;
	 String cost=null;
	 String offer=null;
	 String productId=null;
	 String brand=null;
	 String sellerId=null;
	 String noOfProducts=null;
	 PreparedStatement ps=con.prepareStatement("Select * from productDetails;");
	 ResultSet rs=ps.executeQuery();
	 int cardCount = 0;
	 while(rs.next()) {
		 byte[] imageData = rs.getBytes("image1");
		 imagename=rs.getString("namee");
		 cost=rs.getString("cost");
		 offer=rs.getString("offer"); 
		 productId=rs.getString("productId");
		 brand=rs.getString("brand");
		 sellerId=rs.getString("sellerId");
		 noOfProducts=rs.getString("noOfProducts");
		 imagefile = Base64.getEncoder().encodeToString(imageData);
		 if (cardCount % 3 == 0) {
		      out.println("<div class='row'>");
		    }
		 
	%>  
	<div class='col-md-4'>   
	  <form action="fullProductDetail.jsp">
	<div class="card" id="<%=productId %>"  style="width:300px;box-shadow: 0px 5px 5px 0px rgba(0,0,0,0.63);" >
          <button><img class="card-img-top women" src="data:image/jpeg;base64,<%=imagefile%>"></button>  
              <div class="card-body">
                   <h4 class="card-header"> <%= imagename%> </h4>
                    <div class="card-text">
                        <ul class="list-group list-group-flush">
                         <li class="list-group-item"><%=brand %></li>
                            <li class="list-group-item"> PRICE:<%=cost %></li>
                           
                             <li class="list-group-item">Offer:<%=offer %></li>
                          
                       
      				<input type="hidden" name="cardId" value="<%=productId %>">
    				</form>
                   <%  if(phoneNumber!=null) {
                	   if(phoneNumber.equalsIgnoreCase("Admin")) { %>
               <form action="changeProductDetails.jsp">
				<li class="list-group-item">Product ID :<%=productId %></li>
				<li class="list-group-item">Seller ID :<%=sellerId %></li>
				<li class="list-group-item">No Of Products Left:<%=noOfProducts %></li>
          		<input type="hidden" name="productId" value="<%=productId %>">
          		 
           <button class="btn btn-danger" type="submit" name="remove" value="remove">Remove Product</button>
           </form>    <%}}%>
            </ul>
                    </div>
                </div> 
          </div>
           </div>
	<%				
	cardCount++;
	if (cardCount % 3 == 0) {
	      out.println("</div>");
	    }
	 }
}catch(Exception e) {
	System.out.println(e);
}
%> 
</div>
<%@ include file="footerHomePage.jsp"  %>  
  ��
</body>
</html>
