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
	value="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"
	var="jqueryuijs" />

<script src="${jqueryuijs }"></script>

<spring:url value="/resources/js/script.js" var="script_url" />

<script src="${script_url}" type="text/javascript"></script>

<spring:url value="/resources/js/Tunisia.js" var="Tunisia_url" />

<script src="${Tunisia_url}" type="text/javascript"></script>
<title>Login</title>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<section class="container-fluid">
		<div class="row">
			<div class=" col-centered col-md-4 col-sm-6 col-xs-9">
				<c:if test="${not empty error}">
					<p class="invalid">
						${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
				</c:if>
				<spring:url value="login" var="login" />
				<form class="form-horizontal" role="form" method="post"
					action="${login }" id="">
					<div class="form-group">
						<label for="username">Pseudonyme</label> <input type="text"
							class="form-control" id="username" name="username"
							placeholder="Entrer pseudonyme"
							value='<c:out value="${userName }"/>' required="">
					</div>
					<div class="form-group">
						<label for="password">Mot de passe</label> <input type="password"
							class="form-control" id="password" name="password"
							placeholder="Entrer mote de passe"
							value='<c:out value="${password }"/>' required="">
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="remember-me"
							id="remember-me"> Remember Me
						</label> <a href='<c:out value="PasswordForgot"/>'>mot de passe oublié</a>
					</div>
					<div class="form-group">

						<button type="submit" class="btn btn-primary">Login</button>
						<button type="button" class="btn btn-default">Cancel</button>
						<span class="glyphicon glyphicon-lock"></span> <a
							href="registration" class="left">Inscrivez-vous</a>

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

</body>
</html>
