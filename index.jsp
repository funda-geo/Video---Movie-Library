<%-- 
    Document   : index
    Created on : May 4, 2023, 9:35:29 PM
    Author     : Geutzu
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign In</title>
  <link rel="stylesheet" href="styke.css">
  <div class="logo">
<img src="logo12.jpg" alt="My Image" width="140px" height="70px"  > 
</div>
  
</head>
<body>
    <input type=hidden id="status" value="<%= request.getAttribute("status")%>">
    <div class="login" style: align="center">
     <h1>Login</h1>
    </div>
  <div class="container">
    <form method="post" action="login" class="register-form" id="login-form">
        <h2>Do you have an account?</h2>
      <label for="email">Email</label>
      <input type="email" name="email" id="email" placeholder="Enter Email">

      <label for="password">Password</label>
      <input type="password" name="password" id="password" placeholder="Enter Password">
      
        <input type="hidden"  name="signin" id="signin" class="form-submit" value="Log in">
        <button type="submit">Sign In</button>
        </input>
        </form>
         
         <h3>Dont have an account?</h3>
         <form action="Controller" method="post">
         <input type="hidden" name="destinatie1" value="password.jsp">
             <a class="locatie" href="signup.jsp"><button3 type="submit">Create one!</button3></a>     
         </input>
         </form>
        </div>
     <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    
    <script type="text/javascript">
        
        var status=document.getElementById("status").value;
        if(status == "failed"){
            swal("Account not found!","Wrong Username or Password","error");
        }
    </script>
</body>
</html>


