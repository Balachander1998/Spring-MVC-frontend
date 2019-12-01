<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" media="screen" href="assets/bootstrap/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" media="screen" href="assets/css/index.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<meta charset="ISO-8859-1">
</head>
<body>
	<!--Navigation bar-->
	<!-- Toggle button for mobile view -->
    <nav class="navbar navbar-expand-sm bg-danger navbar-light">
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navp">
            <span class="navbar-toggler-icon"></span>
       </button>
       <!-- Logo for the Web-app -->
        <a class="navbar-brand" href="#">
            <img src="assets/images/logo.png" alt="E-Vision">
        </a>
       <!-- Navbar list of items -->
       <div class="collapse navbar-collapse" id="navp">
          <ul class="navbar-nav">
             <li class="nav-item">
                <a class="nav-link" href="#"><i class='fas fa-home'></i> Home</a> 
             </li>
             <li class="nav-item">
                <a class="nav-link" href="#"> <i class='fas fa-arrow-circle-right'></i> Login</a>
             </li>  
               <li class="nav-item">
            <a class="nav-link" href="#"> <i class='fas fa-registered'></i>  Register</a>
            </li>          
        </ul>
      </div>
    </nav>
    
    <!--Jumbotron-->
      <div class="jumbotron jumbotron-fluid">
        <div class="container">
          <h1 class="display-4">Electronic-Gamers</h1>
          <p class="lead"> Just Plug and play with our products.</p>
        </div>
      </div>

      
      <style>
      .nav-item{
    font-size: 20px;
}
.nav-link{
    color: cyan !important;
}
.name{
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
      
      </style>
<script src="assets/js/jQuery.min.js"></script>     
<script src="assets/bootstrap/bootstrap.min.js"></script>

</body>
</html>