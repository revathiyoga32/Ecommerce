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
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
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
body{
	background-color: #D4D8D1;
	background-size: cover;
	background-repeat: no-repeat;
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
				<li class="active"><a href="form"><span class="glyphicon glyphicon-pencil">Product</span></a></li>
				<li class="active"><a href="supform"><span class="glyphicon glyphicon-pencil">Supplier</span></a></li>
				<li class="active"><a href="ctform"><span class="glyphicon glyphicon-link">Category</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="memberShip"><span class="glyphicon glyphicon-user">SignUp</span></a></li>
				<li class="active"><a href="loginnew"><span class="glyphicon glyphicon-log-in">Login</span></a></li>
				<li class="active"><a href="cartform"><span class="glyphicon glyphicon-shopping-cart">cart</span></a></li>
			</ul>
			
		</div>
	</div>
	</nav>
	
	
	
<center>

		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm"  method="post"
			action="./addCart" commandName="car">
				
				<div class="col-sm-12 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="<c:url value="${prdList.pic}" />" alt=""  height="400" width="400"/>
								
							</div>
							

						</div>
						<div class="form-actions floatRight">
						<div class="col-sm-3">
							<div class="product-information"><!--/product-information-->
								
								<h2>Name:${prdList.name}</h2>
								<p>Id:${prdList.pid}</p><br>
								<span>
									Price:<i class="fa fa-rupee">${prdList.price}</i><br>
									
                                        <div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                        </div>
                                    <br>                                            
									
									<a class="btn btn-default add-to-cart" href="cartlist">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</a>
								</span>
								
							</div>
						</div>
					</div>
				</div>
				</div>
				</form:form>
	</center>
	
	</div>
	<script src="<c:url value='resources/js/jquery.js'/>"></script>
	<script src="<c:url value='resources/js/price-range.js'/>"></script>
    <script src="<c:url value='resources/js/jquery.scrollUp.min.js'/>"></script>
	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='resources/js/jquery.prettyPhoto.js'/>"></script>
    <script src="<c:url value='resources/js/main.js'/>"></script>
    
</body>
</html>