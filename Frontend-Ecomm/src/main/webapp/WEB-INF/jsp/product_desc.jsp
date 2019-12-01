<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" type="text/css" media="screen" href="assets/bootstrap/bootstrap.min.css" />
 <link rel="stylesheet" href="assets/css/productdesc.css">
<title>Product Description ${product.productName}</title>
</head>
<body>
<div class="product  border">
    <img src="assets/images/${product.itemCode}.PNG" alt="graphics card" class="card-img-top">
     <h1>${product.productName}</h1>
      <h3>${product.brandName}</h3>
      <p>${product.productDescription}</p>

    <a href="#" class="btn btn-danger">Rs:-${product.productCost}</a>
    <a href="#" class="btn btn-secondary">Cart</a>

    </div>

</body>
</html>