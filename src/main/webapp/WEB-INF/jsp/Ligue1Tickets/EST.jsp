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

<title>EST-Tickets</title>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<section class="container">
		<div class="row">
			<div class="col-sm-2" id="logo">
				<spring:url
					value="/resources/images/ligue1pro/EST_New_Logo_2012.png"
					var="logo" />
				<img src="${logo}" alt="EST" />
			</div>
			<div class="jumbotron col-centered col-sm-7 ">
				<span class="morecontent"> L'Espérance sportive de Tunis
					(arabe : الترجي الرياضي التونسي ; abrégé en EST) est un club de
					football tunisien basé à Tunis et fondé en 1919 dans le quartier de
					Bab Souika. Il évolue dans le championnat de Tunisie de football.
					Il est le club de football tunisien le <span> plus titré au
						niveau national, toutes compétitions confondues, avec 26
						championnats, quatorze coupes de Tunisie, deux supers coupes, une
						coupe Hédi Chaker et un critérium Hamda Laouani. Le club a
						également remporté la Coupe d'Afrique des vainqueurs de coupe, la
						Coupe de la CAF, la Ligue des champions de la CAF, la Supercoupe
						de la CAF ainsi que des coupes arabes (Ligue des champions arabes
						à deux reprises, une Supercoupe arabe et une Coupe afro-asiatique
						des clubs).L'Espérance sportive de Tunis se trouve à la septième
						place du classement des meilleurs clubs africains du XXe siècle
						dressé par l'IFFHS3. Il est aussi désigné cinquième club africain
						du XXe siècle, en 2000, par la Confédération africaine de
						football4.Une certaine rivalité existe avec le Club africain
						contre qui il dispute chaque année le derby tunisois. Une autre
						rivalité l'oppose au club de l'Étoile sportive du Sahel.</span><a href=""
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
						d'Espérance sportive de Tunis</h2>
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
