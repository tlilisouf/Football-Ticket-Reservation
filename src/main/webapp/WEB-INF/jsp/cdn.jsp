<!doctype html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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

<spring:url value="/resources/js/datepicker-fr.js" var="datepickerfr" />

<script src="${datepickerfr}" type="text/javascript"></script>

<spring:url value="/resources/js/Tunisia.js" var="Tunisia_url" />

<script src="${Tunisia_url}" type="text/javascript"></script>

<spring:url value="/resources/js/script.js" var="script_url" />

<script src="${script_url}" type="text/javascript"></script>