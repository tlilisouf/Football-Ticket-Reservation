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

<title>ESM-Tickets</title>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<div id="includeLoginModal"></div>
	<div id="includeHeader"></div>
	<section class="container">
		<div class="row">
			<div class="col-sm-2" id="logo">
				<spring:url
					value="/resources/images/ligue1pro/Logo_Etoile_Sportive_de_Metlaoui.svg.png"
					var="logo" />
				<img src="${logo}" alt="ESM" />
			</div>
			<div class="jumbotron col-centered col-sm-7">
				<span class="morecontent"> L'Étoile sportive de Métlaoui
					(النجم الرياضي بالمتلوي) est un club tunisien de football fondé en
					1950 et basé dans la ville de Métlaoui. Il évolue durant la saison
					2011-2012 en Ligue III. Dès le début de la saison, il s'empare de
					la première place et réalise d'excellents<span> résultats
						lui permettant d'accéder en Ligue II, à cinq journées de la fin du
						championnat, et de retrouver cette division après 27 saisons.
						Continuant sur sa lancée, il se classe premier de sa poule en
						première phase puis réussit à remporter le play-off et à accéder
						pour la première fois de son histoire en Ligue I.</span><a href=""
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
						d'Etoile sportive de MÃ©tlaoui</h2>
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
								<td><a href='<c:out value="  ${match.teamHome }"/>'>${match.teamHome}</a>&nbsp
									vs<a href='<c:out value="  ${match.teamAway }"/>'>${match.teamAway }</a></td>
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
