<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<title>Add products</title>
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet" />

<style>

body {
	background: #D4D8D1;
	background-size: cover;
	background-repeat: no-repeat;
}

</style>
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"> <img
				src="<c:url value='resources/images/logo-princess.jpg'/>" style="
				max-width: 100px; height: 30px"/></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
			<li class="active"><a>Princess World</a></li>
				<li class="active"><a href="index1"><span class="glyphicon glyphicon-home">Home</span></a></li>
				<li class="active"><a href="about"><span class="glyphicon glyphicon-certificate">About</span></a></li>
				<li class="active"><a href="contact"><span class="glyphicon glyphicon-phone">Contact</span></a></li>
				<li class="active"><a href="form"><span class="glyphicon glyphicon-pencil">Product</span></a></li>
				<li class="active"><a href="supform"><span class="glyphicon glyphicon-pencil">Supplier</span></a></li>
				<li class="active"><a href="ctform"><span class="glyphicon glyphicon-link">Category</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="memberShip"><span class="glyphicon glyphicon-user">SignUp</span></a></li>
				<li class="active"><a href="loginnew"><span class="glyphicon glyphicon-log-in">Login</span></a></li>
				<li class="active"><a href="cartform"><span class="glyphicon glyphicon-shopping-cart">cart</span></a></li>
			</ul>
			
		</div>
	</div>
	</nav>
	<center>
	<div class="container">
			
<div class="breadcrumbs">
				
<ol class="breadcrumb">
				  
<li><a href="#">Home</a></li>
				  
<li class="active">Shopping Cart</li>
				
</ol>
			
</div>
	<%--    <c:if test="${!empty productList}">  --%>		
<div class="container">
	<table id="example" class="table table-striped table-bordered" cellspacing="0" width="50%" >			

<tr style="background-color:#67655D ; color: black; text-align: center;">
					
						
							<th>Cart No</th>
								
							<th>Product No</th>
							<th>Product Name</th>
							
							<th>Price</th>
							<th>Remove</th>
						</tr>
					<tbody>
				
    
    <c:forEach items="${cartList}" var="product">
     <tr>
     	<td>${product.cartid}</td>
       <td>${product.pid}</td>
      <td>${product.name}</td>
      <td>${product.price}</td>
     </tr>
    </c:forEach> 
    </tbody>	
						
									
</table>
</div>
</div>
<%--    </c:if>  --%>
</center>

</body>
</html>