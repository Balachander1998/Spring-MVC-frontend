<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
 <link rel="stylesheet" type="text/css" media="screen" href="assets/bootstrap/bootstrap.min.css" />
 <link rel="stylesheet" type="text/css" media="screen" href="assets/css/product.css" />
 <title>Home Page</title>
</head>
<body>
	<%@include file="index.jsp"%>
	 <!--Slider-->
      <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators">
          <li data-target="#demo" data-slide-to="0" class="active"></li>
          <li data-target="#demo" data-slide-to="1"></li>
          <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        
        <!-- The slide show -->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img  class="caro-img"src="assets/images/carousel2.1.jpg" alt="Los Angeles" width="1100" height="500">
          </div>
          <div class="carousel-item">
            <img class="caro-img" src="assets/images/carousel2.2.jpg" alt="Chicago" width="1100" height="500">
          </div>
          <div class="carousel-item">
            <img class="caro-img" src="assets/images/carousel2.3.jpg" alt="New York" width="1100" height="500">
          </div>
        </div>
        
        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
          <span class="carousel-control-next-icon"></span>
        </a>
      </div>
	  
	  <!-- category -->
	  <form method="Post" action ="products">
        <select class="custom-select custom-select-sm mb-3" style ="width:30%">
          <option selected >Categories</option>
          <c:forEach items="${categories}" var="category">
          <option value="${category.categoryName}">${category.categoryName}</option>
          </c:forEach>
        </select>
        <button type="button" onclick="" class="btn btn-danger ">Apply Filter</button>
        </form>
      
	                    
	<!-- cards -->
   <section class="container">
      <div class="row">
       	<c:forEach items="${products}" var="product">  	
        <div class="col-sm-6 col-md-3">
           <div class ="card text-white bg-primary">
              <div class="card-body">
                 <div class="thumbnail">
                    <div class="caption">
                       <h3 class="card-title">${product.productName}</h3>
                       <h5 class="card-subtitle mb-2 text-muted">${product.brandName}</h5>
                         <p class="card-text"> Rs:-${product.productCost}</p>
                        <a href=" <spring:url value="product?itemCode=${product.itemCode}"/> " class="btn btn-primary card-link">
                           <i class="fa fa-exclamation-circle" aria-hidden="true"></i> Buy Now
                       </a><br><br>
                        <a href="#" class="card-link btn btn-success"> <i class="fa fa-cart-plus" aria-hidden="true"></i>Add to cart</a>
                       
                  </div>
               </div>
            </div>
          </div>    
       </div>
      </c:forEach>
    </div>
   </section>
      <br>
   <%@include file="footer.jsp" %>   
  
      
      
      
   
<script src="assets/bootstrap/jQuery.min.js"></script>      
<script src="assets/bootstrap/bootstrap.min.js"></script>

</body>
</html>
