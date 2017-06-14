<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="../cdn.jsp" />

<title>USBG-Tickets</title>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<section class="container">
		<div class="row">
			<div class="col-sm-2" id="logo">
				<spring:url value="/resources/images/ligue1pro/Usbg.png" var="logo" />
				<img src="${logo}" alt="USBG" />
			</div>
			<div class="jumbotron col-centered col-sm-7 ">
				<span class="morecontent"> L'Union sportive de Ben Guerdane
					(الإتحاد الرياضي ببن ڤردان) est un club tunisien de football fondé
					en 1934 tet basé à Ben Gardane (aussi orthographiée Ben
					Guerdane).Il évolue<span> durant la saison 2014-2015 en
						Ligue II et réussit à accéder pour la première fois de son
						histoire en Ligue I.</span><a href=""
					class="morelink center-block text-center">Lire plus</a>
				</span>
			</div>

		</div>
	</section>
	<nav class="container">
		<div class="row">

			<section class="col-sm-12">
				<table class="table table-hover">
					<h2 class="block-header text-center">Les tickets de football
						Union sportive de Ben Guerdane</h2>
					<thead>
						<tr class="head">
							<th>Tournoi</th>
							<th>Date</th>
							<th>Stade</th>
							<th>Match</th>
							<th>Place</th>
							<th>Prix</th>
							<th>Réservation</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="match" items="${matchsList}">
							<tr>
								<td><a
									href='<c:out value="  ${match.matchTournament.tournamentName }"/>'>${match.matchTournament.tournamentName }</a></td>
								<td>${match.dateMatch}</td>
								<td><a
									href='<c:out value="  ${match.stadiumMatch.stadiumName }"/>'>${match.stadiumMatch.stadiumName }</a></td>
								<td><a href='<c:out value="  ${match.teamHome }"/>'>${match.teamHome}</a>&nbspvs<a
									href='<c:out value="  ${match.teamAway }"/>'>${match.teamAway }</a></td>
								<td>${match.seat }</td>
								<td>${match.matchTicketPrice }</td>
								<td><a
									href="<c:url value="TicketPayement?match=${match.idMatch}&match=${match.dateMatch}&match=${match.matchTournament.tournamentName }&match=${match.stadiumMatch.stadiumName }&match=${match.teamHome }&match=${match.teamAway }&match=${match.ticketsMatch }&match=${match.matchTicketPrice }&match=${match.seat }"/>">
										<button type="button" class="btn btn-primary">
											Réserver tickets</button>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
		</div>
	</nav>
	<jsp:include page="../MostPopularTickets.jsp" />
	<jsp:include page="../Footer.jsp" />
	<jsp:include page="../CopyRight.jsp" />
</body>

</html>
