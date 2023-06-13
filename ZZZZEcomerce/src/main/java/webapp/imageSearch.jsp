<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   import="java.sql.*" import ="javax.servlet.ServletContext" import="java.util.Base64"
    pageEncoding="ISO-8859-1"%>
 
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
</head>   
 <body>
   <div class="popup center">
         <div class="icon">
            <i class="fa fa-check" style="background-color:red;"></i>
         </div>
           <div class="title">
            success!!
           </div>
           <div class="description"><h6>
            Added to Cart successfully</h6>
           </div>
           <div class="dismiss-btn">
            <form action="viewOrder.jsp"><button id="dismiss-popup-btn">View Order</button></form>
           </div>
      </div>
 
    </body>
</html>
