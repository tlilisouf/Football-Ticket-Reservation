<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

<head>
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapcss" />


<spring:url value="/resources/css/navbar.css" var="navbar" />

<spring:url value="/resources/css/main.css" var="main" />

<link href="${bootstrapcss}" rel="stylesheet" />

<link href="${navbar}" rel="stylesheet" />

<link href="${main}" rel="stylesheet" />
<title>Ticket Stadium</title>
</head>

<body>
	<jsp:include page="Header.jsp" />
	<nav class="container cup-tickets">
		<div class="row">
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SOR"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade olympique Radès
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SOME"><spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade olympique Menzah</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SFH"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Football Club Hammamet
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="OS"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade olympique Sousse
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SMBJ"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade Mustapha Ben Jennet
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="S15O"><spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade du 15-Octobre</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SCHZ"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade Chedly-Zouiten
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SAZ"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade Ali-Zouaoui
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="STM"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade Taïeb Mehiri
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SOGE"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade Olympique Gabès
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SBK"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade Boujemaa Kmiti
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SM"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade de Midoun
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SMHL"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade municipal Hammam Lif
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SK"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade du Kef
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SJ"><spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" /> Stade Jlidi</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SOG"><spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" /> Stade olympique de Gafsa</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SACH"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade olympique de Gafsa
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SHS"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade de Houmt Souk
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SOM"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade olympique Médenine
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SHT"><spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade Habib-Tajouri </a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SHL"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade Hamda-Laouani
				</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="SFH"><spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" /> Stade Farhat-Hached</a>
			</div>
			<div class="list-group col-md-3 col-sm-4 col-xs-6">
				<a class="list-group-item" href="MK"> <spring:url
						value="/resources/images/stadium.png" var="logo" /> <img
					src="${logo }" alt="stadium-icon" />Stade municipal Kasserine
				</a>
			</div>
		</div>
	</nav>
	<jsp:include page="MostPopularTickets.jsp" />
	<jsp:include page="Footer.jsp" />
	<jsp:include page="CopyRight.jsp" />

	<spring:url value="/resources/js/jquery-2.2.1.js" var="jquery_url" />

	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrap_url" />

	<spring:url value="/resources/js/script.js" var="script_url" />

	<script src="${jquery_url }" type="text/javascript"></script>

	<script src="${bootstrap_url }" type="text/javascript"></script>

	<script src="${script_url}" type="text/javascript"></script>
</body>

</html>
