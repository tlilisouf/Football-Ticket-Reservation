<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<section>
	<div class="container" id="welcome">
		<h2 class="text-center block-header">Bien venue sur notre Site!</h2>
		<div>
			<spring:url value="/resources/images/line.png" var="line" />
			<img class="center-block" src="${line}" alt="line" />
		</div>
	</div>
</section>
<section class="info">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="post_info">
					<h3>
						<span class="glyphicon glyphicon-shopping-cart"></span>
					</h3>
					<h3>Pourquoi réserver avec nous !</h3>
					<p>
						100% garantie de remboursement<br> paiement sécurisé<br>
						Réservations jusqu'à dernière minute
					</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="post_info">
					<h3>
						<span class="glyphicon glyphicon-qrcode"></span>
					</h3>
					<h3>Information des billets</h3>
					<p>
						Officiellement fournie par le gouvernement<br> Prix le bas <br>
						délivré instantanément
					</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="post_info">
					<h3>
						<span class="glyphicon glyphicon-usd"></span>
					</h3>
					<h3>Traitement des paiements</h3>
					<p>
						Credit Card<br> MobisFlouss<br>Instantanément
					</p>
				</div>
			</div>
		</div>
	</div>
</section>
