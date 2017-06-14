<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
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


<title>Réservation</title>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-8 block-header col-centered text-center">
				Les Tickets Disponibles de ${match.teamHome } vs&nbsp
				${match.teamAway }
				<h3>
					${match.dateMatch }<br> ${match.stadiumMatch.stadiumName }
				</h3>
			</div>
			<section class=" col-sm-12 col-md-12 col-md-push-1">
				<spring:url value="payement" var="payement" />
				<form class="form-horizontal" role="form" action="${payement }"
					method="post" id="ticketPayement">
					<div class="form-group">
						<label for="price" class="col-sm-3 control-label">Place </label>
						<div class="col-sm-5">
							<select class="form-control" name="seat" id="seat" readonly="">
								<option value="${match.seat }">${match.seat }</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="price" class="col-sm-3 control-label">Prix
							d'un Ticket</label>
						<div class="col-sm-5">
							<select class="form-control" name="ticketPrice" id="ticketPrice"
								readonly="">
								<option value="${match.matchTicketPrice }">${match.matchTicketPrice }</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="NB_Tickets" class="col-sm-3 control-label">NB
							de Tickets<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-5">
							<select class="form-control" name="NBTickets" id="NBTickets"
								required>
								<option value="">--NB Tickets--</option>
								<c:forEach begin="1" end="5" var="i">
									<option value="${ i}">${ i}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="Shipping" class="col-sm-3 control-label">Options
							de livraison<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-5">
							<select class="form-control" name="Shipping" id="Shipping"
								required>
								<option value="">--Mode livraison--</option>
								<option value="Aramex">Aramex</option>
								<option value="Poste">Poste</option>
							</select>
						</div>
					</div>
					<div class="form-group" id="shippementAdress">
						<label for="shippementAdress" class="col-sm-3 control-label">adresse
							de livraison<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="shippementAdress"
								value="" required />
						</div>
					</div>
					<div class="form-group">
						<label for="Purchase" class="col-sm-3 control-label">Options
							de payement<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-5">
							<select class="form-control" name="purchase" id="purchase"
								required>
								<option value="CreditCard">Carte Banquaire</option>
								<option value="Mobi">MobiFlouss</option>
								<option value="Mobi">MobiDinar</option>
								<option value="Mobi">MobiMoney</option>
							</select>
						</div>
					</div>
					<div class="form-group" id="PhoneNum">
						<label for="PhoneNum" class="col-sm-3 control-label">Num
							Téléphone<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="PhoneNum" />
						</div>
					</div>
					<div class="form-group" id="CreditCardType">
						<label for="CreditCardType" class="col-sm-3  control-label">Type
							Carte Bancaire<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-5 selectContainer">
							<select class="form-control" name="CreditCardType" required>
								<option value="">--Type Carte--</option>
								<option value="Master">Master</option>
								<option value="Visa">Visa</option>
							</select>
						</div>
					</div>
					<div class="form-group" id="CreditCardNum">
						<label for="CreditCardNum" class="col-sm-3 control-label">Num
							Carte Bancaire<abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="CreditCardNum"
								required />
						</div>
					</div>
					<div class="form-group" id="expiration">
						<label for="expiration" class="col-sm-3 control-label">date
							d'expiration <abbr class="required" title="required">*</abbr>
						</label>
						<div class="col-sm-7">
							<div class="col-sm-2">
								<input type="text" class="form-control" name="month"
									placeholder="10" required />
							</div>
							<div class="col-sm-1">/</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" name="year"
									placeholder="16" required />
							</div>
						</div>
					</div>
					<div class="form-group" id="CSC">
						<label for="CVV" class="col-sm-3 control-label">Numéro CVV<abbr
							class="required" title="required">*</abbr></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="csc" required />
						</div>
					</div>
					<div class="form-group">
						<label for="total" class="col-sm-3 control-label">La
							totale</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="totalPrice"
								id="totalPrice" value="" readonly="" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-5 col-sm-push-3">
							<button type="submit" class="btn btn-primary">Acheter</button>
						</div>
					</div>
					<input type="hidden" name="idMatch"
						value='<c:out value="${match.idMatch }" />' /> <input
						type="hidden" name="ticketsMatch"
						value='<c:out value="${match.ticketsMatch }" />' /> <input
						type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
			</section>
		</div>
	</div>
	<jsp:include page="../MostPopularTickets.jsp" />
	<jsp:include page="../Footer.jsp" />
	<jsp:include page="../CopyRight.jsp" />

</body>

</html>
