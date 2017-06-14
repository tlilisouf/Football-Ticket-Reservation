package com.footballreservation.matchs;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.footballreservation.model.Match;
import com.footballreservation.model.HistoryMatch;
import com.footballreservation.model.Stadium;
import com.footballreservation.model.Tournament;
import com.footballreservation.reservation.Stuff;

@Controller("MatchController")
public class MatchController {
	private ModelAndView mv;

	@Autowired
	private Match match;

	@Autowired
	private HistoryMatch matchHistory;

	@Autowired
	private MatchService matchService;

	@Autowired
	private Tournament tournament;

	@Autowired
	private Stadium stadium;

	@RequestMapping(value = { "/", "/home" })
	public ModelAndView getHome(HttpServletRequest request) {
		setPopularMatch(request);
		mv = new ModelAndView();
		mv.setViewName("Home");
		return mv;
	}

	@RequestMapping(value = { "/search" }, method = RequestMethod.POST)
	public ModelAndView processSearch(HttpServletRequest request) {
		request.setAttribute("search", matchService.searchContent(request.getParameter("searchContent")));
		setPopularMatch(request);
		mv = new ModelAndView();
		mv.setViewName("Search");
		return mv;
	}

	@RequestMapping(value = { "/Ligue1Pro", "Ligue I" })
	public ModelAndView getLigue1Pro(HttpServletRequest request) {
		setPopularMatch(request);
		mv = new ModelAndView();
		mv.setViewName("Tournament/Ligue1Pro");
		return mv;
	}

	@RequestMapping(value = { "/Ligue2", "Ligue II" })
	public ModelAndView getLigue2(HttpServletRequest request) {
		setPopularMatch(request);
		mv = new ModelAndView();
		mv.setViewName("Tournament/Ligue2");
		return mv;
	}

	@RequestMapping(value = { "/CoupeTunisie", "Coupe Tunisie" })
	public ModelAndView getTunisiaCup(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Coupe Tunisie"));
		setPopularMatch(request);
		mv = new ModelAndView();
		mv.setViewName("Tournament/CoupeTunisie");
		return mv;
	}

