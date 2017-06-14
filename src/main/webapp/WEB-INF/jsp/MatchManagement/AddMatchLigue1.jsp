<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<spring:url
	value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	var="bootstrapcss" />

<link rel="stylesheet" href="${bootstrapcss}" />

<spring:url
	value="https://cdnjs.cloudflare.com/ajax/libs/formvalidation/0.6.1/css/formValidation.min.css"
	var="formValidation" />

<link rel="stylesheet" href="${formValidation }" />

<spring:url
	value="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css"
	var="jqueryui" />

<link rel="stylesheet" href="${jqueryui }" />

<spring:url
	value="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.3/jquery.datetimepicker.min.css"
	var="datetimepickercss" />

<link rel="stylesheet" href="${datetimepickercss }" />

<spring:url value="/resources/css/navbar.css" var="navbar" />

<link href="${navbar}" rel="stylesheet" />

<spring:url value="/resources/css/main.css" var="main" />

<link href="${main}" rel="stylesheet" />

<spring:url
	value="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"
	var="jquery" />

<script src="${jquery }"></script>

<spring:url
	value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"
	var="bootstrapjs" />

<script src="${bootstrapjs }"></script>

<spring:url
	value="https://cdnjs.cloudflare.com/ajax/libs/formvalidation/0.6.1/js/formValidation.min.js"
	var="formValidationjs" />

<script src="${formValidationjs }"></script>

<spring:url value="/resources/js/reCaptcha2.min.js" var="recaptcha_url" />

<script src="${recaptcha_url}" type="text/javascript"></script>

<spring:url
	value="https://cdnjs.cloudflare.com/ajax/libs/formvalidation/0.6.1/js/framework/bootstrap.min.js"
	var="formValidationbootstrap" />

<script src="${formValidationbootstrap }"></script>

<spring:url
	value="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.3/build/jquery.datetimepicker.full.min.js"
	var="datetimepickerjs" />

<script src="${datetimepickerjs}" type="text/javascript"></script>

<spring:url
	value="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"
	var="jqueryuijs" />

<script src="${jqueryuijs }"></script>

<spring:url value="/resources/js/datepicker-fr.js" var="datepickerfr" />

<script src="${datepickerfr}" type="text/javascript"></script>

<spring:url value="/resources/js/script.js" var="script_url" />

<script src="${script_url}" type="text/javascript"></script>

<title>Ajouter Match ligue 1</title>
</head>

<body>

	<jsp:include page="../Header.jsp" />
	<div class="container margin-nav">
		<div class="row">
			<div class="list-group col-sm-3">
				<a href="AddMatchLigue1" class="list-group-item active">Ajouter
					matches</a> <a href="MatchList" class="list-group-item">Afficher
					matches</a> <a href="SearchMatch" class="list-group-item">Rechercher
					matches</a> <a href="UsersList" class="list-group-item">Afficher
					utlisateurs</a> <a href="searchMember" class="list-group-item ">Rechercher
					utilisateurs</a> <a href="InnactivUsers" class="list-group-item ">Afficher
					utlisateurs innactifs</a>
			</div>
			<nav class="col-sm-9">
				<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a
						href="AddMatchLigue1">Ligue I</a></li>
					<li role="presentation"><a href="AddMatchLigue2">Ligue II</a></li>
					<li role="presentation"><a href="AddMatchCup">Coupe
							Tunisie</a></li>
					<li role="presentation"><a href="AddMatchCAF">CAF</a></li>
					<li role="presentation"><a href="AddMatchTunisia">Equipe
							Tunisie</a></li>
					<li role="presentation"><a href="AddMatchTunisiaEspoir">Equipe
							Espoir Tunisie</a></li>
				</ul>
			</nav>
			<div class="col-sm-9 matchManagement">
				<spring:url value="MatchLigue1Add" var="MatchLigue1Add" />
				<form class="form-horizontal" role="form" method="post"
					action="${MatchLigue1Add }" id="match">
					<p class="invalid">${matchAdd }</p>
					<jsp:include page="SelectLigue1.jsp"></jsp:include>
					<jsp:include page="SelectStadium.jsp"></jsp:include>
					<jsp:include page="DateTickets.jsp"></jsp:include>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
			</div>
			<jsp:include page="../CopyRight.jsp" />
		</div>
	</div>

</body>

</html>
