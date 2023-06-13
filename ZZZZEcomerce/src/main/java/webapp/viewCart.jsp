<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   import="java.sql.*" import ="javax.servlet.ServletContext" import="java.util.Base64"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head><title>card</title>
     <!--  BOOTSTRAP5 --> 
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
     
     <!--  JQUERY LINK  -->    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
     <!--  FONTAWESOME LINK  -->
     <script src="https://kit.fontawesome.com/7d2e05e490.js" crossorigin="anonymous"></script>
     <!--  SCALING   -->
     <meta name="viewport" content="width=device-width, initial-scale=1.0"> </head>
    <style>
        body{
            background-color: rgb(173, 171, 171);
        position:absolute;
        }
        .row2{
           height: 405px;
           border:3px solid black;
           border-radius: 2%;
            margin-bottom: 60px;
            margin-top: 60px;
            width:790px;
        }
        img{
            height:385px;
            width:240px;
            margin-top: 10px;
            border-radius: 5%;
       }
       
        .list-group-item{
            width: 450px;
            height: 35px;
            margin:2px;
            background-color: rgb(120, 120, 120);
            border-style: none;
        }
        .list-group{
            margin-left: 16px;
        }
        .quantity{
            width: 90px;
            margin-top: 20px;
        }
        .btnminuscol{
            width: 70px;
        }
        .inputquantitycol{
           width: 85px;   
        }
             

            #plus{
                font-size: 35px;
            color: rgb(245, 236, 119);
            border-radius: 9px;
            padding: 10px;
            cursor: pointer;
            }
            #minus{
                font-size: 35px;
                color: rgb(245, 236, 119);
                border-radius: 9px;
                padding: 10px;
                cursor: pointer;
            }

            .btnminus{
                /*margin-top: 50px;
                margin-left: 40px;*/
                border-style:none;

            }

            .btnplus{
               /* margin-top: 50px;*/
                border-style: none;

            }
           .btnremoveitem{
            margin-left: 20px;
            width: 150px;
           }
           /* div button.btnpluscol{
                margin-right: 180px;
            }*/
            input.totalcost{
                width: 80px;
            }
            #tab{
                margin: 15px;
            }
            #tr1{
    padding-right: 16px;
    padding-top: 16px;
    padding-bottom: 16px;
    opacity: 60%;
}
#tr2{
    border-top-width: 3px;
    border-color: rgb(122, 118, 118);
}

#check{
    margin: 20px;
    background-color:rgb(245, 236, 119);
    font-size: large;
    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    border-radius: 5px;
}
            
        
        
    </style>
<body>
<div class="container"style=" ;width:1900px;margin-left:10px;">
            <div class="row row1"style="width:1200px;margin-top:50px;z-index:0;">
                <div class="col-8" style="width:760px;position: relative;margin-left: 0px;">
<%
ServletContext context=getServletContext(); 
String phoneNumber=(String) context.getAttribute("phoneNumber");


