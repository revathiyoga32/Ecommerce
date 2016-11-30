<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<title>Add products</title>
<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet" />

</head>
<style>
.effect .mask {
   opacity: 0;
   overflow:visible;
   border:10px solid rgba(0,0,0,0.7);
   box-sizing:border-box;
   transition: all 0.4s ease-in-out;
}
.effect:hover img {
   opacity:0.7;
   transform:scale(1,1);
}
.effect:hover .mask {
   opacity: 1;
   
   border:50px solid rgba(0,0,0,0);
}

body {
	background: #D4D8D1;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>

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
			          
						<h1 class="title text-center">Products</h1>
						<c:forEach items="${productList}" var="user">
		
			
									<div class="col-sm-4">
						
										<div class="effect">
										<a href="single?id=${user.pid}">
										<img src="<c:url value="${user.pic}" />" alt="" height="300" width="300"/>
										<i class="fa fa-link" >view details</i>
										
										</a>	
										
                                    <h2>${user.name}</h2>
                                    <i class="fa fa-rupee">${user.price}</i>
										<a href="cartlist" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									
									</div>
								</div>
			
						</c:forEach>
						</div>
						
						</center>
<script
	src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery-2.2.3.min.js'/>" /></script>
<script
	src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.js'/>" /></script>

<script src="<c:url value='https://code.jquery.com/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/modernizr.custom.js'/>"/></script>
<script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/toucheffects.js'/>"/></script>
               </body>
        </html>        