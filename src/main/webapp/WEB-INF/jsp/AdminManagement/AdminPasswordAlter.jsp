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
<title>Modifier mot de passe</title>
</head>

<body>
	<jsp:include page="../Header.jsp" />
	<section class="container margin-nav">
		<div class="row">
			<div class="list-group col-sm-3">
				<a href="SuperAdminAccount" class="list-group-item">Modifier <a
					href="AddAdmin" class="list-group-item">Ajouter administrateur</a><a
					href="UsersList" class="list-group-item ">Afficher
						administrateurs</a> <a href="searchMember" class="list-group-item ">Rechercher
						administrateurs</a>
			</div>

			<div class="list-group col-sm-7 ">
				<a href="AdminAccount" class="list-group-item"> Modifier les
					infromations de compte </a> <a href="AdminPasswordAlter"
					class="list-group-item active">Modifier mot de passe</a>

			</div>
			<div class="col-sm-9">
				<spring:url value="alterPassword" var="alterPassword" />
				<form class="form-horizontal" role="form" id="passwordAlter"
					action="${alterPassword }" method="post">
					<div class="form-group" id="passwordAlter">
						<label for="passwordUser" class="col-sm-3 control-label">Mot
							de passe actuel<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-6 col-md-6">
							<input type="password" class="form-control"
								name="passwordRegister" id="passwordRegister" placeholder=""
								value='<c:out value="${actualPassword }"></c:out>' required>
						</div>
					</div>
					<div class="form-group" id="billing_password_field">
						<label for="billing_password" class="col-sm-3 control-label">Nouveau
							Mot de passe<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-6 col-md-6">
							<input type="password" class="form-control" name="NewPassword"
								id="NewPassword" placeholder="" value="" required>
						</div>
					</div>
					<div class="form-group" id="billing_password_conform_field">
						<label for="billing_password_conform"
							class="col-sm-3 control-label">Confirmation<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-6 col-md-6">
							<input type="password" class="form-control " name="confirmation"
								id="confirmation" placeholder="" value="" required>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Captcha<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-9">
							<div id="captchaContainer"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button type="submit" class="btn btn-primary">Valider</button>
							<button type="button" class="btn btn-default" id="resetButton">Reset</button>
						</div>
					</div>
					<input type="hidden" name="userName"
						value='<c:out value="${userName }"/>' /> <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
			</div>
			<div id="CopyRight"><jsp:include page="../CopyRight.jsp" /></div>
		</div>
	</section>
</body>

</html>
