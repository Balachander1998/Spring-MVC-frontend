 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Add Products</title>
 
</head>
<body>

<form :form id="ProductsForm" modelAttribute="addProduct">
 <fieldset>
 <legend>Add New Product </legend> 
 Product Name: <form : input  path="productName"/>
 
 <br>
 ItemCode: <form : input path="itemCode"/>
 
 <br>
 Product Cost:
 <form : input  path="productCost"/>
 
 <br>
 BrandName:
 <form : input  path="brandName"/>
 <br>
 
 Description:<div class="col-lg-10">
 <form : textarea  path="productDescription"/>
 <br>
 Quantity:
 <form : input  path="productId"/>
 
 </fieldset>
<input type="submit" class="btn btn-primary" value="Add">


</form : form>
</body>
</html>