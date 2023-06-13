<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>HOME</title>
        <!--  BOOTSTRAP5 -->
        <link href="css/bootstrap.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <!-- LINK TO STYLESHEET  --> 
        <link rel="stylesheet" href="HOME-STYLE.CSS">
        <!--  FONTAWESOME LINK  -->
        <script src="https://kit.fontawesome.com/7d2e05e490.js" crossorigin="anonymous"></script>
        <!--  JQUERY LINK  -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <!--  SCALING   -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 


        <style>
            
footer{text-align: center;
    padding-top: 50px;
    background-color:rgb(15, 15, 15) ;
    margin-top: auto;
}
footer a{color:  rgb(245, 236, 119);
         text-decoration: none;}
footer h3{color:  rgb(245, 236, 119);}
footer a:hover{text-decoration: underline;}
footer div h6{text-align: center;color: yellowgreen;}


/* CONTACT US PAGE*/

.c1{
    border-radius: 5px;
font-size: 20px;
background-color:rgb(221, 218, 218); 
border-color: black;   width: 300px;       
} 
.c2{
font-size:20px ; width: 300px;height: 100px;
background-color:rgb(221, 218, 218); 
border-radius: 5px;
border-color: black;  border-width: 2px;           
}
.button1{
width: 150px;height:50px;font-weight: bold;
background-color:  rgb(245, 236, 119);   
border-radius: 10px;margin-left: 150px;
}  </style>
    </head>
    <body>
    <form id="myForm"  action="viewOrder.jsp">
	<input type="hidden" name="cart" value="cart">
	</form>	
      <footer>
            <div class="container-lg" style="font-size:17px;">
                <div class="row">
                    <div class="col-sm-3" >
                        <h3>MEN</h3>
                        <p><a href="zProductssearcher.jsp?search=men">All Products</a></p>
                        <p><a href="zProductssearcher.jsp?search=Shirt for Men">Shirts</a></p>
                        <p><a href="zProductssearcher.jsp?search=t-Shirt for Men">T-Shirts</a></p>
                        <p><a href="zProductssearcher.jsp?search=hoodies for Men">Hoodies</a></p>
                    </div>
                    <div class="col-sm-3">
                        <h3>WOMEN</h3>
                        <p><a href="zProductssearcher.jsp?search=women">All Products</a></p>
                        <p><a href="zProductssearcher.jsp?search=sarees for Women">Sarees</a></p>
                        <p><a href="zProductssearcher.jsp?search=ethinic for Women">Ethinic</a></p>
                        <p><a href="zProductssearcher.jsp?search=night_ware for Women">Kurthas</a></p>
                    </div>
                    <div class="col-sm-3">
                        <h3>KIDS</h3> 
                        <p><a href="zProductssearcher.jsp?search=kids">All Products</a></p>
                        <p><a href="zProductssearcher.jsp?search=kids">Boys Fashion</a></p>
                        <p><a href="zProductssearcher.jsp?search=kids">Girls Fahsion</a></p>
                    </div>
                    <div class="col-sm-3">
                        <h3>LINKS</h3>
                        <p><a href="ImageViewer.jsp">Home</a></p>
                        <p><a href="#" onclick="document.getElementById('myForm').submit()">Cart</a></p>
                        <p><a href="SellerLogIn.jsp" >Sell on EZY BUY</a></p>
                        <p><a href="contactUs.jsp">Contact us</a></p>
                  </div>
                </div>
            <br>
            <div class="row">
                <div class="col-sm-12"><h6>Copywrite @EZY BUY 2022-2023</h6></div>
                </div>
            </div>
          
             </footer>
      </div>
   �</body>
</html>
