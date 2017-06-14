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
<title>ESHS-Tickets</title>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<section class="container">
		<div class="row">
			<div class="col-sm-2" id="logo">
				<spring:url value="/resources/images/ligue2/Eshs_grand.png"
					var="logo" />
				<img src="${logo}" alt="ESH" />
			</div>
			<div class="jumbotron col-centered col-sm-7 ">
				<span class="morecontent"> L'Espoir sportif de Hammam Sousse
					(الأمل الرياضي بحمام سوسة) est un club omnisports tunisien fondé en
					1954<span> par des jeunes de la ville de Hammam Sousse
						réunis autour de Mokhtar Latiri, l'un des plus brillants
						ingénieurs tunisiens. 1975 où l'EMM dispute la finale contre
						l'Étoile sportive du Sahel. Auparavant, elle était parvenue en
						demi-finale en 1969 (match perdu contre l'Espérance sportive de
						Tunis).</span><a href="" class="morelink center-block text-center">Lire
						plus</a>
				</span>
			</div>
		</div>
	</section>
	<nav class="container">
		<div class="row">
			<section class="col-sm-8 col-sm-offset-2 ">
				<table class="table table-hover">
					<h2 class="block-header text-center">Les tickets de football
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
