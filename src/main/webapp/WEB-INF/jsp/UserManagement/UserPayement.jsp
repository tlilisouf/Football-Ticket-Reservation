<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapcss" />

<spring:url value="/resources/css/navbar.css" var="navbar" />

<spring:url value="/resources/css/main.css" var="main" />

<link href="${bootstrapcss}" rel="stylesheet" />

<link href="${navbar}" rel="stylesheet" />

<link href="${main}" rel="stylesheet" />
<title>UserPayement</title>
</head>

<body>
	<jsp:include page="../Header.jsp"></jsp:include>
	<div class="container margin-nav">
		<div class="row">
			<div class="list-group col-sm-3 ">
				<a href="Profile" class="list-group-item"> Modifier les
					infromations de compte </a> <a href="PasswordAlter"
					class="list-group-item">Modifier mot de passe</a> <a
					href="UserPayement" class="list-group-item active">Consulter
					mes paiements</a>
			</div>

			<section class="col-sm-12">
				<table class="table table-hover text-center">
					<h2 class="block-header text-center">Mes paiements</h2>
					<thead>
						<tr class="head">
							<th>Date de match</th>
							<th>Equipe Maison</th>
							<th>Equipe Extérieur</th>
							<th>Place</th>
							<th>Date Paiement</th>
							<th>Nb tickets</th>
							<th>Prix d'un ticket</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${matchReservations}" var="match">
							<tr>
								<td>${match.matchReservation.dateMatch }</td>
								<td><a
									href='<c:out value="  ${match.matchReservation.teamHome }"/>'>${match.matchReservation.teamHome }</a></td>
								<td><a
									href='<c:out value="  ${match.matchReservation.teamAway }"/>'>${match.matchReservation.teamAway }</a></td>
								<td>${match.matchReservation.seat }</td>
								<td>${match.reservationPayement.datePayement }</td>
								<td>${match.ticketsBrought }</td>
								<td>${match.matchReservation.matchTicketPrice }</td>
								<td>${match.reservationPayement.pricePayement }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
			<jsp:include page="../MostPopularTickets.jsp" />
			<jsp:include page="../Footer.jsp" />
			<jsp:include page="../CopyRight.jsp" />
		</div>

	</div>


	<spring:url value="/resources/js/jquery-2.2.1.js" var="jquery_url" />

	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrap_url" />


	<spring:url value="/resources/js/script.js" var="script_url" />

	<script src="${jquery_url }" type="text/javascript"></script>

	<script src="${bootstrap_url }" type="text/javascript"></script>

	<script src="${script_url}" type="text/javascript"></script>
</body>

</html>
