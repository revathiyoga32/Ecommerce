<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title> Register </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery-2.2.3.min.js'/>"/></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"/></script> 
 <style>
  body {
    background:url('resources/images/tour.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    }
    
    .form- control{
    background:transparent;
    }
    .form-control { margin-bottom: 10px; }
    </style> 
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm">
        <div class="account-wall">
            <legend>Creat an account</legend>
            <form action="#" method="post" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                
                    <input class="form-control" name="firstname" placeholder="First Name" type="text"
                        required autofocus />
                </div>
               
           
            <div class="col-xs-6 col-md-6">
            <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('name')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
            <input class="form-control" name="youremail" placeholder="Your Email" type="email" />
             </div>
             <div class="col-xs-6 col-md-6">
             <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailid')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
            <input class="form-control" name="password" placeholder="New Password" type="password" />
            </div>
            
           <div class="col-xs-6 col-md-6">
           <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
            <input class="form-control" name="mobile number" placeholder="mobile number" type="mobile number" /> 
            </div>
            <div class="col-xs-6 col-md-6">
            <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
            <input class="form-control" name="address" placeholder="address" type="address" />  
            </div>
            <div class="col-xs-6 col-md-6">
            <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					</div>
            <br />
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
            </form>
        </div>
        </div>
        </div>
        </div>
        </body>
        <%@include file="footer.jsp" %>
        </html>