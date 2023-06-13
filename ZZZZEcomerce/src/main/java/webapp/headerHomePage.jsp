<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>LOG IN</title>
             <!--  BOOTSTRAP5 --> 
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
            
            <!--  JQUERY LINK  -->    
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
            <!--  FONTAWESOME LINK  -->
            <script src="https://kit.fontawesome.com/7d2e05e490.js" crossorigin="anonymous"></script>
            <!--  SCALING   -->
            <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
            <!--  STYLING  -->
            <style>
            
                /*  HOME PAGE*/
                body{
                    background-image: url(homepage\ background.jpeg);
                    background-repeat: no-repeat;
                    background-attachment: fixed;
                    background-size: 100%;
                display: flex;
                flex-direction: column;
                min-height: 100vh;
                z-index: -1;
                }
                div#body2{    background-color: rgb(15, 15, 15,0.6);
                    z-index: 0;}
                
                
                .transbox{       width: 850px;
                    height: 250px;
                   margin: 30px;
                border-width: 20px;
                text-align: center;
                margin-left: 130px;
                background-color:rgb(139, 138, 138,0.6);
                z-index: +1;}
                
                
                
                /*  HEADER AND FOOTER  */
                
                header{
                    background-color: rgb(15, 15, 15);
                }
                
                .logo{
                    font-size:50px;
                    font-family:cursive;
                    color:rgb(245, 236, 119);
                }
                .logo2{
                    color:rgb(238, 230, 113);
                    font-size:100px;
                    font-family:cursive;
                    
                
                }
                .tagline{
                color: black;
                font-size: 28px;
                font-family:cursive;}
                
                
                #form1{background: #fff;
                    margin-left: 100px;
                width: 371px;
                height: 35px;border-radius: 10px;
                display: flex;
                margin-top: 40px;
                }
                
                #form1 #searchbar{
                width: 500px;
                border: none;
                outline: none;
                }
                
                #form1 button{
                background:rgb(245, 236, 119);
                border-top-right-radius:10px;border-bottom-right-radius:10px;
                border: none;
                outline: none;
                color:  rgb(15, 15, 15);
                font-size: 20px ;
                letter-spacing: 1px;
                cursor: pointer;
                }
                
                #form1 .fa-magnifying-glass{
                align-self: center;
                padding: 10px 20px;
                color: #2c2b2b;
                
                }
                
                .login{ 
                    font-size: 20px;
                    font-weight: bold;
                    background-color:rgb(245, 236, 119);
                    border-radius: 8px;
                    margin-top: 45px;
                    margin-left: 40px;
                    cursor: pointer;  
                }
                
                
                 div .cart {
                    font-size: 38px;
                    color: rgb(245, 236, 119);
                    margin-top: 28px;
                    margin-left: 30px;
                    background-color: rgb(15, 15, 15);
                    cursor: pointer;
                    }
                    div .cart:hover{color: rgb(245, 236, 119);}
                
                
                .nav{justify-content: center;background-color: rgb(145, 144, 143);}
                
                .nav-item a:hover{background-color:rgb(245, 236, 119) ;}
                .dropdown:hover .dropdown-menu{display: block;}
                
                
                #heading{
                    color:rgb(245, 236, 119);
                    background-color:rgb(31, 30, 30);
                    margin-top: 0px;
                    padding: 10px;padding-bottom: 0px;
                    font-size: 30px;
                    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                    letter-spacing: 3px;
                    text-align: center;
                    }
                
                html{height:100%;}
                
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
                
                
             
                
    </style> 
        <script>
