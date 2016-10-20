<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>
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
			<li class="active"><a>Princess World</a></li>
				<li class="active"><a href="index1"><span class="glyphicon glyphicon-home">Home</span></a></li>
				<li class="active"><a href="about">About us</a></li>
				<li class="active"><a href="contact">Contact Us</a></li>
				<li class="active"><a href="form"><span class="glyphicon glyphicon-pencil">Product</span></a></li>
				<li class="active"><a href="supform"><span class="glyphicon glyphicon-pencil">Supplier</span></a></li>
				<li class="active"><a href="ctform"><span class="glyphicon glyphicon-pencil">Category</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="register">SignUp</a></li>
				<li class="active"><a href="login">login</a></li>
				<li class="active"><a href="cartform"><span class="glyphicon glyphicon-shopping-cart">cart</span></a></li>
			</ul>
		</div>
	</div>
	</nav>
<center>
<div style="color:teal; font-size: 30px">Edit Supplier</div>
<div>
		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm"  method="post" action="./updateSupplier" commandName="suppl">
			<div class="row">
            <div class="form-group col-md-12">
                <label for="Id">Id</label>
                    <form:input type="text" path="spid" value="${supList.spid}"  readonly="true" />
                </div>
            </div>
       	    
			<div class="row">
            <div class="form-group col-md-12">
                <label for="name">Name</label>
                    <form:input type="text" path="spname" value="${supList.spname}" />
                </div>
            </div>
       	    
       	    <div class="row">
            <div class="form-group col-md-12">
                <label>Place</label>
                    <form:input type="text" path="splace" value="${supList.splace}" />
                </div>
            </div>
            <div class="row">
            <div class="form-group col-md-12">
                <label>Mobile</label>
                    <form:input type="text" path="spmobile" value="${supList.spmobile}" />
                </div>
            </div>
       	    
       	    <div class="row">
            <div class="form-group col-md-12">
                <label>Age</label>
                    <form:input type="text" path="spage" value="${supList.spage}" />
                </div>
            </div>
       	    
			  <div class="row">
            <div class="text-center">
     <input type="submit" value="Update" class="btn btn-primary btn-sm"/>
    </div>
    </div>
   
  </form:form>
  </div>
  </center>
</body>
</html>