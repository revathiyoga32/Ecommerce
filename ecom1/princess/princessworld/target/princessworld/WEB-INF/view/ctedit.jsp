<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category details</title>
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
    <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand">Princess World</a>
    </div>
<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index1">Home</a></li>
        <li><a href="about">About us</a></li>
        <li><a href="contact">Contact Us</a></li>
        <li><a href="form">Form</a></li>
      </ul>
    <ul class="nav navbar-nav navbar-right">
      <li  class="active"><a href="form">SignUp</a></li>
      <li><a href="login">login</a></li>
     </ul>
     </div>
     </div>
</nav>
<center>
<div class="container">
<div style="color:teal; font-size: 30px">Edit Category</div>
</br>
		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm"  method="post" action="./updateCategory" commandName="categ">
			<div class="row">
            <div class="form-group col-md-12">
                <label for="Id">Id</label>              
                    <form:input type="text" path="catid" value="${catList.catid}"  readonly="true" class="form-control input-sm"/>
                </div>
            </div>
			<div class="row">
            <div class="form-group col-md-12">
                <label  for="name">Name</label>
                    <form:input type="text" path="ctname" value="${catList.ctname}" class="form-control input-sm"/>
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