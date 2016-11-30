<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin</title>
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/style.css'/>" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		  <link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet">
		  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<head>


  <title>Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
    background:url('resources/images/wedding.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    height: 100px;
    width: 100%;
    }
    </style> 
  
</head>

<body>
<%@include file="header.jsp" %>
<center>
<h2>Admin</h2></center>
<div class="container">
  
  <br>
<br>
<br>
<br>
<br>
  

  
  <button type="button" class="btn btn-primary "><a href="form" style="color:white;">Add Product</a></button>
<br></br>

   <button type="button" class="btn btn-primary "><a href="supform" style="color:white;">Add Supplier</a></button>
<br>
  
</br>
  
 <button type="button" class="btn btn-primary "><a href="ctform" style="color:white;">Add Category</a></button>
 
<br>  

  

  
  
  
</div>

</body>
</html>

    