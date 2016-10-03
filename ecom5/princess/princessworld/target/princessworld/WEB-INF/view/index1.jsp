<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TEXTILES</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>"
	rel="stylesheet" />
<script
	src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery-2.2.3.min.js'/>" /></script>
<script
	src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.js'/>" /></script>
<style>
body{
	background: #332C2F;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
    <%@include file="header.jsp" %>
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
					<img src="<c:url value='/resources/images/dress.jpg'/>"
						class="center-block" alt="fashion" width="1200" height="348">
					<div class="carousel-caption"></div>
				</div>
			</div>

			<div class="item">
				<div class="fill">
					<img src="<c:url value='/resources/images/choli.jpg'/>"
						class="center-block" alt="fashion" width="1200" height="348">
					<div class="carousel-caption"></div>
				</div>
			</div>

			<div class="item">
				<div class="fill">
					<img src="<c:url value='/resources/images/wed.jpg'/>"
						class="center-block" alt="Fashion" width="1200" height="348">
					<div class="carousel-caption"></div>
				</div>
			</div>

			<div class="item">
				<div class="fill">
					<img src="<c:url value='/resources/images/girl.jpg'/>"
						class="center-block" alt="fashion" width="1200" height="348">
					<div class="carousel-caption"></div>
				</div>
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="icon-prev"> </span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span class="icon-next"> </span>
		</a>
	</div>
	<br />
	<div class="container">
		<div class="row category-section feed-section">
			<div class="col-sm-4">
				<img class="img-rounded pull-xs-left"
					src="<c:url value='/resources/images/bty.jpg'/>" width="300"
					height="300">
			</div>
			<div class="col-sm-4">
				<img class="img-rounded pull-xs-center"
					src="<c:url value='/resources/images/photo.001.jpg'/>" width="300"
					height="300">
			</div>
			<div class="col-sm-4">
				<img class="img-rounded pull-xs-right"
					src="<c:url value='/resources/images/set.jpg'/>" width="300"
					height="300">
			</div>
		</div>
	</div>
	<script>
		$('.carousel').carousel({
			interval : 2000
		})
	</script>

	<footer class="navbar-default">
	<div class="container">
		<p class="text-center">@2016 Princess World Inc.ALL RIGHTS
			RESERVED</p>
	</div>
	</footer>
</body>
</html>

