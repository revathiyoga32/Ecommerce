<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>TEXTILES</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>
  <link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/index.css'/>" rel="stylesheet"/>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery-2.2.3.min.js'/>"/></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.js'/>"/></script>
  </head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand">Princess World</a>
    </div>
<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index1">Home</a></li>
        <li><a href="about">About us</a></li>
        <li><a href="contact">Contact Us</a></li>
      </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register">SignUp</a></li>
      <li><a href="login">login</a></li>
     </ul>
     </div>
     </div>
</nav>
  <div id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
       <div class="fill"> 
        <img src="<c:url value='/resources/images/dress.jpg'/>" class="center-block" alt="fashion" width="955" height="348">
        <div class="carousel-caption">
        </div>
      </div>
      </div>

      <div class="item">
      <div class="fill"> 
        <img src="<c:url value='/resources/images/choli.jpg'/>" class="center-block" alt="fashion" width="955" height="348">
        <div class="carousel-caption">
        </div>
      </div>
      </div>
    
      <div class="item">
      <div class="fill"> 
        <img src="<c:url value='/resources/images/wed.jpg'/>" class="center-block" alt="Fashion" width="955" height="348">
        <div class="carousel-caption">
        </div>
      </div>
</div>

      <div class="item">
      <div class="fill"> 
        <img src="<c:url value='/resources/images/girl.jpg'/>" class="center-block" alt="fashion" width="955" height="348">
        <div class="carousel-caption">
        </div>
      </div>
</div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="icon-prev">
       </span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="icon-next">
      </span>
    </a>
</div>
<br/>
<br/> 
<div class="container">
<div class="row category-section feed-section"> 
    <div class="col-sm-4">
    <img class="img-rounded pull-xs-left" src="<c:url value='/resources/images/photo.001.jpg'/>" width="300" height="300">
    </div>
   <div class="col-sm-4">  
   <img class="img-rounded pull-xs-center" src="<c:url value='/resources/images/sweet.jpg'/>" width="300" height="300">
   </div>
   <div class="col-sm-4">
  <img class="img-rounded pull-xs-right" src="<c:url value='/resources/images/Sarees.jpg'/>" width="300" height="300">
   </div>
</div>
</div>
<script>
    $('.carousel').carousel({
       interval:2000
})
</script>
<footer class="navbar-default">
 <div class="container">
   <h3 class="text-center">Princess World</h3>
   <p class="text-center">@2016 Princess World Inc.ALL RIGHTS RESERVED</p>
 </div>
</footer>
    </body>
</html>

