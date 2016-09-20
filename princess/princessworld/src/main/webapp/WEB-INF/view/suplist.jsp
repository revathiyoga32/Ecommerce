<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>supplier details</title>
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>
<style>
.generic-container {
  position:fixed;
  width:55%;
  margin-left: 300px;
  margin-top: 20px;
  margin-bottom: 20px;
  padding: 20px;
  background-color: #EAE7E7;
  border: 1px solid #ddd;
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

<div class="generic-container">
        <div class="panel panel-default">
            <div class="panel-heading"><span class="lead">List of Supplier </span></div>
<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th> Id </th>
                <th>Name</th>
                <th>place</th>
                <th>Mobile</th>
                <th>Age</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${supplierList}" var="supplier">
     <tr>
       <td>${supplier.spid}</td>
      <td>${supplier.spname}</td>
      <td>${supplier.splace}</td>
      <td>${supplier.spmobile}</td>
      <td>${supplier.spAge}</td>
     
      <td><a href="supedit?id=${supplier.spid}">Edit</a></td>
      <td><a href="deleteSupplier?id=${supplier.spid}">Delete</a></td>
     </tr>
    </c:forEach> 
    <tbody>
   </table>
   </div>
            <div class="container" >For supplier details <a href="supform">Click here</a></div>
        </div>
    </div>       
</body>
</html>