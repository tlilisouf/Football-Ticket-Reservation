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
<title>CA-Ticket</title>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<section class="container">
		<div class="row">
			<div class="col-sm-2" id="logo">
				<spring:url
					value="/resources/images/ligue1pro/Logo_Club_africain.svg.png"
					var="logo" />
				<img src="${logo }" alt="CA" />
			</div>
			<div class="jumbotron col-centered col-sm-7 ">
				<span class="morecontent">Le Club africain (arabe : النادي
					الإفريقي) ou Club Africain selon l'usage tunisien (abrégé en CA)
					est un club de football tunisien basé à Tunis. Le club est l'une
					des sections fondatrices du club omnisports homonyme, le Club
					africain, fondé en 1920 dans le quartier de Bab Jedid. Connu sous
					le surnom d'Al Ifriki, l'équipe de football première évolue en
					championnat de Tunisie. C'est l'un des deux grands clubs de la
					capitale de <span> la Tunisie Tunis, avec l'Espérance
						sportive de Tunis (EST). Les derbys avec l'autre club sont des
						matchs d'une grande intensité, au cours desquels s'exacerbe la
						rivalité historique entre les deux clubs et leurs supporters.Le
						Club africain détient des titres internationaux : une coupe des
						clubs champions africains, une coupe afro-asiatique des clubs, une
						coupe arabe des vainqueurs de coupe, une Ligue des champions
						arabes, deux coupes nord-africaine des clubs champions, trois
						coupes du Maghreb des clubs champions et une coupe du Maghreb des
						vainqueurs de coupe.Sur le plan national, le Club africain a
						notamment remporté treize titres de champion mais aussi onze
						coupes et trois supercoupes, un record. </span><a href=""
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
						de Club Africain</h2>
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
