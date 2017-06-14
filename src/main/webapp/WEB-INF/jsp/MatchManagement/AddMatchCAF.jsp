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

<title>Ajouter Match CAF</title>
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
					<li role="presentation"><a href="AddMatchLigue1">Ligue I</a></li>
					<li role="presentation"><a href="AddMatchLigue2">Ligue II</a></li>
					<li role="presentation"><a href="AddMatchCup">Coupe
							Tunisie</a></li>
					<li role="presentation" class="active"><a href="AddMatchCAF">CAF</a></li>
					<li role="presentation"><a href="AddMatchTunisia">Equipe
							Tunisie</a></li>
					<li role="presentation"><a href="AddMatchTunisiaEspoir">
							Espoir Tunisie</a></li>
				</ul>
			</nav>
			<div class="col-sm-9 matchManagement">
				<spring:url value="MatchCAFAdd" var="MatchCAFAdd" />
				<form class="form-horizontal" role="form" method="post"
					action="${MatchCAFAdd }" id="match">
					<div class="form-group col-sm-9">
						<div class="col-sm-3">
							<input class="form-control" type="text" name="teamHome"
								value="Tunisie" readonly="">
						</div>
						<div class="col-sm-7">
							<select class="form-control" name="teamAway" id="CAFTeams">
								<option value='<c:out value="${matchAlter.teamAway}"/>'>${match.teamAway}
									${teamAway}</option>
								<option value="Afrique du Sud">Afrique du Sud</option>
								<option value="Algérie">Algérie</option>
								<option value="Angola">Angola</option>
								<option value="Bénin">Bénin</option>
								<option value="Botswana">Botswana</option>
								<option value="Burkina Faso">Burkina Faso</option>
								<option value="Burundi">Burundi</option>
								<option value="Cameroun">Cameroun</option>
								<option value="Cap-Vert">Cap-Vert</option>
								<option value="Comores">Comores</option>
								<option value="Congo">Congo</option>
								<option value="Rép. dém. du Congo">Rép. dém. du Congo</option>
								<option value="Côte d’Ivoire">Côte d’Ivoire</option>
								<option value="Djibouti">Djibouti</option>
								<option value="Égypte">Égypte</option>
								<option value="Érythrée">Érythrée</option>
								<option value="Éthiopie">Éthiopie</option>
								<option value="Gabon">Gabon</option>
								<option value="Gambie">Gambie</option>
								<option value="Ghana">Ghana</option>
								<option value="Guinée">Guinée</option>
								<option value="Guinée-Bissau"></option>
								<option value="Guinée-Bissau"></option>
								<option value="Guinée équatoriale">Guinée équatoriale</option>
								<option value="Kenya">Kenya</option>
								<option value="Lesotho">Lesotho</option>
								<option value="Liberia">Liberia</option>
								<option value="Libye">Libye</option>
								<option value="Madagascar">Madagascar</option>
								<option value="Malawi">Malawi</option>
								<option value="Mali">Mali</option>
								<option value="Maroc">Maroc</option>
								<option value="Maurice">Maurice</option>
								<option value="Mauritanie">Mauritanie</option>
								<option value="Mozambique">Mozambique</option>
								<option value="Namibie">Namibie</option>
								<option value="Niger">Niger</option>
								<option value="Nigeria">Nigeria</option>
								<option value="Ouganda">Ouganda</option>
								<option value="La Réunion">La Réunion</option>
								<option value="Rwanda">Rwanda</option>
								<option value="République centrafricaine">République
									centrafricaine</option>
								<option value="Sao Tomé-et-Principe">Sao
									Tomé-et-Principe</option>
								<option value="Sénégal">Sénégal</option>
								<option value="Seychelles">Seychelles</option>
								<option value="Sierra Leone">Sierra Leone</option>
								<option value="Somalie">Somalie</option>
								<option value="Soudan">Soudan</option>
								<option value="Swaziland">Swaziland</option>
								<option value="Tanzanie">Tanzanie</option>
								<option value="Tchad">Tchad</option>
								<option value="Togo">Togo</option>
								<option value="Zambie">Zambie</option>
								<option value="Zimbabwe">Zimbabwe</option>

							</select>

						</div>
					</div>
					<jsp:include page="SelectStadium.jsp"></jsp:include>
					<jsp:include page="DateTickets.jsp"></jsp:include>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
			</div>

		</div>
		<jsp:include page="../CopyRight.jsp" />
	</div>
</body>

</html>
