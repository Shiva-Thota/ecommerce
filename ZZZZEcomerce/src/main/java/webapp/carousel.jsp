<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>carousel images</title>
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
    <form action="carousel" method="Post" enctype="multipart/form-data">
<div class="container"><h3 style="text-align: center;">carousel Images</h3>
  
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