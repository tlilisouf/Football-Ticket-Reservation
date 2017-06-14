<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapcss" />

<spring:url value="/resources/css/navbar.css" var="navbar" />

<spring:url value="/resources/css/main.css" var="main" />

<link href="${bootstrapcss}" rel="stylesheet" />

<link href="${navbar}" rel="stylesheet" />

<link href="${main}" rel="stylesheet" />

<title>Rechercher administrateurs</title>
</head>

<body>
	<jsp:include page="../Header.jsp" />
	<div class="container margin-nav">
		<div class="row">
			<div class="list-group col-sm-3">
				<a href="SuperAdminAccount" class="list-group-item">Modifier
					compte<a href="AddAdmin" class="list-group-item">Ajouter
						administrateur</a> <a href="AdminsList" class="list-group-item">Afficher
						administrateurs</a> <a href="SearchAdmin"
					class="list-group-item active">Rechercher administrateurs</a>
			</div>
			<div class="col-sm-6">
				<spring:url value="AdminSearch" var="AdminSearch" />
				<form class="form-inline" role="form" method="post"
					action="${AdminSearch }">
					<div class="form-group ">
						<input type="inupt " class="form-control" name="searchAdmin" />
						<button type="submit" class="btn btn-default">Rechercher</button>
					</div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
			</div>
			<section class="col-sm-9 matchManagement">
				<table class="table table-hover text-center">
					<h2 class="block-header text-center">La liste des
						administrateur</h2>
					<thead>
						<tr class="head">
							<td>Pseudo</td>
							<th>Nom</th>
							<th>Prénom</th>
							<th>e-mail</th>
							<th>NumTéléphone</th>
							<th>Modification</th>
							<th>Suppression</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${adminsList}" var="admin">
							<tr>
								<td>${admin.ssoId }</td>
								<td>${admin.firstName }</td>
								<td>${admin.lastName }</td>
								<td>${admin.email }</td>
								<td>${admin.phone }</td>
								<td><a
									href="<c:url value="AdminAccount?userName=${admin.ssoId}"/>"><button
											type="button" class="btn btn-primary">modifier</button></a></td>
								<td><spring:url value="DeleteAdmin" var="DeleteAdmin" />
									<form class="form-inline" role="form" method="post"
										action="${DeleteAdmin}">
										<button type="submit" class="btn btn-primary">Supprimer</button>
										<input type="hidden" name="userName"
											value='<c:out value="${admin.ssoId}"/>' /> <input
											type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
									</form></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>

		</div>

	</div>

	<div class="container" id="CopyRight">
		<div class="row">
			<div class="col-sm-12 text-center">
				&copy; Copyright 2016 -<a href="#">FootBall Reservation</a>
			</div>
		</div>
	</div>

	<spring:url value="/resources/js/jquery-2.2.1.js" var="jquery_url" />

	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrap_url" />

	<spring:url value="/resources/js/script.js" var="script_url" />

	<script src="${jquery_url }" type="text/javascript"></script>

	<script src="${bootstrap_url }" type="text/javascript"></script>

	<script src="${script_url}" type="text/javascript"></script>
</body>

</html>
