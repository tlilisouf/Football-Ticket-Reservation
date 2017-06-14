<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="cdn.jsp" />

<title>home</title>
</head>
<body>
	<jsp:include page="Header.jsp" />

	<section class="container-fluid">
		<div class="row">

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner hidden-xs ">
					<div class="item  active">
						<spring:url value="/resources/images/stadium-wallpaper.jpg"
							var="stadiumWallpaper" />
						<img src="${stadiumWallpaper}" alt="stadium" />
					</div>
					<div class="item">
						<spring:url value="/resources/images/105577.jpg"
							var="FootballImage" />
						<img src="${FootballImage}" alt="Game-that-unites-people" />
					</div>

					<div class="item">
						<spring:url value="/resources/images/35.jpg" var="ComptetionImage" />
						<img src="${ComptetionImage}" alt="TeamTunisia" />
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<h2 class="text-center" id="msg"></h2>
		</div>
		<jsp:include page="InfoSite.jsp" />
		<jsp:include page="MostPopularTickets.jsp" />
		<jsp:include page="Footer.jsp" />
		<jsp:include page="CopyRight.jsp" />
	</section>


</body>
</html>
