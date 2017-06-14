<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

<title>Lise des Matchs</title>

</head>

<body>
	<jsp:include page="../Header.jsp" />
	<nav class="container margin-nav">
		<div class="row">
			<div class="list-group col-sm-3">
				<a href="AddMatchLigue1" class="list-group-item">Ajouter matches</a>
				<a href="MatchList" class="list-group-item active">Afficher
					matches</a> <a href="SearchMatch" class="list-group-item">Rechercher
					matches</a> <a href="UsersList" class="list-group-item">Afficher
					utlisateurs</a> <a href="searchMember" class="list-group-item ">Rechercher
					utilisateurs</a> <a href="InnactivUsers" class="list-group-item ">Afficher
					utlisateurs innactifs</a>
			</div>
			<section class="col-sm-12">
				<table class="table table-hover text-center">
					<h2 class="block-header text-center">La liste des matches</h2>
					<thead>
						<tr class="head">
							<th>Tournoi</th>
							<th>Date</th>
							<th>Stade</th>
							<th>Equipe Maison</th>
							<th>Equipe Exérieur</th>
							<th>Place</th>
							<th>Tickets diponibles</th>
							<th>Prix d'un Ticket</th>
							<th>Terminé</th>
							<th>Modification</th>
							<th>Suppression</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${matchsList}" var="match">
							<tr>
								<td><a
									href='<c:out value="  ${match.matchTournament.tournamentName }"/>'>${match.matchTournament.tournamentName }</a></td>
								<td>${match.dateMatch}</td>
								<td><a
									href='<c:out value="  ${match.stadiumMatch.stadiumName }"/>'>${match.stadiumMatch.stadiumName }</a></td>
								<td><a href='<c:out value="  ${match.teamHome }"/>'>${match.teamHome}</a></td>
								<td><a href='<c:out value="  ${match.teamAway }"/>'>${match.teamAway }</a></td>
								<td>${match.seat }</td>
								<td>${match.ticketsMatch }</td>
								<td>${match.matchTicketPrice }</td>
								<td><c:choose>
										<c:when test="${match.matchComplete == '0'}">
											match non terminé
										</c:when>
										<c:otherwise>
											match terminé
										</c:otherwise>
									</c:choose></td>
								<td><a
									href="<c:url
										value="AlterMatch?match=${match.idMatch}&match=${match.dateMatch}&match=${match.matchTournament.tournamentName}&match=${match.stadiumMatch.stadiumName}&match=${match.teamHome}&match=${match.teamAway}&match=${match.ticketsMatch}&match=${match.matchTicketPrice}&match=${match.seat}"/>">
										<button type="button" class="btn btn-primary">
											Modifier</button>

								</a></td>
								<td><a href="DeleteMatch?match=${match.idMatch}">
										<button type="button" class="btn btn-primary">
											Supprimer</button>

								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
			<jsp:include page="../CopyRight.jsp" />
		</div>

	</nav>


	<spring:url value="/resources/js/jquery-2.2.1.js" var="jquery_url" />

	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrap_url" />

	<spring:url value="/resources/js/script.js" var="script_url" />

	<script src="${jquery_url }" type="text/javascript"></script>

	<script src="${bootstrap_url }" type="text/javascript"></script>

	<script src="${script_url}" type="text/javascript"></script>

</body>

</html>