if(phoneNumber==null) {
	RequestDispatcher rd;
	rd=request.getRequestDispatcher("loginPage.jsp");
	rd.forward(request, response);
	
}else {	
String productId=null;
Connection con=null;
String url="jdbc:mysql://localhost:3306/Ecommercee";
String usrname="root";
String pswrd="Shiva@9948";
try {
	Class.forName("com.mysql.jdbc.Driver");
	 con = DriverManager.getConnection(url, usrname, pswrd);
	 String imagename=null;
	 String imagefile=null;
	 String namee=null;
	 String offer=null;
	 int cost=0;
	 String size=null;
	 String colour=null;
	 ResultSet rs=null;
	 PreparedStatement ps=con.prepareStatement("Select * from ordertable where phoneNumber=?;");
	 ps.setString(1, phoneNumber);
	  rs=ps.executeQuery();
	  int TOTALCOST=0;
		 int cardCount=0; 
		 while(rs.next()) {
			 cost=rs.getInt("cost");
			 TOTALCOST=TOTALCOST+cost; 
			 size=rs.getString("Sizee");
			 namee=rs.getString("namee");
			 colour=rs.getString("colourr");
			 productId=rs.getString("productId");
			 imagefile=rs.getString("image");
			 %> 
			  <div class="container">
                        <div class="row row2">
                            <div class="col-4">
                                <img src="data:image/jpeg;base64,<%=imagefile%>" alt="image1">
                             </div>
                            <div class="col-8">
                                <div class="row row3">
                                    <h4 style="margin: 20px;"><%=namee %></h4>
                                <ul  class="list-group" >
                                    <li class="list-group-item">PRICE:</li>
                                    <li class="list-group-item"> <%=cost %></li>
                                    <li class="list-group-item">Size:<%=size %></li>
                                    <li class="list-group-item"> color:<%=colour %></li>
                                    <li class="list-group-item">4 star rating</li>
                                  </ul>
                                </div>
                                <div class="row row4">
                                    <div class="col-6"> 
                                        <div class="row row5"><h6 style="margin-top: 20px;margin-left: 11px;position: absolute;">Add Quantity:</h6>
                                            <div class="col-4 btnminuscol" style="margin-top: 25px;position:relative;">
                                                <button class="btn btnminus" ><i class="fa-solid fa-square-minus"id="minus"></i> 
                                                </button>
                                            </div>
                                            <div class="col-4 inputquantitycol"style="margin-top: 25px;position:relative;">
                                                <input class="quantity" type="text" readonly>
                                            </div>
                                            <div class="col-4 btnpluscol"style="margin-top: 25px;position:relative;">
                                                <button class="btn btnplus" ><i class="fa-solid fa-square-plus"id="plus"></i> 
                                                </button>
                                            </div>
                                        </div>
                                     </div>
                                    <div class="col-6">
                                           <div class="row row6">
                                            <div class="col totalcostcol" >
                                                <div class="row row7">
                                                    <div class="col">
                                                        <div class="row row8">
                                                            <div class="col-6"style="margin-top: 50px;margin-left:20px;position: relative;width:100px;">
                                                                <h6>Total cost:</h6>
                                                            </div>
                                                            <div class="col-6"style="margin-top: 45px;position: relative;">
                                                                <input class="totalcost" type="text" name="total_cost"readonly>
                                                             </div>
                                                        </div>
                                                     </div>
                                                 </div>
                                             </div>
                                           </div>
                                    </div>
                                   
                                </div>
                                <div class="row row44">
                                        <div class="col">
                                            <button class="btn btn-dark btnremoveitem">Remove Item</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
			 
			 <%			 
			 
		 }
		 }catch(Exception e) {
				System.out.println(e);
			}
}
%>
</div>
 <div class="col-4"style="width:350px;margin-left:50px;">
            
                    
                        <div class="card"style="width:290px;height:300px;margin-top: 55px;margin-left:20px;">
                           
                               <div class="card-header"style="text-align:center;color:rgb(245, 236, 119);background-color:rgb(31, 30, 30);font-size:24px;
                                                              font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                                                              letter-spacing: 3px;">  SUMMARY 
                               </div>
                               
                                       <table id="tab" >
                                               <tr>
                                                   <tr>
                                                       <th id="tr1" style="font-size: 19px">cost</th>
                                                       <th ><b style="font-size: large;float: right;"><input id="cost" type="number"placeholder="cost"readonly style="width:60px;float: right;border-style:hidden;">  $</b></th>
                                                   </tr>
                                                   <tr>
                                                       <th id="tr1" style="font-size: 19px">shipping</th>
                                                       <th><b style="font-size: large;float: right;">$ 15</b></th>
                                                   </tr>
                                               </tr>
                                               <tr id="tr2">
                                                       <th>TOTAL COST</th>
                                                       <th id="grandtotal"><b style="font-size: large;float: right;"><input id="grandtotal" type="number"placeholder="total cost"readonly style="width:100px;float: right;border-style: hidden;">$</b></th>
                                               </tr>
                                       </table>
                                       <button id="check">Checkout</button>
                        </div>
               


                </div>
            </div>
        </div>
</body>
</html>