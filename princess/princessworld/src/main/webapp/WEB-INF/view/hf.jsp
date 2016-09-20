<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Details</title>
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>
<style>
.generic-container {
  position:fixed;
  width:75%;
  margin-left: 200px;
  margin-top: 20px;
  margin-bottom: 20px;
  padding: 20px;
  background-color: #67655D;
  border: 15px solid #ddd;
  border-radius: 10px;
  
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

       <div class="generic-container">
            <h2 class="text-center" style="color: #FFFFFF">Product List </h2>
            </br>
  <table id="example" class="table table-striped table-bordered" cellspacing="0" width="50%" >
     <thead>
     <tr style="background-color: #AA9A66; color: white; text-align: center;">
      <th>Id</th>
     <th>Name</th>
     <th>Material</th>
     <th>Price</th>
     <th>Edit</th>
     <th>Delete</th>
     </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="user">
     <tr
      style="background-color:#f9f9f9 ;color: black; text-align: center;"
      height="30px">
       <td>${user.pid}</td>
      <td>${user.name}</td>
      <td>${user.description}</td>
      <td>${user.price}</td>
     
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