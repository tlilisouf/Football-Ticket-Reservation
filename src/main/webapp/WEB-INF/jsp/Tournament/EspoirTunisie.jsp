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
<title>Equipe Espoire Tunisie</title>
</head>

<body>
	<jsp:include page="../Header.jsp" />
	<section class="container">
		<div class="row">
			<div class="jumbotron col-centered col-sm-7 ">
				<span class="morecontent"> L'équipe de Tunisie espoirs de
					football est une sélection des meilleurs jeunes foot-<span>balleurs
						tunisiens constituée sous l'égide de la Fédération tunisienne de
						football. Elle prend part aux Jeux olympiques d'été. </span><a href=""
					class="morelink center-block text-center">Lire plus</a>
				</span>
			</div>
		</div>
	</section>
	<nav class="container col-centered">
		<div class="row">
			<section class="col-md-8 col-md-offset-2 ">
				<table class="table table-hover ">
					<h2 class="block-header text-center">Tickets d'Equipe Espoire
						Tunisie</h2>
					<thead>
						<tr class="head">
							<th>Tournoi</th>
							<th>Date</th>
							<th>Comptetion</th>
							<th>Stade</th>
							<th>Ticket</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${matchsList}" var="match">
							<tr>
								<td>${match.matchTournament.tournamentName}</td>
								<td>${match.dateMatch }</td>
								<td>${match.stadiumMatch.stadiumName }</td>
								<td>${match.teamHome }</td>
								<td>${match.teamAway }</td>
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
