<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>seller UI</title>
             <!--  BOOTSTRAP5 --> 
 <link href="css/bootstrap.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
 
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
          
         <!--  JQUERY LINK  -->    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<style>
</style>
    </head>
    <body>	
    
     <form action="zProductssearcher.jsp">                  
                    <input type="hidden" name="SoldProducts" value="SoldProducts">
      				<button class="btn btn-primary" type="submit">Sold Products</button>
               </form>	
    <form action="sellerOrderList.jsp">                  
                    <input type="hidden" name="SoldProducts" value="SoldProducts">
      				<button class="btn btn-primary" type="submit">Need To delivery</button>
               </form>	
               
               											
    <form action="ProductDetails" method="Post" enctype="multipart/form-data">
<div class="container"><h3 style="text-align: center;">SELL PRODUCTS</h3>
    <div class="row" style="margin-top: 50px;">                <label for="category"style="text-decoration:underline;">CATEGORY :</label><br>
        <div class="col-lg-3">
            <input type="radio" id="men" name="category" value="men" required>
            <label for="men">MEN</label><br> 
        </div>
        <div class="col-lg-3">
           <input type="radio" id="women" name="category" value="women">
            <label for="women">WOMEN</label><br> 
        </div>
        <div class="col-lg-3">
             <input type="radio" id="unisex" name="category" value="unisex">
            <label for="unisex">UNISEX</label><br> 
        </div>
        <div class="col-lg-3">
             <input type="radio" id="kids" name="category" value="kids">
            <label for="kids">KIDS</label><br> 
        </div>
    </div>
    <div style="height: 2px;width: 100%;border-bottom:2px solid  rgb(165, 163, 163);margin-top: 20px;"></div>
      <div class="row" style="margin-top: 50px;">
        <div class="col-lg-6">
                <label for="name">NAME OF THE PRODUCT:</label><br>
                <input type="text"  name="name" style="width: 80%;" required>
        </div>  
              
    </div>
    <div class="row"style="margin-top: 50px;">
        <div class="col-md-4">
                <label for="img1">image 1</label><br>
                <input type="file" class="imageinput" name="img1">
        </div>
        <div class="col-md-4">
                <label for="img2">image 2</label><br>
                <input type="file"  class="imageinput"name="img2">
        </div>
        <div class="col-md-4">
                <label for="img3">image 3</label><br>
                <input type="file"  class="imageinput"name="img3">
        </div>
    </div>
    <div style="height: 2px;width: 100%;border-bottom:2px solid  rgb(165, 163, 163);margin-top: 20px;"></div>

    <div class="row" style="margin-top: 50px;">
        <div class="col-lg-12">
                <label for="cost">COST :</label><br>
                <input type="text"  name="cost" required>
        </div>        
    </div>
    <div class="row" style="margin-top: 50px;">
        <div class="col-lg-12">
                <label for="offer">OFFER  :</label><br>
                <input type="text"  name="offer" required>
        </div>        
    </div>
    <div style="height: 2px;width: 100%;border-bottom:2px solid  rgb(165, 163, 163);margin-top: 20px;"></div>

    <div class="row" style="margin-top: 50px;">                <label for="cost"style="text-decoration:underline;">FEATURED :</label><br>
        <div class="col-lg-3">
            <input type="radio" id="shirt" name="featured" value="shirt" >
            <label for="shirt">SHIRT</label><br>
        </div>
        <div class="col-lg-3">
            <input type="radio" id="t-shirt" name="featured" value="t-shirt">
            <label for="t-shirt">T-SHIRT</label><br>
        </div>
        <div class="col-lg-3">
            <input type="radio" id="hoodies" name="featured" value="hoodies">
            <label for="hoodies">HOODIES</label><br>
        </div>
        <div class="col-lg-3">
            <input type="radio" id="pants" name="featured" value="pants">
            <label for="pants">PANTS</label><br>            
        </div>
        <div class="col-lg-3">
            <input type="radio" id="sarees" name="featured" value="sarees">
            <label for="sarees">SAREES</label><br> 
        </div>
        <div class="col-lg-3">
            <input type="radio" id="night_ware" name="featured" value="night_ware">
            <label for="night_ware">NIGHT WARE</label><br> 
        </div>
        <div class="col-lg-3">
            <input type="radio" id="ethinic" name="featured" value="ethinic">
            <label for="ethinic">Ethinic</label><br> 
        </div>
    </div>
    <div style="height: 2px;width: 100%;border-bottom:2px solid  rgb(165, 163, 163);margin-top: 20px;"></div>

    <div class="row"style="margin-top: 50px;"><label for="colors"style="text-decoration:underline;">COLORS :</label><br>
        <div class="col-md-4">
            <div><input type="checkbox" id="red" name="red" value="red" >
                <label for="red">RED</label><br> </div>
            <div><input type="checkbox" id="blue" name="blue" value="blue">
                <label for="blue">BLUE</label><br> </div>
            <div><input type="checkbox" id="yellow" name="yellow" value="yellow">
                <label for="yellow"> YELLOW</label><br> </div>
        </div>
        <div class="col-md-4">
            <div><input type="checkbox" id="green" name="green" value="green">
                <label for="green"> GREEN</label><br> </div>
            <div><input type="checkbox" id="orange" name="orange" value="orange">
                <label for="orange"> ORANGE</label><br> </div>
            <div><input type="checkbox" id="white" name="white" value="white">
                <label for="white">WHITE</label><br> </div>
        </div>
        <div class="col-md-4">
            <div><input type="checkbox" id="pink" name="pink" value="pink">
                <label for="pink">PINK </label><br> </div>
            <div><input type="checkbox" id="black" name="black" value="black">
                <label for="black">BLACK</label><br> </div>
        </div>
    </div>
    <div style="height: 2px;width: 100%;border-bottom:2px solid rgb(165, 163, 163);margin-top: 20px;"></div>

    <div class="row"style="margin-top: 50px;">
        <div class="col-md-12">
            <label for="quantity">NO.OF PRODUCTS AVAILABLE :</label><br>
            <input type="text"  name="quantity">
        </div>
    </div>
    <div class="row"style="margin-top: 50px;"><label for="brand"style="text-decoration:underline;">BRAND :</label><br>
        <div class="col-md-3">
            <div><input type="radio" id="adidas" name="brand" value="adidas" >
                <label for="adidas">ADIDAS</label><br> </div>
            <div><input type="radio" id="allen_solly" name="brand" value="allen_solly">
                <label for="allen_solly">ALLEN SOLLY</label><br> </div>
            <div><input type="radio" id="calvin_klein" name="brand" value="calvin_klein">
                <label for="calvin_klein">CALVIN KLEIN</label><br> </div>
        </div>
        <div class="col-md-3">
            <div><input type="radio" id="fab_India" name="brand" value="fab_India">
                <label for="fab_India">FAB INDIA</label><br> </div>
            <div><input type="radio" id="flying_machine" name="brand" value="flying_machine">
                <label for="flying_machine">FLYING MACHINE</label><br> </div>
            <div><input type="radio" id="h&m" name="brand" value="h&m">
                <label for="h&m">H & M</label><br> </div>
        </div>
        <div class="col-md-3">
            <div><input type="radio" id="john_players" name="brand" value="john_players">
                <label for="john_players">JOHN PLAYERS</label><br> </div>
            <div><input type="radio" id="levis" name="brand" value="levis">
                <label for="levis">LEVI'S</label><br> </div>
            <div><input type="radio" id="louis_philippe" name="brand" value="louis_philippe">
                <label for="louis_philippe">LOUIS PHILIPPE</label><br> </div>
        </div>
        <div class="col-md-3">
            <div><input type="radio" id="nike" name="brand" value="nike">
                <label for="nike">NIKE</label><br> </div>  
        </div>
    </div> 
    <div style="height: 2px;width: 100%;border-bottom:2px solid rgb(165, 163, 163);margin-top: 20px;"></div>

    <div class="row" style="margin-top: 50px;">
        <div class="col-lg-12">
                <label for="additional_info">ADDITIONAL INFORMATION  :</label><br>
                <textarea  name="additional_info" style="width:45%;height:300px;" required></textarea>
        </div>        
    </div>
    <div style="height: 2px;width: 100%;border-bottom:2px solid  rgb(165, 163, 163);margin-top: 20px;"></div>

</div>

<div class="container"style="text-align: center;">
    <div class="row"style="margin-top: 50px;">
        <div class="col-lg-12">
            <button class="btn btn-primary"style="width:50%;"   >SUBMIT</button>
        </div>
    </div>
</div>
</form>
   �</body>
</html>
