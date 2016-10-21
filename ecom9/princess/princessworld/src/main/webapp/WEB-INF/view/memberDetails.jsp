<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Register</title>
		<link href="resources/bootstrap-3.3.6-dist/css/style.css" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
  
	</head>
 <style>
body{
background-image:url('resources/images/eng.jpg');
background-repeat:no-reprat;
background-size:cover;
}

</style>
 
	<body>
	<center>
		<div class="container-fluid">
		 <div class="row">
		  <div class="col-md-3 col-md-offset-3">
			<fieldset>
				<!-- <legend>Become Member</legend>
		 -->		<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				 
				  <div class="form-group">
				  
				<%-- <a href="${flowExecutionUrl}&_eventId_home">NEW USER</a> --%>
				<sf:form modelAttribute="userBean"><br />
					<sf:label  path="name">UserName</sf:label>
					<div class="input-group">
					<sf:input path="name" class="form-control" placeholder="username"/>
					</div>
				
					
					</div>
					
					<!-- to display validation messages -->
						<div class="container-fluid">
					<div class="row">
					
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('name')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="emailid">Email Id </sf:label>
					<div class="input-group">
					<sf:input path="emailid" class="form-control" placeholder="email id" />
					</div>
					</div>
					</div>
					</div>
					
					
					
					<div class="container-fluid">
					<div class="row">
			
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailid')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="password">Password </sf:label>
					<div class="input-group">
					<sf:input path="password" type="password" class="form-control" placeholder="password"/>
					</div>
					</div>
					</div>
					</div>
					<div class="container-fluid">
					<div class="row">
					
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="address">Address </sf:label>
					<div class="input-group">
					<sf:input path="address" class="form-control" placeholder="address" />
					</div>
					</div>
					</div>
					</div>
					
					<div class="container-fluid">
					<div class="row">
					
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="mobile">Mobile Number </sf:label>
					<div class="input-group">
      					<sf:input  path="mobile" class="form-control" placeholder="mobile number" />
      					</div>
					</div>
					</div>
					</div>
					
					
					<!-- <div class="container-fluid">
					<div class="row">
					<div class="col-lg-6">
				  <div class="form-group"> -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_submit" type="submit" value="Register" /><br />
				</sf:form>
				</div>
			</fieldset>
			</div>
		</div>
	
	
		</center>
	</body>
</html>