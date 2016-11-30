<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>TEXTILES</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>
	
	<style>
  body {
    background:url('resources/images/asians.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    }
    input[type=text], select {
    width: 100%;
    padding: 4px 4px;
    margin: 4px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
 input[type=password], select {
    width: 100%;
    padding: 4px 4px;
    margin: 4px 0;
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

    </style>
</head>

<body>


  <%@include file="header.jsp" %>
    <form:form action="./loginSubmit" name="submitForm" method="POST">
       <div class="col-md-3 col-md-offset-9">
       <h2 align="center">LOGIN</h2>
            <table>
                <tr>
                    <td>User Name </td>
                    <td><input type="text" name="userName" placeholder="username"/></td>
                </tr>
                <tr>
                    <td>Password </td>
                    <td><input type="password" name="password" placeholder="password" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="btn btn-success" type="submit" value="Submit" /></td>
                </tr>
            </table>
            <div style="color: red">${error}</div>
        </div>
    </form:form>
</body>
</html>