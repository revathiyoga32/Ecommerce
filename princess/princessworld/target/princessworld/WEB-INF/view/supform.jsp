<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Details</title>
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>
<style>
.modal-container {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.has-error{
    color:red;
}
.form-group
{
  width:70%;
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
<div class="modal-container">
<div style="color:teal;font-size: 30px">Supplier Details</div>
</br>
  <form:form id="registerForm" commandName="suppli" method="post"
   action="./addSupplier">
   <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name"> Name</label>
                <div class="col-md-7">
                    <form:input type="text" path="spname" id="supplierName" class="form-control input-sm"/>
                </div>
            </div>
        </div>
   
<div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name"> Place</label>
                <div class="col-md-7">
                    <form:input type="text" path="splace" id="supplierPlace" class="form-control input-sm"/>
                </div>
            </div>
        </div>
       <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name"> Mobile</label>
                <div class="col-md-7">
                    <form:input type="text" path="spmobile" id="supplierMobile" class="form-control input-sm"/>
                </div>
            </div>
        </div> 
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name"> Age</label>
                <div class="col-md-7">
                    <form:input type="text" path="spAge" id="supplierAge" class="form-control input-sm"/>
                </div>
            </div>
        </div> 
      <div class="row">
            <div class="text-center">
     <input type="submit" value="Insert" class="btn btn-success btn-sm"/>
    </div>
    </div>
  </form:form>
  <div class="container">For supplier List <a href="suplist">Click here</a></div>
  </div>
</div>
</body>
</html>
</body>
</html>