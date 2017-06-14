<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<header id="header">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span><span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="home">FootBall Reservation</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<spring:url value="search" var="search" />
				<form class="navbar-form navbar-left" role="search"
					action="${search }" method="post">
					<div class="form-group inner-addon right-addon">
						<i class="glyphicon glyphicon-search"></i> <input type="text"
							name="searchContent" class="form-control"
							placeholder="Rechercher">
					</div>
					<button type="submit" class="btn btn-default">Rechercher</button>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
				<ul class="nav navbar-nav">
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">Championats<span
							class="caret"></span> <span class="sr-only">(current)</span></a>
						<ul class="dropdown-menu">
							<li><a href="Ligue1Pro">Ligue I Pro</a></li>
							<li><a href="Ligue2">Ligue II</a></li>

						</ul></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">Coupes<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="CoupeTunisie">Coupe Tunisie</a></li>
							<li><a href="CAF">CAF</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">Sélections<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="EquipeTunisie">Euipe Tunisie</a></li>
							<li><a href="EspoirTunisie">Espoire</a></li>
						</ul></li>
					<li class="dropdown"><a href="TicketStadium">Ticket par
							stade </a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<sec:authorize access="isAnonymous()">
						<li><a href="login"><span
								class="glyphicon glyphicon-log-in"></span>Se connecter</a></li>
						<li><a href="registration"><span
								class="glyphicon glyphicon-user"></span>S'enrigestrer</a></li>
					</sec:authorize>
					<sec:authorize access="hasRole('USER')">
						<li><a href="<c:url value="Profile"/>">Profile</a></li>
					</sec:authorize>

					<sec:authorize access="hasRole('ADMIN')">
						<li><a href="AdminPage">Compte</a></li>
					</sec:authorize>

					<sec:authorize access="hasRole('SUPER')">
						<li><a href="SuperAdminPage">Super Compte</a></li>
					</sec:authorize>

					<sec:authorize access="isAuthenticated()">
						<li><a href="<c:url value="Logout" />">Se déconnecter</a></li>
					</sec:authorize>

				</ul>
			</div>
		</div>
	</nav>
</header>
