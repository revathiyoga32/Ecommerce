<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<title>User Details</title>
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>
<script>
		var a = ${conv};
		angular.module('str', []).controller('PrincessWorldController', function($scope)
		{
		$scope.st=a;
		});
		</script>
</head>		

<style>

body {
	background: #D4D8D1;
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
     <div ng-app="str" ng-controller="PrincessWorldController">
       <div class="container">
            <h2 class="text-center" style="color: #FFFFFF">Product List </h2>
            </br>
  <table id="example" class="table table-striped table-bordered" cellspacing="0" width="50%" >
          
     <tr style="background-color:#67655D ; color: white; text-align: center;">
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
   
    <tbody>
    
     
      <tr ng-repeat="user in st | filter:test" style="background-color:#f9f9f9 ;color: black; text-align: center;"
      height="30px">
       <td>{{user.pid}}</td>
      <td>{{user.name}}</td>
      <td>{{user.description}}</td>
      <td>{{user.price}}</td>
      <td>{{user.ctname}}</td>
      <td>{{user.spname}}</td>
      <c:forEach items="{{productList}}" var="user">
       <td><img ng-src="<c:url value="{{user.pic}}" />"alt="image" height="100px" weight="100px" /></td>
      </c:forEach>
     
      <td><a href="edit?id={{user.pid}}">Edit</a></td>
      <td><a href="deleteProduct?id={{user.pid}}">Delete</a></td>
     </tr>
    
    </tbody>
    </table>
   
  
   </br>
       
        <div class="text-center" font-size:"10px">To insert new product <a href="form" class="">Click here</a></div>
  </div>
  </div>
 </center>
 
</body>
</html>