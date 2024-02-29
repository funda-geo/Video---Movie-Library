<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
    <input type=hidden id="status" value="<%= request.getAttribute("status")%>">
  <h1>Sign Up</h1>
  <div class="container">
    <h2><img src="logo12.jpg" alt="My Image" width="140px" height="70px"  > </h2>
    <form method="post" action="register" class="register-form" id="register-form">
      
      <label for="name">Name</label>
      <input type="text" name="name" id="name" placeholder="Name">
          
      <label for="email">Email</label>
      <input type="email" name="email" id="email" placeholder="Enter Email">

      <label for="pass">Password</label>
      <input type="password" name="pass" id="pass" placeholder="Enter Password">
          
      <label for="repass">Confirm Password</label>
      <input type="password" name="repass" id="repass" placeholder="Enter Password">
      
        <input type="hidden"  name="signup" id="signup" class="form-submit" value="Register">
        <button type="submit">Sign In</button>
        </input>  
        </form>
        
  </div>
  <a class="locatie" href="index.jsp" style="text-decoration:none; "><button1 type="submit" style="margin-left:860px; position:relative;">Go back to Log In!</button1></a> 
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    
    <script type="text/javascript"> 
        var status=document.getElementById("status").value;
        if(status == "success"){
            swal("Account Created!","Welcome!","success")
        }
        else if(status=="empty"){
            swal("Please fill in every detail!","Try Again!","error");
        }
    </script>
    
</body>
</html>

