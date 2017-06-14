package com.footballreservation.matchs;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller("StadiumController")
public class StadiumController {
	private ModelAndView mv;

	@Autowired
	MatchService matchService;

	@RequestMapping(value = { "/SOR", "Stade olympique Rades" })
	public ModelAndView getSOR(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade olympique Rades"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SOR");
		return mv;
	}

	@RequestMapping(value = { "/SOME", "Stade olympique Menzah" })
	public ModelAndView getSOME(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade olympique Menzah"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SOME");
		return mv;
	}

	@RequestMapping(value = { "/OS", "Stade olympique Sousse" })
	public ModelAndView getOS(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade olympique Sousse"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SOS");
		return mv;
	}

	@RequestMapping(value = { "/SMBJ", "Stade Mustapha Ben Jennet" })
	public ModelAndView getSMBJ(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Mustapha Ben Jennet"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SMBJ");
		return mv;
	}

	@RequestMapping(value = { "/S15O", "Stade du 15-Octobre" })
	public ModelAndView getS15O(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade du 15-Octobre"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/S15O");
		return mv;
	}

	@RequestMapping(value = { "/SCHZ", "Stade Chedly-Zouiten" })
	public ModelAndView getSCHZ(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Chedly-Zouiten"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SCHZ");
		return mv;
	}

	@RequestMapping(value = { "/SAZ", "Stade Ali-Zouaoui" })
	public ModelAndView getSAZ(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Ali-Zouaoui"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SAZ");
		return mv;
	}

	@RequestMapping(value = { "/STM", "Stade Taieb Mehiri" })
	public ModelAndView getSTM(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Taieb Mehiri"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/STM");
		return mv;
	}

	@RequestMapping(value = { "/SOGE", "Stade Olympique Gabes" })
	public ModelAndView getSOGE(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Olympique Gabes"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SOGE");
		return mv;
	}

	@RequestMapping(value = { "/SBK", "Stade Boujemaa Kmiti" })
	public ModelAndView getSBK(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Boujemaa Kmiti"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SBK");
		return mv;
	}

	@RequestMapping(value = { "/SM", "Stade de Midoun" })
	public ModelAndView getSM(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade de Midoun"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SM");
		return mv;
	}

	@RequestMapping(value = { "/SMHL", "Stade municipal Hammam Lif" })
	public ModelAndView getSMHL(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade municipal Hammam Lif"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SMHL");
		return mv;
	}

	@RequestMapping(value = { "/SK", "Stade du Kef" })
	public ModelAndView getSK(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade du Kef"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SK");
		return mv;
	}

	@RequestMapping(value = { "/SJ", "Stade Jlidi" })
	public ModelAndView getSJ(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Jlidi"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SJ");
		return mv;
	}

	@RequestMapping(value = { "/SOG", "Stade olympique de Gafsa" })
	public ModelAndView getSOG(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade olympique de Gafsa"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SOG");
		return mv;
	}

	@RequestMapping(value = { "/SACH", "Stade olympique de Gafsa" })
	public ModelAndView getSACH(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade olympique de Gafsa"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SACH");
		return mv;
	}

	@RequestMapping(value = { "/SHS", "Stade de Houmt Souk" })
	public ModelAndView getSHS(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade de Houmt Souk"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("../StadiumTickets/SHS");
		return mv;
	}

	@RequestMapping(value = { "/SOM", "Stade olympique de Medenine" })
	public ModelAndView getSOM(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade olympique de Medenine"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SOM");
		return mv;
	}

	@RequestMapping(value = { "/SHT", "Stade Habib-Tajouri" })
	public ModelAndView getSHT(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Habib-Tajouri"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("../StadiumTickets/SHT");
		return mv;
	}

	@RequestMapping(value = { "/SHL", "Stade Hamda-Laouani" })
	public ModelAndView getSHL(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Hamda-Laouani"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SHL");
		return mv;
	}

	@RequestMapping(value = { "/SFH", "Stade Farhat-Hached" })
	public ModelAndView getSFH(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade Farhat-Hached"));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SFH");
		return mv;
	}

	@RequestMapping(value = { "/MK", "Stade municipal Kasserine" })
	public ModelAndView getMK(HttpServletRequest request) {
		request.setAttribute("matchsList", matchService.findMatch("Stade municipal Kasserine"));
		request.setAttribute("popularMatchs", matchService.getMatchs());

		mv = new ModelAndView();
		mv.setViewName("StadiumTickets/SMK");
		return mv;
	}
}
