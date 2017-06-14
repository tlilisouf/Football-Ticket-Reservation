<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<nav class="container">
	<div class="row">
		<section class="col-sm-12">
			<table class="table table-hover text-center">
				<h2 class="block-header text-center">Les tickets de football
					les plus populaires</h2>
				<thead>
					<tr class="head">
						<th>Tournoi</th>
						<th>Date</th>
						<th>Stade</th>
						<th>Match</th>
						<th>Réservation</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="match" items="${popularMatchs}">
						<tr>
							<td><a
								href='<c:out value="  ${match.matchTournament.tournamentName }"/>'>${match.matchTournament.tournamentName }</a></td>
							<td>${match.dateMatch}</td>
							<td><a
								href='<c:out value="  ${match.stadiumMatch.stadiumName }"/>'>${match.stadiumMatch.stadiumName }</a></td>
							<td><a href='<c:out value="  ${match.teamHome }"/>'>${match.teamHome}</a>&nbspvs<a
								href='<c:out value="  ${match.teamAway }"/>'>${match.teamAway }</a></td>
							<td><a
								href="TicketPayement?match=${match.dateMatch}&match=${match.matchTournament.tournamentName }&match=${match.stadiumMatch.stadiumName }&match=${match.teamHome }&match=${match.teamAway }">
									<button type="button" class="btn btn-primary">
										Réserver tickets</button>
							</a></td>


						</tr>
					</c:forEach>

					<!-- <tr>
						<td><a href="">Ligue I</a></td>
						<td>08/06/2016 <br>
						</td>
						<td><a href="SOME"></a></td>
						<td><a href="">JS Kairouanaise</a> vs <a href="">AS Marsa</a></td>
						<td><a href="Ticketpayement"><button type="button"
									class="btn btn-default">Réserver tickets</button></a></td>
					</tr>
					<tr>
						<td><a href="">Ligue I</a></td>
						<td>08/06/2016 <br>
						</td>
						<td><a href="SOME"></a></td>
						<td><a href="">Sidi Bouzid</a> vs <a href="">Métlaoui</a></td>

						<td><a href="Ticketpayement"><button type="button"
									class="btn btn-default">Réserver tickets</button></a></td>
					</tr>

					<tr>
						<td><a href="">Ligue I</a></td>
						<td>08/06/2016 <br>
						</td>
						<td><a href="SOME"></a></td>
						<td><a href="">ES Zarzis </a> vs <a href="">CS Sfaxien</a></td>
						<td><a href="Ticketpayement"><button type="button"
									class="btn btn-default">Réserver tickets</button></a></td>
					</tr>

					<tr>
						<td><a href="">Ligue I</a></td>
						<td>08/06/2016 <br>
						</td>
						<td><a href="SOME"></a></td>
						<td><a href="">AS Kasserine</a> vs <a href="">Club
								Africain</a></td>
						<td><a href="Ticketpayement"><button type="button"
									class="btn btn-default">Réserver tickets</button></a></td>
					</tr>
					<tr>
						<td><a href="">Ligue I</a></td>
						<td>08/06/2016 <br>
						</td>
						<td><a href="SOME"></a></td>
						<td><a href="">Etoile du Sahel </a> vs <a href="">EGS
								Gafsa</a></td>
						<td><a href="Ticketpayement"><button type="button"
									class="btn btn-default">Réserver tickets</button></a></td>
					</tr>
					<tr>
						<td><a href="">Ligue I</a></td>
						<td>08/06/2016 <br>
						</td>
						<td><a href="SOME"></a></td>
						<td><a href="">Espérance Tunis</a> vs <a href="">Stade
								Gabésien</a></td>
						<td><a href="Ticketpayement"><button type="button"
									class="btn btn-default">Réserver tickets</button></a></td>
					</tr>
					<tr>
						<td><a href="">Ligue I</a></td>
						<td>08/06/2016 <br>
						</td>
						<td><a href="SOME"></a></td>
						<td><a href="">Stade Tunisien </a> vs <a href="">Ben
								Guerdane</a></td>
						<td><a href="Ticketpayement"><button type="button"
									class="btn btn-default">Réserver tickets</button></a></td>
					</tr>
					<tr>
						<td><a href="">Ligue I</a></td>
						<td>08/06/2016 <br>
						</td>
						<td><a href="SOME"></a></td>
						<td><a href=""> Bizertin </a> vs <a href="">CS Hammam-Lif</a></td>
						<td><a href="Ticketpayement"><button type="button"
									class="btn btn-default">Réserver tickets</button></a></td>
					</tr>
 -->
				</tbody>
			</table>
		</section>
	</div>
</nav>
