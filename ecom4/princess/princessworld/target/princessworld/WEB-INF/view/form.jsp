<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
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
body {
	background: #D4D8D1;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
<script>
		var a = ${conv};
		angular.module('str', []).controller('PrincessWorldController', function($scope)
		{
		$scope.st=a;
		});
		</script>
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
		<div class="container">
		<form:form id="registerForm" commandName="prod" method="post" 
		action="./addProduct" enctype="multipart/form-data">
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
	
	</center>
	<img src="<c:url value="${pic}"/>" alt="image" height="100px" weight="100px" />

<center>

       <div class="container">
            <h2 class="text-center" style="color: #FFFFFF">Product List </h2>
            </br>
  <table id="example" class="table table-striped table-bordered" cellspacing="0" width="50%" >
          <thead>
     <tr style="background-color: #A8A8A1; color: white; text-align: center;">
      <th>Id</th>
     <th>Name</th>
     <th>Material</th>
     <th>Price</th>
     <th>Category</th>
     <th>Supplier</th>
     <th>Image</th>
     <th>Edit</th>
     <th>Delete</th>
     </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="user">
     <tr
      style="background-color:#f9f9f9 ;color: black; text-align: center;"
      height="30px">
      <tr ng-repeat="user in st | filter:test">
       <td>{{user.pid}}</td>
      <td>{{user.name}}</td>
      <td>{{user.description}}</td>
      <td>{{user.price}}</td>
      <td>{{user.ctname}}</td>
      <td>{{user.spname}}</td>
      
      <td><img src="<c:url value="${user.pic}"/>" alt="image" height="100px" weight="100px" /></td>
     
      <td><a href="edit?id=${user.pid}">Edit</a></td>
      <td><a href="deleteProduct?id=${user.pid}">Delete</a></td>
     </tr>
    </c:forEach> 
    </tbody>
    </table>
   
  
   </br>
       
        <div class="text-center" font-size:"10px">To insert new product <a href="form" class="">Click here</a></div>
  </div>
 </center>


</body>
</html>