function myFunction() {
	var input = document.getElementById("searchbar");
  var div = document.getElementById("myUL");
  if (input.value.length > 0) {
    div.style.display = "block";
  } else { 
    div.style.display = "none";
  }
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById("searchbar");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }}}
</script>
</head>
  
    <body>
     <form id="myForm123"  action="viewOrder.jsp">
	<input type="hidden" name="order" value="order">
	</form>
        <div id="body2">
            <header>
                <div class="container-lg"> 
                    <div class="row">
                        <div class="col-lg-3">
                         <form action="ImageViewer.jsp"><p ><button class="logo" style="background-color:black;">Ezy buy</button></p></form></div>
                        <div class="col-lg-6"><form id="form1" >
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                <input type="text"  id="searchbar" onkeyup="myFunction()" placeholder="Search  Catogory, etc,..." title="Type in a name">
                                                    
                                              </form>
                                              <ul class="list-group list-group-flush"id="myUL" style="display: none; position:absolute; margin-left:125px; width:269px; background-color:white;z-index: +1;">
  													<li class="list-group-item"><button style="width: 100%;border-style: none;"><a href="zProductssearcher.jsp?search=Shirt for Men" style="text-decoration: none;color: #2c2b2b;">Shirts for Men</a></button></li>
  													<li class="list-group-item"><button style="width: 100%;border-style: none;"><a href="zProductssearcher.jsp?search=pants for Men" style="text-decoration: none;color: #2c2b2b;">Pants for Men</a></button></li>
  													<li class="list-group-item"><button style="width: 100%;border-style: none;"><a href="zProductssearcher.jsp?search=pants for Women" style="text-decoration: none;color: #2c2b2b;">Pants for Women</a></button></li>
 												 	<li class="list-group-item"><button style="width: 100%;border-style: none;"><a href="zProductssearcher.jsp?search=t-Shirt for Men"style="text-decoration: none;color: #2c2b2b;">T Shirt for Men</a></button></li>
  													<li class="list-group-item"><button style="width: 100%;border-style: none;"><a href="zProductssearcher.jsp?search=t-Shirt for Women"style="text-decoration: none;color: #2c2b2b;">T Shirt for Women</a></button></li>
  										 			<li class="list-group-item"><button style="width: 100%;border-style: none;"><a href="zProductssearcher.jsp?search=night_ware for Women"style="text-decoration: none;color: #2c2b2b;">Night wear women</a></button></li>
  													<li class="list-group-item"><button style="width: 100%;border-style: none;"><a href="zProductssearcher.jsp?search=ethinic for Women"style="text-decoration: none;color: #2c2b2b;">Ethinic for women</a></button></li>
  										 			<li class="list-group-item"><button style="width: 100%;border-style: none;"><a href="zProductssearcher.jsp?search=sarees for Women"style="text-decoration: none;color: #2c2b2b;">sarees for women</a></button></li>
  				 									<li class="list-group-item"><button style="width: 100%;border-style: none;"><a href="zProductssearcher.jsp?search=night_ware for men"style="text-decoration: none;color: #2c2b2b;">Night wear men</a></button></li>

  													<li class="list-group-item"><button style="width: 100%;border-style: none;"><a href="#">Cindy</a></button></li>
												   </ul>  
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="container-lg">
                                                    <div class="row">
                                                        <div class="col-lg-4"><a href="viewOrder.jsp"><button class=" cart"type="submit" ><i class="fa-solid fa-cart-shopping"></i></button></a></div>
                                        <div class="col-lg-4 "> <a href="loginPage.jsp" ><button class="login"type="button">Login</button></a></div>
                                        <div class="col-lg-4 "><a href="Sigin.jsp" ><button class="login"type="button"style="width:100px;">Sign in</button></a></div>
                                    
                                                       </div> 
                                                </div>
                                            </div>

                                            
                        </div>
                </div>
            </header>
    
    
   <ul class="nav nav-tabs"  style="font-size:17px;">

<li class="nav-item" ><a class="nav-link link-dark" href="ImageViewer.jsp">HOME</a></li>
<li class="nav-item" ><a class="nav-link link-dark" href="ImageViewer.jsp?all=all" >ALL PRODUCTS</a></li>
<li class="nav-item" ><a class="nav-link link-dark" href="#"  onclick="document.getElementById('myForm123').submit()">MY ORDERS</a></li>
  
<li class="nav-item dropdown" >
  <a class="nav-link dropdown-toggle link-dark" data-bs-toggle="dropdown" href="zProductssearcher.jsp?search=men" >MEN</a>
         <ul class="dropdown-menu">
             
               <li ><a class="dropdown-item"  href="zProductssearcher.jsp?search=men" >ALL PRODUCTS</a></li>
               <li ><a class="dropdown-item"  href="zProductssearcher.jsp?search=Shirt for Men" > Shirts</a></li>  
               <li ><a class="dropdown-item" href="zProductssearcher.jsp?search=t-Shirt for Men"> T-Shirts</a></li>
               <li ><a class="dropdown-item" href="zProductssearcher.jsp?search=hoodies for Men"> Hoodies</a></li>
                 
         </ul>
</li>
<li class="nav-item dropdown" >
    <a class="nav-link dropdown-toggle link-dark" data-bs-toggle="dropdown" href="zProductssearcher.jsp?search=women" >WOMEN</a>
           <ul class="dropdown-menu">
               
                <li ><a class="dropdown-item"  href="zProductssearcher.jsp?search=women" >ALL PRODUCTS</a></li>
                 <li ><a class="dropdown-item"  href="zProductssearcher.jsp?search=sarees for Women" > Sarees</a></li>  
                 <li ><a class="dropdown-item" href="zProductssearcher.jsp?search=ethinic for Women">Ethinic</a></li>
                  <li ><a class="dropdown-item" href="zProductssearcher.jsp?search=night_ware for Women">Night Wear</a></li>
                 
           </ul>
  </li> 
  <li class="nav-item dropdown" >
    <a class="nav-link dropdown-toggle link-dark" data-bs-toggle="dropdown" href="zProductssearcher.jsp?search=kids" >KIDS</a>
           <ul class="dropdown-menu">
               
                <li ><a class="dropdown-item"  href="zProductssearcher.jsp?search=kids" >ALL PRODUCTS</a></li>
                 <li ><a class="dropdown-item"  href="zProductssearcher.jsp?search=kids" >BOYS FASHON</a></li>  
                 <li ><a class="dropdown-item" href="zProductssearcher.jsp?search=kids">GIRLS FASHON</a></li>
           </ul>
  </li>
<li class="nav-item"><a class="nav-link link-dark" href="contactUs.jsp">ABOUT US</a></li>
</ul>    
      </div>
        <br>
        <br>
        <br>
        <br>
       
    </body>
��</html>
