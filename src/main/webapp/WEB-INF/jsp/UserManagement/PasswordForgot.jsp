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
<title>Mot de passe oublié</title>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<section class="container-fluid">
		<div class="row">
			<div class=" col-centered col-md-4 col-sm-6 col-xs-9">
				<spring:url value="requestPassword" var="requestPassword" />
				<form class="form-horizontal" role="form" method="post"
					action="${requestPassword }">
					<div class="form-group">
						<label for="username">e-mail</label> <input type="text"
							class="form-control" id="email" name="email"
							placeholder="Saisir votre e-mail" value="" required />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary">Valider</button>
					</div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
			</div>
		</div>
		<jsp:include page="../MostPopularTickets.jsp" />
		<jsp:include page="../Footer.jsp" />
		<jsp:include page="../CopyRight.jsp" />
	</section>
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