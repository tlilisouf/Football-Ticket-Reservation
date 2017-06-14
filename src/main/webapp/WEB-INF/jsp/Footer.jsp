<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url
	value="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	var="fontAwesome" />

<link href="${fontAwesome}" rel="stylesheet" />

<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4">
				<h4 class="message">Envoyer un message</h4>
				<spring:url value="sendMail" var="sendMail" />
				<form class="contact-form" method="post" action="${sendMail }" id="sendMail">
					<p class="contact-form-name">
						<label for="name">Nom <span class="required">*</span></label> <input
							type="text" aria-required="true" size="30" value="" name="name"
							id="name" class="form-control" placeholder="Name" required="">
					</p>
					<p class="contact-form-email">
						<label for="email">Email <span class="required">*</span></label> <input
							type="email" aria-required="true" value="" name="email"
							id="email" class="form-control" placeholder="Email" required="">
					</p>
					<p class="contact-form-subject">
						<label for="subject">Sujet <span class="required">*</span></label>
						<input type="text" aria-required="true" size="30" value=""
							name="subject" id="subject" class="form-control"
							placeholder="Subject" required="">
					</p>
					<p class="contact-form-message">
						<label for="message">Message</label>
						<textarea aria-required="true" rows="8" cols="45" name="message"
							id="message" class="form-control" placeholder="Message" required=""></textarea>
					</p>
					<p class="contact-form-submit vertical-margin-40">
						<input type="submit" value="Envoyer" id="contact_form_submit"
							name="contact_submit" class="btn btn-primary">
					</p>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
			</div>
			<div class=" col-md-4 col-sm-4">
				<h4 class="aboutus">A propos nous</h4>
				<p>
					FootballReservation.com <br> <span><strong>Phone:</strong>
					</span>(+216) 23380638 <br> <span><strong>Email:</strong> </span> <a
						href="mailto:info@FootballReservation.com">info@FootballReservation.com</a>
					<br>Notre objectif est simple: rendre les tickets disponibles
					pour tous le monde en fournissant un service clientel de qualité.
				</p>
			</div>
			<div class="col-md-4 col-sm-4">
				<h4 class="followUs">Suivez nous</h4>
				<div id="social-bar">

					<a href="Facebook"><i class="fa fa-facebook-square fa-2x"></i></a>
					<a href="Twitter"><i class="fa fa-twitter fa-2x"></i></a> <a
						href="GooglePlus"><i class="fa fa-google-plus fa-2x"></i></a>
				</div>
			</div>
		</div>
	</div>
</footer>