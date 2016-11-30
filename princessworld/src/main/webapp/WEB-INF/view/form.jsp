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
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet" />

</head>
<style>
input[type=text], select {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=file], select {
    width: 20%;
    padding: 10px 20px;
    margin: 8px 0;
    display: inline-block;
    
    
}
label { 
display: inline-block; 
width: 100px; 
float: center; 
clear: center; 
}

body{
	background-color: #D4D8D1;
	background-size: cover;
	background-repeat: no-repeat;
}
.err{
color: red;
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
				
				<li class="active"><a href="supform"><span class="glyphicon glyphicon-pencil">Supplier</span></a></li>
				<li class="active"><a href="ctform"><span class="glyphicon glyphicon-link">Category</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			<li class="active"><a href="login">SignIn</a></li>
				<li class="active"><a href="memberShip"><span class="glyphicon glyphicon-user">SignUp</span></a></li>
				<li class="active"><a href="loginnew"><span class="glyphicon glyphicon-log-in">Admin</span></a></li>
				<li class="active"><a href="edu"><span class="glyphicon glyphicon-shopping-cart">cart</span></a></li>
			</ul>
			
		</div>
	</div>
	</nav>	

<center>
		<div style="color: teal; font-size: 30px">Add Product</div>
		<div class="container">
		<form:form id="registerForm" commandName="prod" method="post" 
		action="./addProduct" enctype="multipart/form-data">
			<div class="row">
				<div class="form-group col-md-12">
				
					<label for="name">Name</label>
					<form:input type="text" path="name" />
					<div class="container">
					<form:errors path="name" class="err" />
					</div>
				</div>
				</div>
				<div class="row">
				<div class="form-group col-md-12">
					<form:label path="description">Material</form:label>
					<form:input type="text" path="description" />
					<div class="container">
					<form:errors path="description" class="err" />
					</div>
				</div>
				</div>
				<div class="row">
				<div class="form-group col-md-12">
					<form:label path="price">Price</form:label>
					
					<form:input  type="text" path="price" />
					<div class="container">
					<form:errors path="price" class="err" />
					</div>
				</div>
				</div>
	              <div class="row">
				  <div class="form-group col-md-12">
					<label>Category</label>
					<form:select path="ctname" cssstyle="width: 100px;">
					<option value="-1">Select</option>
					<c:forEach items="${lst}" var="category">
					<option value="${category.ctname}">${category.ctname}</option>
					</c:forEach>
					</form:select>
					</div>
					</div>
				 <div class="row">
				  <div class="form-group col-md-12">
					<label>Supplier</label>
					<form:select path="spname" cssstyle="width: 100px;">
					<option value="-1">Select</option>
					<c:forEach items="${lstsp}" var="supplier">
					<option value="${supplier.spname}">${supplier.spname}</option>
					</c:forEach>
					</form:select>
					</div>
					</div>
					<div class="row">
				  <div class="form-group col-md-12">
					<label>Image</label>
					<input name="file" id="fileup" type="file"/>
    </div>
    </div>
    <div class="row">
    <div class="form-group col-md-12">
    <form:hidden path="pic" value="${pic}"/>
    </div>
    </div>
					
	             <div class="text-center">
				 <input type="submit" class="btn btn-primary" value="Insert"/>
				 </div>	
				 <br> 
		<div class="text-center">
			For Product List <a href="hf">Click here</a>
			</div>
	</form:form>
	</div>
	
	<img src="<c:url value="${pic}"/>" alt="image" height="100px" weight="100px" />

</center>

</body>
</html>