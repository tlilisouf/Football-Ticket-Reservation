package com.footballreservation.reservation;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.footballreservation.matchs.MatchService;
import com.footballreservation.model.HistoryMatch;
import com.footballreservation.model.Match;
import com.footballreservation.model.Payement;
import com.footballreservation.model.Reservation;
import com.footballreservation.model.Stadium;
import com.footballreservation.model.Tournament;
import com.footballreservation.model.User;

@Controller("ReservationController")
public class ReservationController {
	private ModelAndView mv;

	@Autowired
	private User user;

	@Autowired
	private Reservation reservation;

	@Autowired
	private Match match;
	
	@Autowired
	private HistoryMatch matchHistory;

	@Autowired
	private Payement payement;

	@Autowired
	private ReservationService reservationService;

	@Autowired
	private MatchService matchService;

	@Autowired
	private PayementService payementService;

	@Autowired
	private Tournament tournament;

	@Autowired
	private Stadium stadium;

	@RequestMapping(value = "/TicketPayement")
	public ModelAndView getTicketPayement(HttpServletRequest request) {

		String[] matchParam = request.getParameterValues("match");
		match.setIdMatch(matchParam[0]);
		match.setDateMatch(matchParam[1]);
		match.setTeamHome(matchParam[4]);
		match.setTeamAway(matchParam[5]);
		tournament.setTournamentName(matchParam[2]);
		match.setMatchTournament(tournament);
		stadium.setStadiumName(matchParam[3]);
		match.setStadiumMatch(stadium);
		match.setTicketsMatch(Stuff.converToInteger(matchParam[6]));
		match.setMatchTicketPrice(Stuff.converToFloat(matchParam[7]));
		match.setSeat((matchParam[8]));
		request.setAttribute("match", match);
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/TicketPayement");
		return mv;
	}

	@RequestMapping(value = "/payement", method = RequestMethod.POST)
	public ModelAndView processPayement(HttpServletRequest request) {
		int ticketsNB = Stuff.converToInteger(request.getParameter("NBTickets"));
		float ticketPrice = Stuff.converToFloat(request.getParameter("ticketPrice"));
		payement.setDatePayement(getDate());
		payement.setModePayement(request.getParameter("purchase"));
		payement.setPricePayement(ticketPrice * ticketsNB);
		mv.addObject("total", payement.getPricePayement());
		payementService.persistPayement(payement);
		reservation.setReservationPayement(payement);
		String idMatch = request.getParameter("idMatch");
		matchHistory.setIdMatch(idMatch);
		reservation.setMatchReservation(matchHistory);
		user.setSsoId(Stuff.getPrincipal());
		reservation.setUserReservation(user);
		reservation.setAdresseShippement(request.getParameter("shippementAdress"));
		reservation.setTicketsBrought(ticketsNB);
		reservation.setShippementMode(request.getParameter("Shipping"));

		reservationService.persitReservation(reservation);
		reservationService.updateTickets(idMatch, Stuff.converToInteger(request.getParameter("ticketsMatch")),
				reservation.getTicketsBrought());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/UserPayement");
		return mv;
	}

	@RequestMapping(value = "/UserPayement")
	public ModelAndView getPayementHistory(HttpServletRequest request) {
		request.setAttribute("matchReservations", reservationService.getReservation(Stuff.getPrincipal()));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/UserPayement");
		return mv;
	}

	private String getDate() {
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy kk:mm:ss");
		return formatter.format(date);
	}
}
