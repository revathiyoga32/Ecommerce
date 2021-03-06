<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add products</title>
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet" />
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
label { 
display: inline-block; 
width: 100px; 
float: center; 
clear: center; 
}
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
				<li class="active"><a href="index1">Home</a></li>
				<li class="active"><a href="about">About us</a></li>
				<li class="active"><a href="contact">Contact Us</a></li>
				<li class="active"><a href="form">Product</a></li>
				<li class="active"><a href="supform">Supplier</a></li>
				<li class="active"><a href="ctform">Category</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="register">SignUp</a></li>
				<li class="active"><a href="login">login</a></li>
			</ul>
		</div>
	</div>
	</nav>
	
<center>
		<div style="color: teal; font-size: 30px">Add Product</div>
		<div>
		<form:form id="registerForm" commandName="prod" method="post" action="./addProduct">
			<div class="row">
				<div class="form-group col-md-12">
					<label for="name">Name</label>
					<form:input type="text" path="name" />
				</div>
				</div>
				<div class="row">
				<div class="form-group col-md-12">
					<form:label path="description">Material</form:label>
					<form:input type="text" path="description" />
				</div>
				</div>
				<div class="row">
				<div class="form-group col-md-12">
					<form:label path="price">Price</form:label>
					<form:input type="text" path="price" />
				</div>
				</div>
	             <div class="row">
				<div class="form-group col-md-12">
					<form:label path="categories">Category</form:label>
					<select>
					<option value=""></option>
					</select>
				</div>
				</div>
				 <div class="row">
				<div class="form-group col-md-12">
					<form:label path="categories">supplier</form:label>
					<select>
					<option value=""></option>
					</select>
				</div>
				</div>
	             <div class="text-center">
				 <input type="submit" class="btn btn-primary" value="Insert"/>
				 </div>	 
		<div class="text-center">
			For Product List <a href="hf">Click here</a>
		</div>	
	</form:form>
	</div>
	
	</center>
</body>
</html>