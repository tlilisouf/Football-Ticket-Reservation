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
<title>ESS-Tickets</title>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<div id="includeLoginModal"></div>
	<div id="includeHeader"></div>
	<section class="container">
		<div class="row">
			<div class="col-sm-2" id="logo">
				<spring:url
					value="/resources/images/ligue1pro/Etoile_du_sahel.svg.png"
					var="logo" />
				<img src="${logo}" alt="ESS" />
			</div>
			<div class="jumbotron col-centered col-sm-7 ">
				<span class="morecontent"> L'Étoile sportive du Sahel (النجم
					الرياضي الساحلي) ou ESS est un club de football tunisien fondé le
					11 mai 1925. Il constitue une section du club omnisports de
					l'Étoile sportive du Sahel.Il est le club phare de la région du
					Sahel, installé à Sousse, troisième ville du pays.<span> Le
						stade, la maison mère et les complexes sportifs sont situés dans
						le quartier nord.Évoluant en Ligue I, il est le club tunisien le
						plus titré au niveau continental avec neuf titres, toutes
						compétitions confondues.Ses couleurs sont le rouge et le blanc, ce
						qui conduit le club à être souvent surnommé El Hamra (« la rouge »
						en arabe) par ses supporters.</span><a href=""
					class="morelink center-block text-center">Lire plus</a>
				</span>
			</div>
		</div>
	</section>
	<nav class="container">
		<div class="row">
			<section class="col-sm-12 ">
				<table class="table table-hover">
					<h2 class="block-header text-center">Les tickets de football
						d'Etoile sportive du Sahel</h2>
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
