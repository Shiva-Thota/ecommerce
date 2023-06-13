<!DOCTYPE html>
<html lang="en">
<%@ include file="headerHomePage.jsp" %>
    <head>
        <meta charset="UTF-8">
        <title>SIGN IN</title>
             <!--  BOOTSTRAP5 --> 
 <link href="css/bootstrap.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
            <!-- LINK TO STYLESHEET  --> 
           <!--  FONTAWESOME LINK  -->
         <!--  JQUERY LINK  -->    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
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
<style>
</style>
</head>
    <body>
        <div class="card" style="width:300px; text-align: center;margin-left: 600px;" >
            <div class="card-body logincard">
                <h4 class="card-header header2">SIGN UP</h4>
                    <div class="card-text">
                        <form action="AddCustomerdetails" method="Post" onsubmit="return myFunction()">
<ul class="list-group list-group-flush">
                        <li class="list-group-item"><b style="float: left;">Username :</b><input id="input1" name="name" required type="text" placeholder="USERNAME" style="width:100%;border:none;"></li>                          
                        <li class="list-group-item"><b style="float: left;">Gender :</b>           
                           <input type="radio" id="male" name="gender" value="male">
                                        <label for="male">male</label><br>
                           <input type="radio" id="female" name="gender" value="female">
                                            <label for="female">female</label><br>
                           <input type="radio" id="others" name="gender" value="others">
                                        <label for="others">others</label>
                        </li>
                        <li class="list-group-item"><b style="float: left;">Ph.no. :</b><input  type="text" name="phoneNumber" required placeholder="CONTACT NUMBER" style="width:100%;border:none;"></li>
                        <li class="list-group-item"><b style="float: left;">Address :</b><textarea name="address" required placeholder="ADDRESS"style="width:100%;border:none;"></textarea></li>
                        <li class="list-group-item"><b style="float: left;">Password :</b><input id="password" name="pasword" required onkeyup='check();' type="password" placeholder="PASSWORD"style="width:100%;border:none;"></li>
                        <li class="list-group-item"><b style="float: left;"> Confirm Password :</b><input id="confirm_password"  onkeyup='check();' type="password" placeholder="PASSWORD"style="width:100%;border:none;"></li>
                            </ul>                    </div>
                    <div id="message" style="float:left"></div> 
                    <button  class="btn btn-success"  id="signin" style="float:right">SIGN UP</button></a>
                   </form>
                </div>
            </div>
    </body>
����</html>
<%@ include file="footerHomePage.jsp" %>
