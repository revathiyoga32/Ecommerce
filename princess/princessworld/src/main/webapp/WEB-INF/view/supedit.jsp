<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
.generic-container {
  position:fixed;
  width:55%;
  margin-left: 300px;
  margin-top: 20px;
  margin-bottom: 20px;
  padding: 20px;
  background-color: #EAE7E7;
  border: 1px solid #ddd;
  border-radius: 7px;
  
}
.well
{
  width:100%;
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
<div style="color:teal; font-size: 30px">Edit Supplier</div>
</br>
		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm"  method="post" action="./updateSupplier" commandName="suppli">
			<div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="Id">Id</label>
                <div class="col-md-7">
                    <form:input type="text" path="spid" value="${spList.spid}"  readonly="true" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
			<div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name">Name</label>
                <div class="col-md-7">
                    <form:input type="text" path="spname" value="${spList.spname}" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
       	    <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name">Place</label>
                <div class="col-md-7">
                    <form:input type="text" path="splace" value="${spList.splace}" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
			
			<div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name">Mobile</label>
                <div class="col-md-7">
                    <form:input type="text" path="spmobile" value="${spList.spmobile}" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
       	    
       	    <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name">Age</label>
                <div class="col-md-7">
                    <form:input type="text" path="spAge" value="${spList.spAge}" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
			  <div class="row">
            <div class="text-center">
     <input type="submit" value="Update" class="btn btn-primary btn-sm"/>
    </div>
    </div>
   
  </form:form>
  </div>
</body>
</html>