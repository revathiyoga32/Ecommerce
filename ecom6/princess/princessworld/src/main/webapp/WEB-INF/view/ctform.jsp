<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<li class="active"><a href="about"><span class="glyphicon glyphicon-certificate">About</span></a></li>
				<li class="active"><a href="contact"><span class="glyphicon glyphicon-phone">Contact</span></a></li>
				<li class="active"><a href="form"><span class="glyphicon glyphicon-pencil">Product</span></a></li>
				<li class="active"><a href="supform"><span class="glyphicon glyphicon-pencil">Supplier</span></a></li>
				<li class="active"><a href="ctform"><span class="glyphicon glyphicon-link">Category</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="memberShip"><span class="glyphicon glyphicon-user">SignUp</span></a></li>
				<li class="active"><a href="login"><span class="glyphicon glyphicon-log-in">Login</span></a></li>
				<li class="active"><a href="cartform"><span class="glyphicon glyphicon-shopping-cart">cart</span></a></li>
			</ul>
		</div>
	</div>
	</nav>
<center>
<div class="container">
  <div style="color: teal; font-size: 30px">Category Details</div>
  <form:form id="registerForm" commandName="categ" method="post" action="./addCategory">
   <div class="row">
            <div class="form-group col-md-12">
                <form:label path="ctname"> Name</form:label>
                    <form:input type="text" path="ctname" id="categoryName" class="form-control input-sm"/>
                </div>
            </div>
        
    <div class="row">
            <div class="text-center">
     <input type="submit" value="Insert" class="btn btn-success btn-sm"/>
    </div>
    </div>
  </form:form>
  <br>
  <div class="text-center">For Category List <a href="ctlist">Click here</a></div>
 </div>
 </center>
</body>
</html>
