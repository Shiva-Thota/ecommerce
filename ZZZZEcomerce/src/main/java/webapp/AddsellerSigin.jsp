<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerHomePage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller Sigin</title>
<link href="css/bootstrap.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
            <!-- LINK TO STYLESHEET  --> 
           <!--  FONTAWESOME LINK  -->
         <!--  JQUERY LINK  -->    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
 <script>
     var check = function() {
                    if (document.getElementById('password').value ==
                      document.getElementById('confirm_password').value) {
                      document.getElementById('message').style.color = 'green';
                      document.getElementById('message').innerHTML = 'Matched';
                      
                    } else {
                      document.getElementById('message').style.color = 'red';
                      document.getElementById('message').innerHTML = 'Not Matched';
                      
                    }
                  }
     function myFunction(){
    	if (document.getElementById('password').value !=
            document.getElementById('confirm_password').value) {
    		alert("Password and Confirm Password fields do not match.");
    	    return false;
            
          }
    }
     
   </script> 
<body>
        <div class="card" style="width:300px; text-align: center;margin-left: 600px;"  > 
            <div class="card-body logincard">
                <h4 class="card-header header2">Seller SIGN UP</h4>
                    <div class="card-text">
                        <form action="addseller" method="Post" onsubmit="return myFunction()">
                         <ul class="list-group list-group-flush">
                        <li class="list-group-item"><b style="float: left;">Username :</b><input id="input1" name="name" type="text" placeholder="USERNAME" required style="width:100%;border:none;"></li>                          
                        <li class="list-group-item"><b style="float: left;">Enter GSTIN :</b><input id="input1" name="GSTNo" type="text" placeholder="Enter GSTIN" required style="width:100%;border:none;"></li>                          
                        <li class="list-group-item"><b style="float: left;">Company Name :</b><input id="input1" name="companyName" type="text" placeholder="Company Name"  required style="width:100%;border:none;"></li>                                                  
                        <li class="list-group-item"><b style="float: left;">Ph.no. :</b><input  type="text" name="phoneNumber" placeholder="CONTACT NUMBER" required style="width:100%;border:none;"></li>
                        <li class="list-group-item"><b style="float: left;">Address :</b><textarea name="address"  placeholder="ADDRESS"  required style="width:100%;border:none;"></textarea></li>
                        <li class="list-group-item"><b style="float: left;">Additional Details :</b><textarea name="additionalDetails"   placeholder="Additional Details" required style="width:100%;border:none;"></textarea></li>                        
                        <li class="list-group-item"><b style="float: left;">Password :</b><input id="password" name="pasword" required onkeyup='check();' type="password" placeholder="PASSWORD"style="width:100%;border:none;"></li>
                        <li class="list-group-item"><b style="float: left;"> Confirm Password :</b><input id="confirm_password" required onkeyup='check();' type="password" placeholder="PASSWORD"style="width:100%;border:none;"></li>
                            </ul>
                    </div> 
                    <div id="message" style="float:left"></div>
                    
	                    
                    <button  class="btn btn-success" style="float:right">SIGN UP</button></a>
                    
                   </form>
                </div>
            </div>
           <br><br>
    </body>
</html>
<%@ include file="footerHomePage.jsp" %>