	@RequestMapping("/CAF")
	public ModelAndView getCAF(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("CAF"));
		setPopularMatch(request);
		mv = new ModelAndView();
		mv.setViewName("Tournament/CAF");
		return mv;
	}

	@RequestMapping(value = { "/EquipeTunisie", "Equipe Tunisie" })
	public ModelAndView getTunisiaTeam(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Equipe Tunisie"));
		setPopularMatch(request);
		mv = new ModelAndView();
		mv.setViewName("Tournament/EquipeTunisie");
		return mv;
	}

	@RequestMapping(value = { "/EspoirTunisie", "Tunisie Espoir" })
	public ModelAndView getTunisiaTeamEspoir(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Espoir Tunisie"));
		setPopularMatch(request);
		mv = new ModelAndView();
		mv.setViewName("Tournament/EspoirTunisie");
		return mv;
	}

	@RequestMapping("/TicketStadium")
	public ModelAndView getTicketStadium(HttpServletRequest request) {
		setPopularMatch(request);
		mv = new ModelAndView();
		mv.setViewName("TicketStadium");
		return mv;
	}

	@RequestMapping(value = "/AddMatchLigue1")
	public ModelAndView getAddMatchLigue1(HttpServletRequest request) {
		mv = new ModelAndView();
		mv.setViewName("MatchManagement/AddMatchLigue1");
		return mv;
	}

	@RequestMapping(value = "/MatchLigue1Add", method = RequestMethod.POST)
	public ModelAndView addMatchLigue1(HttpServletRequest request) {
		addMatch(request, "Ligue I");
		mv = new ModelAndView();
		try {
			matchService.persitMatch(match);
			matchService.persitMatchHistpry(matchHistory);
			mv.setViewName("MatchManagement/MatchList");
		} catch (DataIntegrityViolationException e) {
			mv.setViewName("MatchManagement/AddMatchLigue1");
			mv.addObject("matchAdd", "Ce match déjà  existe");
			request.setAttribute("match", match);
			request.setAttribute("stadium", stadium);
		}

		return mv;
	}

	@RequestMapping(value = "/AddMatchLigue2")
	public ModelAndView getAddMatchLigue2(HttpServletRequest request) {
		mv = new ModelAndView();
		mv.setViewName("MatchManagement/AddMatchLigue2");
		return mv;
	}

	@RequestMapping(value = "/MatchLigue2Add", method = RequestMethod.POST)
	public ModelAndView addMatchLigue2(HttpServletRequest request) {
		addMatch(request, "Ligue II");
		mv = new ModelAndView();
		try {
			matchService.persitMatch(match);
			mv.setViewName("MatchManagement/MatchList");
		} catch (DataIntegrityViolationException e) {
			mv.setViewName("MatchManagement/AddMatchLigue2");
			mv.addObject("matchAdd", "Ce match déjà  existe");
			request.setAttribute("match", match);
			request.setAttribute("stadium", stadium);
		}
		return mv;
	}

	@RequestMapping(value = "/AddMatchCup")
	public ModelAndView getAddMatchCup() {
		mv = new ModelAndView();
		mv.setViewName("MatchManagement/AddMatchCup");
		return mv;
	}

	@RequestMapping(value = "/MatchCUPAdd", method = RequestMethod.POST)
	public ModelAndView addMatchCup(HttpServletRequest request) {

		addMatch(request, "Coupe Tunisie");
		mv = new ModelAndView();
		try {
			matchService.persitMatch(match);
			mv.setViewName("MatchManagement/MatchList");
		} catch (DataIntegrityViolationException e) {
			mv.addObject("matchAdd", "Ce match déjà  existe");
			request.setAttribute("match", match);
			request.setAttribute("stadium", stadium);
			mv.setViewName("MatchManagement/AddMatchCup");
		}
		return mv;
	}

	@RequestMapping(value = "/AddMatchCAF")
	public ModelAndView getAddMatchCAF() {
		mv = new ModelAndView();
		mv.setViewName("MatchManagement/AddMatchCAF");
		return mv;
	}

	@RequestMapping(value = "/MatchCAFAdd", method = RequestMethod.POST)
	public ModelAndView addMatchCAF(HttpServletRequest request) {
		addMatch(request, "CAF");
		mv = new ModelAndView();
		try {
			matchService.persitMatch(match);
			mv.setViewName("MatchManagement/MatchList");
		} catch (DataIntegrityViolationException e) {
			mv.addObject("matchAdd", "Ce match déjà  existe");
			request.setAttribute("match", match);
			request.setAttribute("stadium", stadium);
			mv.setViewName("MatchManagement/AddMatchCAF");
		}
		return mv;
	}

	@RequestMapping(value = "/AddMatchTunisia")
	public ModelAndView getAddMatchTunisia() {
		mv = new ModelAndView();
		mv.setViewName("MatchManagement/AddMatchTunisia");
		return mv;
	}

	@RequestMapping(value = "/MatchTunisiaAdd", method = RequestMethod.POST)
	public ModelAndView addMatchTunisia(HttpServletRequest request) {
		addMatch(request, "Tunisia");
		mv = new ModelAndView();
		try {
			matchService.persitMatch(match);
			mv.setViewName("MatchManagement/MatchList");
		} catch (DataIntegrityViolationException e) {
			mv.addObject("matchAdd", "Ce match déjà  existe");
			request.setAttribute("match", match);
			request.setAttribute("stadium", stadium);
			mv.setViewName("MatchManagement/AddMatchTunisia");
		}
		return mv;
	}

	@RequestMapping(value = "/AddMatchTunisiaEspoir")
	public ModelAndView getAddMatchTunisiaEspoir() {
		mv = new ModelAndView();
		mv.setViewName("MatchManagement/AddMatchTunisiaEspoir");
		return mv;
	}

	@RequestMapping(value = "/MatchTunisiaEspoirAdd", method = RequestMethod.POST)
	public ModelAndView addMatchTunisiaEspoir(HttpServletRequest request) {

		addMatch(request, "Tunisia Espoir");
		mv = new ModelAndView();
		try {
			matchService.persitMatch(match);
			mv.setViewName("MatchManagement/MatchList");
		} catch (DataIntegrityViolationException e) {
			mv.addObject("matchAdd", "Ce match dÃ©jÃ  existe");
			request.setAttribute("match", match);
			request.setAttribute("stadium", stadium);
			mv.setViewName("MatchManagement/AddMatchTunisiaEspoir");
		}
		return mv;
	}

	@RequestMapping(value = "/MatchList")
	public ModelAndView getMatchList(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("MatchManagement/MatchList");
		return mv;
	}

	@RequestMapping(value = "/SearchMatch")
	public ModelAndView getSearchMatch(HttpServletRequest request) {
		mv = new ModelAndView();
		mv.setViewName("MatchManagement/SearchMatch");
		return mv;
	}

	@RequestMapping(value = "/matchSearch", method = RequestMethod.POST)
	public ModelAndView searchMatch(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.searchContent(request.getParameter("searchMatch")));
		mv = new ModelAndView();
		mv.setViewName("MatchManagement/SearchMatch");
		return mv;
	}

	@RequestMapping(value = "/AlterMatch")
	public ModelAndView alterMatch(HttpServletRequest request) {
		String[] matchParam = request.getParameterValues("match");
		match.setDateMatch(matchParam[1]);
		match.setTeamHome(matchParam[4]);
		match.setTeamAway(matchParam[5]);
		tournament.setTournamentName(matchParam[2]);
		match.setMatchTournament(tournament);
		stadium.setStadiumName(matchParam[3]);
		match.setStadiumMatch(stadium);
		match.setTicketsMatch(Stuff.converToInteger(matchParam[6]));
		match.setMatchTicketPrice(Stuff.converToFloat(matchParam[7]));
		match.setSeat(matchParam[8]);
		request.setAttribute("matchAlter", match);
		mv = new ModelAndView();
		if (match.getMatchTournament().getTournamentName().equals("Ligue I"))
			mv.setViewName("MatchManagement/AddMatchLigue1");
		else if (match.getMatchTournament().getTournamentName().equals("Ligue II"))
			mv.setViewName("MatchManagement/AddMatchLigue2");
		else if (match.getMatchTournament().getTournamentName().equals("Coupe Tunisie"))
			mv.setViewName("MatchManagement/AddMatchCup");
		else if (match.getMatchTournament().getTournamentName().equals("CAF"))
			mv.setViewName("MatchManagement/AddMatchCAF");
		else if (match.getMatchTournament().getTournamentName().equals("Tunisie"))
			mv.setViewName("MatchManagement/AddMatchTunisia");
		else
			mv.setViewName("MatchManagement/MatchList");

		return mv;

	}

	@RequestMapping(value = "/DeleteMatch")
	public ModelAndView deleteMatch(HttpServletRequest request) {
		String[] matchParam = request.getParameterValues("match");
		match.setIdMatch((matchParam[0]));
		mv = new ModelAndView();
		try {
			matchService.deleteMatch(match.getIdMatch());
			mv.setViewName("MatchManagement/AddMatchLigue1");
		} catch (ConstraintViolationException e) {
			mv.setViewName("redirect: /MatchManagement/MatchList");
		}
		return mv;
	}

	private void addMatch(HttpServletRequest request, String tournamentName) {
		match.setDateMatch(request.getParameter("matchDate"));
		match.setMatchComplete(0);
		match.setTicketsMatchSelled(0);
		match.setTeamHome(request.getParameter("teamHome"));
		match.setTeamAway(request.getParameter("teamAway"));
		stadium.setStadiumName(request.getParameter("stadiumMatch"));
		match.setStadiumMatch(stadium);
		tournament.setTournamentName(tournamentName);
		match.setMatchTournament(tournament);
		match.setTicketsMatch(Stuff.converToInteger(request.getParameter("nbTickets")));
		match.setMatchTicketPrice(Stuff.converToFloat(request.getParameter("ticketPrice")));
		match.setSeat(request.getParameter("seat"));
		match.setIdMatch(match.getStadiumMatch().getStadiumName() + match.getDateMatch() + match.getSeat()
				+ match.getTicketsMatch());
		matchHistory.setIdMatch(match.getIdMatch());
		matchHistory.setTeamHome(match.getTeamHome());
		matchHistory.setTeamAway(match.getTeamAway());
		matchHistory.setTournamentName(match.getMatchTournament().getTournamentName());
		matchHistory.setDateMatch(match.getDateMatch());
		matchHistory.setSeat(match.getSeat());
		matchHistory.setStadiumName(match.getStadiumMatch().getStadiumName());
		matchHistory.setMatchTicketPrice(match.getMatchTicketPrice());
	}

	private void setPopularMatch(HttpServletRequest request) {
		request.setAttribute("popularMatchs", matchService.getMatchs());
	}

}
