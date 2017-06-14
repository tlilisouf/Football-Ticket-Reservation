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

<spring:url value="/resources/js/datepicker-fr.js" var="datepickerfr" />

<script src="${datepickerfr}" type="text/javascript"></script>

<spring:url value="/resources/js/script.js" var="script_url" />

<script src="${script_url}" type="text/javascript"></script>

<spring:url value="/resources/js/Tunisia.js" var="Tunisia_url" />

<script src="${Tunisia_url}" type="text/javascript"></script>
<title>Profile</title>
</head>

<body>
	<jsp:include page="../Header.jsp" />

	<div class="container margin-nav">
		<div class="row">
			<div class="list-group col-sm-3 ">
				<a href="Profile" class="list-group-item active"> Modifier les
					infromations de compte </a> <a href="PasswordAlter"
					class="list-group-item">Modifier mot de passe</a> <a
					href="UserPayement" class="list-group-item">Consulter mes
					paiements</a>
			</div>
			<div class="col-sm-9">
				<spring:url value="profileAlter" var="profileAlter" />
				<form class="form-horizontal" role="form" id="RegisterForm"
					method="post" action="${profileAlter }">
					<div class="form-group">
						<label for="gouvernorat" class="col-sm-3 control-label">Gouvernorat<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-9">
							<select class="form-control" name="gouvernorat" id="gouvernorat">
								<option>${userProfile.town }</option>
								<option value="">-- Gouvernorat --</option>
							</select>

						</div>
					</div>
					<div class="form-group">
						<label for="delegation" class="col-sm-3 control-label">Délégation<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-9">
							<select class="form-control" name="delegation" id="delegation">
								<option>${userProfile.region }</option>
								<option value="">-- Delegation --</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="sex" class="col-sm-3 control-label">Sex<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-9">
							<select class="form-control" name="sex" id="sex">
								<option value='<c:out value="${userProfile.sex }"/>'>${userProfile.sex }</option>
								<option value="Homme">Homme</option>
								<option value="Femme">Femme</option>
							</select>

						</div>
					</div>
					<div class="form-group " id="user_name_field">
						<label for="user_name" class="col-sm-3 control-label">Pseudonyme</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="userName"
								id="userName" placeholder=""
								value='<c:out value="${userProfile.ssoId }"/>' required
								readonly="">
						</div>
					</div>
					<div class="form-group " id="billing_first_name_field">
						<label for="billing_first_name" class="col-sm-3 control-label">Nom<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="firstName"
								id="firstName" placeholder=""
								value='<c:out value="${userProfile.firstName }"/>' required>
						</div>
					</div>
					<div class="form-group" id="billing_last_name_field">
						<label for="billing_last_name" class="col-sm-3 control-label">Prénom<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-9">
							<input type="text" class="form-control " name="lastName"
								id="lastName" placeholder=""
								value='<c:out value="${userProfile.lastName }"/>' required>
						</div>
					</div>
					<div class="form-group" id="billing_birthday_field">
						<label for="billing_last_name" class="col-sm-3 control-label">Date
							de naissance<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-9">
							<div class="input-group date" data-date="20-02-2016"
								data-date-format="mm-dd-yyyy">

								<input class="form-control" type="text" readonly=""
									value='<c:out value="${userProfile.birthday }"/>'
									name="birthday" id="birthday" placeholder="" required>
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-calendar"></i></span>
							</div>
						</div>
					</div>

					<div class="form-group" id="billing_company_field">
						<label for="billing_company" class="col-sm-3 control-label">Nom
							d'enterprise</label>
						<div class="col-sm-9">
							<input type="text" class="form-control " name="comapanyName"
								id="comapanyName" placeholder=""
								value='<c:out value="${userProfile.company }"/>'>
						</div>
					</div>
					<div class="form-group" id="billing_address_fields">
						<label for="billing_address_1" class="col-sm-3 control-label">Addresse<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-9">
							<input type="text" class="form-control " name="address1"
								id="address1" placeholder="adresse de rue"
								value='<c:out value="${userProfile.address }"/>' required>
							<input type="text" class="form-control " name="address2"
								id="address2"
								placeholder="
Appartement, suite, unitÃ©, etc. (facultatif)"
								value="">
						</div>
					</div>

					<div class="clear"></div>
					<div class="form-group validate-required validate-email"
						id="billing_email_field">
						<label for="billing_email" class="col-sm-3 control-label">Adresse
							électronique<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-9">
							<input type="email" class="form-control " name="email" id="email"
								placeholder="email"
								value='<c:out value="${userProfile.email }"/>' required
								readonly="">
							<div class="help-block with-errors"></div>
						</div>
					</div>
					<div class="form-group validate-required validate-phone"
						id="billing_phone_field">
						<label for="billing_phone" class="col-sm-3 control-label">Téléphone<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-9">
							<input type="tel" class="form-control " name="phoneNumber"
								id="phoneNumber" placeholder=""
								value='<c:out value="${userProfile.phone }"/>' required>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Captcha<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-9">
							<div id="captchaContainer"></div>
						</div>
					</div>
					<!--<div class="form-group">
            <div class="col-sm-offset-3 col-sm-9" id="captchaMessage"> </div>
          </div>!-->
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button type="submit" class="btn btn-primary">Valider</button>
							<button type="button" class="btn btn-default" id="resetButton">Reset</button>
						</div>
					</div>
					<input type="hidden" name="password"
						value='<c:out value="${userProfile.password }"/>' /> <input
						type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../MostPopularTickets.jsp" />
	<jsp:include page="../Footer.jsp" />
	<jsp:include page="../CopyRight.jsp" />

</body>

</html>
