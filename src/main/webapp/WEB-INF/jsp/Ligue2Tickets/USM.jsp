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

<title>USM-Tickets</title>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<section class="container">
		<div class="row">
			<div class="col-sm-2" id="logo">
				<spring:url value="/resources/images/ligue2/Us_monastirienne.gif"
					var="logo" />
				<img src="${logo}" alt="USM" />
			</div>
			<div class="jumbotron col-centered col-sm-7 ">L'Union sportive
				monastirienne (الاتحاد الرياضي المنستيري) ou USM est un club de
				football tunisien fondé en 1923 et basé à Monastir. Il évolue en
				Ligue II en 2015-2016.</div>
		</div>
	</section>
	<nav class="container">
		<div class="row">
			<section class="col-sm-8 col-sm-offset-2 ">
				<table class="table table-hover">
					<h2 class="block-header text-center">Les tickets de football
						d'Union Sportive Monastirienne</h2>
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
