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

<title>Add carts</title>

<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet" />
<script
	src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery-2.2.3.min.js'/>" /></script>
<script
	src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.js'/>" /></script>

<script src="<c:url value='https://code.jquery.com/jquery.min.js'/>"></script>

<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
    <link href="<c:url value='resources/css/font-awesome.min.css'/>" rel="stylesheet"/>
    <link href="<c:url value='resources/css/prettyPhoto.css'/>" rel="stylesheet"/>
    <link href="<c:url value='resources/css/price-range.css'/>" rel="stylesheet"/>
    <link href="<c:url value='resources/css/animate.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/css/main.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/css/responsive.css'/>" rel="stylesheet"/>
<style type="text/css">

.btn-breadcrumb .btn:not(:last-child):after{
content: " ";
display: block;
  width: 0;
  height: 0;
  border-top: 17px solid transparent;
  border-bottom: 17px solid transparent;
  border-left: 10px solid white;
  position: absolute;
  top: 50%;
  margin-top: -17px;
  left: 100%;
  z-index: 3;
  
  }
  
  .btn-breadcrumb .btn:not(:last-child):before {
  content: " ";
  display: block;
  width: 0;
  height: 0;
  border-top: 17px solid transparent;
  border-bottom: 17px solid transparent;
  border-left: 10px solid rgb(173, 173, 173);
  position: absolute;
  top: 50%;
  margin-top: -17px;
  margin-left: 1px;
  left: 100%;
  z-index: 3;
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
	
	<div class="container">
    <div class="row">
        <div class="btn-group btn-breadcrumb">
            <a href="cartform" class="btn btn-default"><i class="glyphicon glyphicon-home">Home</i></a>
            <a href="single" class="btn btn-default">Cart</a>
            
        </div>
	</div>
	
<section>

		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm"  method="post"
			action="./updateProduct" commandName="prod">
				
				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="<c:url value="${prdList.pic}" />" alt=""  height="300" width="300"/>
								
							</div>
							

						</div>
						<div class="form-actions floatRight">
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								
								<h2>${prdList.name}</h2>
								<p>${prdList.pid}</p>
								<span>
									<span>${prdList.price}</span>
									<label>Quantity:</label>
									<input type="text" value="3" />
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
								</span>
								
							</div>
						</div>
					</div>
				</div>
				</div>
				</form:form>
	</section>
	
	</div>
	<script src="<c:url value='resources/js/jquery.js'/>"></script>
	<script src="<c:url value='resources/js/price-range.js'/>"></script>
    <script src="<c:url value='resources/js/jquery.scrollUp.min.js'/>"></script>
	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='resources/js/jquery.prettyPhoto.js'/>"></script>
    <script src="<c:url value='resources/js/main.js'/>"></script>
    
</body>
</html>