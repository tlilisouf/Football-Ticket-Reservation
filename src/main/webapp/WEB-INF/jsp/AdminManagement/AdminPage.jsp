<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapcss" />

<spring:url value="/resources/css/navbar.css" var="navbar" />

<spring:url value="/resources/css/main.css" var="main" />

<link href="${bootstrapcss}" rel="stylesheet" />

<link href="${navbar}" rel="stylesheet" />

<link href="${main}" rel="stylesheet" />

<title>Admin</title>
</head>

<body>
	<jsp:include page="../Header.jsp" />
	<nav class="container margin-nav">
		<div class="row">
			<div class="list-group col-sm-3">
				<a href="AddMatchLigue1" class="list-group-item">Ajouter matches</a>
				<a href="MatchList" class="list-group-item">Afficher matches</a> <a
					href="SearchMatch" class="list-group-item">Rechercher matches</a> <a
					href="UsersList" class="list-group-item">Afficher utlisateurs</a> <a
					href="searchMember" class="list-group-item ">Rechercher un
					utilisateur</a> <a href="InnactivUsers" class="list-group-item ">Afficher
					utlisateurs innactifs</a>
			</div>
			<h2 class="text-center">Bien venue vous êtes identifié en tant
				que administrateur</h2>
			<div id="CopyRight"><jsp:include page="../CopyRight.jsp" /></div>
		</div>

	</nav>



	<spring:url value="/resources/js/jquery-2.2.1.js" var="jquery_url" />

	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrap_url" />

	<spring:url value="/resources/js/formValidation.min.js"
		var="formValidation_url" />

	<spring:url value="/resources/js/bootstrap.min-validation.js"
		var="bootstrap.min-validation_url" />

	<spring:url value="/resources/js/script.js" var="script_url" />

	<script src="${jquery_url }" type="text/javascript"></script>

	<script src="${bootstrap_url }" type="text/javascript"></script>

	<script src="${formValidation_url}" type="text/javascript"></script>

	<script src="${bootstrap.min-validation_url}" type="text/javascript"></script>

	<script src="${script_url}" type="text/javascript"></script>
</body>

</html>
