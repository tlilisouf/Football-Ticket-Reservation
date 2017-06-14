package com.footballreservation.matchs;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.footballreservation.model.Match;

@Controller("TeamController")
public class TeamController {
	private ModelAndView mv;

	@Autowired
	Match match;

	@Autowired
	MatchService matchService;

	@RequestMapping(value = { "/ASK", "Avenir Sportif Kasserine" })
	public ModelAndView getASK(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Avenir Sportif Kasserine"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/ASK");
		return mv;
	}

	@RequestMapping(value = { "/ASM", "Avenir Sportif de la Marsa" })
	public ModelAndView getASM(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Avenir Sportif de la Marsa"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/ASM");
		return mv;
	}

	@RequestMapping(value = { "/CA", "Club Africain" })
	public ModelAndView getCA(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Club Africain"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/CA");
		return mv;
	}

	@RequestMapping(value = { "/CAB", "Club Africain Bizertin" })
	public ModelAndView getCAB(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Club Africain Bizertin"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/CAB");
		return mv;
	}

	@RequestMapping(value = { "/CSHL", "Club Sportif Hammam-Lif" })
	public ModelAndView getCSHL(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Club Sportif Hammam-Lif"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/CSHL");
		return mv;
	}

	@RequestMapping(value = { "/CSS", "Club Sportif Sfaxien" })
	public ModelAndView getCSS(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Club Sportif Sfaxien"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/CSS");
		return mv;
	}

	@RequestMapping(value = { "/EGSG", "El Gawafel sportives Gafsa" })
	public ModelAndView getEGSG(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("El Gawafel sportives Gafsa"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/EGSG");
		return mv;
	}

	@RequestMapping(value = { "/EOSB", "Etoile olympique Sidi Bouzid" })
	public ModelAndView getEOSB(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Etoile olympique Sidi Bouzid"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/EOSB");
		return mv;
	}

	@RequestMapping(value = { "/ESM", "Etoile Sportif Metlaoui" })
	public ModelAndView getESM(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Etoile Sportif Metlaoui"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/ESM");
		return mv;
	}

	@RequestMapping(value = { "/ESS", "Etoile Sportif Sahel" })
	public ModelAndView getESS(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Etoile Sportif Sahel"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/ESS");
		return mv;
	}

	@RequestMapping(value = { "/EST", "Esperance Sportive Tunis" })
	public ModelAndView getEST(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Espérance Sportive Tunis"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/EST");
		return mv;
	}

	@RequestMapping(value = { "/ESZ", "Esperance Sportive Zarzis" })
	public ModelAndView getESZ(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Espérance Sportive Zarzis"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/ESZ");
		return mv;
	}

	@RequestMapping(value = { "/JSK", "Jeunes Sportives Kairouan" })
	public ModelAndView getJSK(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Jeunes Sportives Kairouan"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/JSK");
		return mv;
	}

	@RequestMapping(value = { "/SG", "Stade Gabesien" })
	public ModelAndView getSG(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Gabesien"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/SG");
		return mv;
	}

	@RequestMapping(value = { "/ST", "Stade Tunisien" })
	public ModelAndView getST(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Tunisien"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/ST");
		return mv;
	}

	@RequestMapping(value = { "/USBG", "Union Sportive Ben Guerdane" })
	public ModelAndView getUSBG(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Union Sportive Ben Guerdane"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue1Tickets/USBG");
		return mv;
	}

	// Ligue 2 Controller

	@RequestMapping(value = { "/ASD", "Association Sportive de Djerba" })
	public ModelAndView getASD(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Association Sportive de Djerba"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/ASD");
		return mv;
	}

	@RequestMapping(value = { "/ASA", "Association sportive de l'Ariana" })
	public ModelAndView getASA(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Association sportive de l'Ariana"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/ASA");
		return mv;
	}

	@RequestMapping(value = { "/ASG", "Avenir sportif de Gabes" })
	public ModelAndView getASG(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Avenir sportif de Gabes"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/ASG");
		return mv;
	}

	@RequestMapping(value = { "/CSK", "Club Sportif de Korba" })
	public ModelAndView getCSK(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Club Sportif de Korba"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/CSK");
		return mv;
	}

	@RequestMapping(value = { "/CSM", "Croissant Sportif de M'saken" })
	public ModelAndView getCSM(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Croissant Sportif de M'saken"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/CSM");
		return mv;
	}

	@RequestMapping(value = { "/EMM", "El Makarem de Mahdia" })
	public ModelAndView getEMM(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("El Makarem de Mahdia"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/EMM");
		return mv;
	}

	@RequestMapping(value = { "/ESHS", "ES de Hammam Sousse" })
	public ModelAndView getESHS(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("ES de Hammam Sousse"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/ESHS");
		return mv;
	}

	@RequestMapping(value = { "/FCH", "Football Club Hammamet" })
	public ModelAndView getFCH(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Football Club Hammamet"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/FCH");
		return mv;
	}

	@RequestMapping(value = { "/GS", "Grombalia Sports" })
	public ModelAndView getGS(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Grombalia Sports"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/GS");
		return mv;
	}

	@RequestMapping(value = { "/JS", "Jendouba Sport" })
	public ModelAndView getJS(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Jendouba Sport"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/JS");
		return mv;
	}

	@RequestMapping(value = { "/OB", "Olympique de Beja" })
	public ModelAndView getOB(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Olympique de Beja"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/OB");
		return mv;
	}

	@RequestMapping(value = { "/OK", "Olympique du Kef" })
	public ModelAndView getOK(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Olympique du Kef"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/OK");
		return mv;
	}

	@RequestMapping(value = { "/SSZ", "S. Sportif de Zarzouna" })
	public ModelAndView getSSZ(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("S. Sportif de Zarzouna"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/SSZ");
		return mv;
	}

	@RequestMapping(value = { "/SRS", "Sfax railways Sports" })
	public ModelAndView getSRS(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Sfax railways Sports"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/SRS");
		return mv;
	}

	@RequestMapping(value = { "/SSS", "Stade Sportif Sfaxien" })
	public ModelAndView getSSS(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Sportif Sfaxien"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/SSS");
		return mv;
	}

	@RequestMapping(value = { "/SCBA", "Sporting Club de Ben Arous" })
	public ModelAndView getSCBA(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Sporting Club de Ben Arous"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/SCBA");
		return mv;
	}

	@RequestMapping(value = { "/USM", "Union S. Monastirienne" })
	public ModelAndView getUSM(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Union S. Monastirienne"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/USM");
		return mv;
	}

	@RequestMapping(value = { "/USS", "US Sbeitla" })
	public ModelAndView getUSS(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("US Sbeitla"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/USS");
		return mv;
	}

	@RequestMapping(value = { "/UST", "Union Sportive de Tataouine" })
	public ModelAndView getUST(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Union Sportive de Tataouine"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("Ligue2Tickets/UST");
		return mv;
	}

}
