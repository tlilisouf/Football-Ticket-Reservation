<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="form-group col-sm-9" id="billing_matchDate_field">
	<label for="billing_matchDate" class="col-sm-3 control-label">Date<abbr
		class="required" title="required">*</abbr></label>
	<div class="col-sm-7">
		<div class="input-group date" data-date="20-02-2016">
			<input class="form-control" type="text"
				value='<c:out value="${match.dateMatch } ${matchAlter.dateMatch }"/>'
				name="matchDate" id="matchDate" placeholder=""> <span
				class="input-group-addon"><i
				class="glyphicon glyphicon-calendar"></i></span>
		</div>
	</div>
</div>
<div class="form-group col-sm-9" id="billing_seats">
	<label for="billing_tickets" class="col-sm-3 control-label">Place
		<abbr class="required" title="required">*</abbr>
	</label>
	<div class="col-sm-7">
		<input class="form-control" type="text" name="seat" id="seat"
			value='<c:out value="${match.seat }${matchAlter.seat }"/>' required />
	</div>
</div>
<div class="form-group col-sm-9" id="billing_tickets">
	<label for="billing_tickets" class="col-sm-3 control-label">Nombre
		de tickets <abbr class="required" title="required">*</abbr>
	</label>
	<div class="col-sm-7">
		<input class="form-control" type="text" name="nbTickets"
			id="nbTickets"
			value='<c:out value="${match.ticketsMatch }${matchAlter.ticketsMatch }"/>'
			required />
	</div>
</div>
<div class="form-group col-sm-9" id="billing_price">
	<label for="billing_price" class="col-sm-3 control-label">Prix
		<abbr class="required" title="required">*</abbr>
	</label>
	<div class="col-sm-7">
		<input class="form-control" type="text" name="ticketPrice"
			id="ticketPrice"
			value='<c:out value="${match.matchTicketPrice }${matchAlter.matchTicketPrice }" />'
			required />

	</div>
</div>
<div class="form-group col-sm-9">
	<label class="col-sm-3 control-label">Captcha<abbr
		class="required" title="required">*</abbr></label>
	<div class="col-sm-7">
		<div id="captchaContainer"></div>
	</div>
</div>

<div class="form-group">
	<div class="col-sm-offset-2 col-sm-9">
		<button type="submit" class="btn btn-primary">Valider</button>
		<button type="button" class="btn btn-default" id="resetButton">Reset</button>
	</div>
</div>