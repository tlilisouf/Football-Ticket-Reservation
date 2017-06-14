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
<body>

	<jsp:include page="../Header.jsp" />
	<section class="container">
		<div class="row">
			<div class="jumbotron col-centered col-sm-7 ">
				<span class="morecontent">La Ligue des champions de la CAF
					(ou Orange CAF Champions League), est une compétition annuelle de
					football organisée par la Confidération africaine de football <span>
						et opposant les meilleurs clubs africains. C'est la plus
						prestigieuse des coupes africaines de clubs. Elle était auparavant
						appelée la Coupe d'Afrique des clubs champions. Le tenant du titre
						est le club congolais du Tout Puissant Mazembe.</span> <a href=""
					class="morelink center-block text-center">Lire plus</a>
				</span>
			</div>
		</div>
	</section>
	<div class="container cup-tickets">
		<div class="row">
			<h1 class="text-center text-danger">La Ligue des champions de la
				CAF n'est pas encore organisée en Tunisie</h1>
		</div>
	</div>
	<jsp:include page="../MostPopularTickets.jsp" />
	<jsp:include page="../Footer.jsp" />
	<jsp:include page="../CopyRight.jsp" />

</body>

</html>
