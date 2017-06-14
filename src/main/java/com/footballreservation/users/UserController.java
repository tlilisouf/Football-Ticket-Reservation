package com.footballreservation.users;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.footballreservation.matchs.MatchService;
import com.footballreservation.model.Admin;
import com.footballreservation.model.Role;
import com.footballreservation.model.User;
import com.footballreservation.reservation.Stuff;

@Controller("UserController")
public class UserController {

	private ModelAndView mv;

	@Autowired
	private User user;

	@Autowired
	private UserService userService;

	@Autowired
	private Role role;

	@Autowired
	private Admin admin;

	@Autowired
	private AdminService adminService;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private MatchService matchService;

	// Client Controller

	@RequestMapping("/registration")
	public ModelAndView getRegistration(HttpServletRequest request) {
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/Register");
		return mv;
	}

	@RequestMapping(value = "/userRegistration", method = RequestMethod.POST)
	public ModelAndView processRegistration(HttpServletRequest request) {
		user.setTown(request.getParameter("gouvernorat"));
		user.setRegion(request.getParameter("delegation").toString());
		user.setSsoId(request.getParameter("userName"));
		user.setState("Actif");
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setBirthday(request.getParameter("birthday"));
		user.setPassword(passwordEncoder.encode(request.getParameter("passwordRegister")));
		user.setCompany(request.getParameter("comapanyName"));
		user.setAddress(request.getParameter("address1"));
		user.setEmail(request.getParameter("email"));
		user.setPhone(request.getParameter("phoneNumber"));
		user.setSex(request.getParameter("sex"));
		role.setIdRole(1);
		role.setType("USER");
		user.setUserRole(role);

		mv = new ModelAndView();

		if (verifyUserNameDB(user.getSsoId()) == false) {
			if (verifyEmailDB(user.getEmail()) == false) {
				userService.persitUser(user);
				mv.setViewName("UserManagement/Login");
			} else {
				request.setAttribute("userRegister", user);
				mv.addObject("invalidEmail", "Email déjà utilisé");
				mv.setViewName("UserManagement/Register");
			}
		} else {
			mv.setViewName("UserManagement/Register");
			request.setAttribute("userRegister", user);
			if (verifyUserNameDB(user.getSsoId()))
				mv.addObject("invalidUser", "pseudonyme déjà utilisé");
			if (verifyEmailDB(user.getEmail()))
				mv.addObject("invalidEmail", "Email déjà utilisé");
		}
		return mv;

	}

	private boolean verifyUserNameDB(String sooId) {
		try {
			if ((userService.findBySSO(sooId).equals(sooId)))
				return true;
		} catch (NullPointerException ex) {
			return false;
		}
		return true;

	}

	private boolean verifyEmailDB(String email) {
		try {
			if ((userService.findBySSO(email).equals(email)))
				return true;
		} catch (NullPointerException ex) {
			return false;
		}
		return true;
	}

	private boolean verifyAdminNameDB(String sooId) {
		try {
			if ((adminService.findBySSO(sooId).equals(sooId)))
				return true;
		} catch (NullPointerException ex) {
			return false;
		}
		return true;

	}

	private boolean verifyAdminEmailDB(String email) {
		try {
			if ((adminService.findBySSO(email).equals(email)))
				return true;
		} catch (NullPointerException ex) {
			return false;
		}
		return true;
	}

	@RequestMapping("/login")
	public ModelAndView getLogin(HttpServletRequest request) {
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/Login");
		return mv;
	}

	@RequestMapping("/PasswordForgot")
	public ModelAndView getPasswordForgot(HttpServletRequest request) {
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/PasswordForgot");
		return mv;
	}

	@RequestMapping(value = "/requestPassword", method = RequestMethod.POST)
	public ModelAndView processPasswordForgot(HttpServletRequest request) {
		String toAddr = "tlilihope@gmail.com";
		String fromAddr = request.getParameter("email");
		String subject = "Request password from " + Stuff.getPrincipal();
		String body = "Forgot password";

		userService.sendMail(toAddr, fromAddr, subject, body);
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/Login");
		return mv;
	}

	@RequestMapping("/failAuth")
	public ModelAndView failAuth(HttpServletRequest request) {
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.addObject("error", "true");
		mv.addObject("userName", request.getParameter("username"));
		mv.addObject("password", request.getParameter("password"));
		mv.setViewName("UserManagement/Login");
		return mv;
	}

	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}

	@RequestMapping("/Profile")
	public ModelAndView getProfile(HttpServletRequest request) {
		request.setAttribute("userProfile", userService.findBySSO(Stuff.getPrincipal()));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/Profile");
		return mv;
	}

	@RequestMapping("/PasswordAlter")
	public ModelAndView getPasswordAlter(HttpServletRequest request) {
		request.setAttribute("actualPassword", userService.findBySSO(Stuff.getPrincipal()));
		request.setAttribute("popularMatchs", matchService.getMatchs());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/PasswordAlter");
		return mv;
	}

	@RequestMapping(value = "/profileAlter", method = RequestMethod.POST)
	public ModelAndView processProfileAlter(HttpServletRequest request) {
		user.setSsoId(Stuff.getPrincipal());
		user.setState("Actif");
		user.setTown(request.getParameter("gouvernorat"));
		user.setRegion(request.getParameter("delegation"));
		user.setSex(request.getParameter("sex"));
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setBirthday(request.getParameter("birthday"));
		user.setCompany(request.getParameter("comapanyName"));
		user.setAddress(request.getParameter("address1"));
		user.setEmail(request.getParameter("email"));
		user.setPhone(request.getParameter("phoneNumber"));
		user.setPassword(request.getParameter("password"));
		role.setIdRole(1);
		role.setType("USER");
		user.setUserRole(role);
		userService.updateUser(user);
		mv = new ModelAndView();
		mv.setViewName("UserManagement/Profile");
		return mv;
	}

	@RequestMapping(value = "/passwordUserAlter", method = RequestMethod.POST)
	public ModelAndView processPassword(HttpServletRequest request) {
		user.setPassword(passwordEncoder.encode(request.getParameter("NewPassword")));
		userService.updatePassword(user.getPassword());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/Profile");
		return mv;

	}

	@RequestMapping(value = "/UsersList")
	public ModelAndView getUsersList(HttpServletRequest request) {

		List<User> users = userService.getUsers();
		request.setAttribute("usersList", users);
		mv = new ModelAndView();
		mv.setViewName("UserManagement/UsersList");
		return mv;
	}

	@RequestMapping(value = "/searchMember")
	public ModelAndView getSearchMember() {
		mv = new ModelAndView();
		mv.setViewName("UserManagement/searchMember");
		return mv;
	}

	@RequestMapping(value = "/MemberSearch", method = RequestMethod.POST)
	public ModelAndView searchMember(HttpServletRequest request) {
		List<User> users = userService.searchUser(request.getParameter("searchUser"));
		request.setAttribute("usersList", users);
		mv = new ModelAndView();
		mv.setViewName("UserManagement/searchMember");
		return mv;
	}

	@RequestMapping(value = "/InnactivUsers")
	public ModelAndView getInnactivUsers(HttpServletRequest request) {

		List<User> users = userService.getInnactifUsers();
		request.setAttribute("usersList", users);
		mv = new ModelAndView();
		mv.setViewName("UserManagement/InnactivUsers");
		return mv;
	}

	@RequestMapping(value = "/ChangeState")
	public ModelAndView changeState(HttpServletRequest request) {
		String[] userParams = request.getParameterValues("user");
		user.setSsoId(userParams[0]);
		if (userService.findBySSO(user.getSsoId()).getState().equals("Actif"))
			userService.changeState("Inactif", user.getSsoId());
		else
			userService.changeState("Actif", user.getSsoId());

		mv = new ModelAndView();
		mv.setViewName("UserManagement/InnactivUsers");
		return mv;
	}

	@RequestMapping(value = "/DeleteUser")
	public ModelAndView deleteUser(HttpServletRequest request) {
		String[] userParams = request.getParameterValues("user");
		user.setSsoId(userParams[0]);
		userService.deleteUser(user.getSsoId());
		mv = new ModelAndView();
		mv.setViewName("UserManagement/UsersList");
		return mv;
	}

	@RequestMapping(value = "/sendMail", method = RequestMethod.POST)
	public ModelAndView sendMail(HttpServletRequest request) {

		String toAddr = "tlilihope@gmail.com";
		String fromAddr = request.getParameter("email");
		String subject = request.getParameter("subject");
		String body = request.getParameter("message");
		userService.sendMail(toAddr, fromAddr, subject, body);
		mv = new ModelAndView();
		mv.setViewName("Home");
		return mv;
	}

	@RequestMapping(value = "/Facebook")
	public ModelAndView getFBOfficialPage() {
		return new ModelAndView("redirect:https://www.facebook.com");
	}

	@RequestMapping(value = "/Twitter")
	public ModelAndView getTwitterOfficialPage() {
		return new ModelAndView("redirect:https://twitter.com");
	}

	@RequestMapping(value = "/GooglePlus", method = RequestMethod.GET)
	public ModelAndView getGooglePlusOfficialPage() {
		return new ModelAndView("redirect:https://plus.google.com");
	}

	// Super Admin Controller

	@RequestMapping(value = "/SuperAdminPage")
	public ModelAndView getSuperAdminPage() {
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/SuperAdminPage");
		return mv;
	}

	@RequestMapping(value = "/SuperAdminAccount")
	public ModelAndView getSuperAdminAccount(HttpServletRequest request) {
		request.setAttribute("admin", adminService.findBySSO(Stuff.getPrincipal()));
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/SuperAdminAccount");
		return mv;
	}

	@RequestMapping(value = "/SuperAdminAccountAlter", method = RequestMethod.POST)
	public ModelAndView processSuperAdminAccount(HttpServletRequest request) {
		admin.setSsoId(Stuff.getPrincipal());
		admin.setState("Actif");
		admin.setTown(request.getParameter("gouvernorat"));
		admin.setRegion(request.getParameter("delegation"));
		admin.setSex(request.getParameter("sex"));
		admin.setFirstName(request.getParameter("firstName"));
		admin.setLastName(request.getParameter("lastName"));
		admin.setBirthday(request.getParameter("birthday"));
		admin.setCompany(request.getParameter("comapanyName"));
		admin.setAddress(request.getParameter("address1"));
		admin.setEmail(request.getParameter("email"));
		admin.setPhone(request.getParameter("phoneNumber"));
		admin.setPassword(request.getParameter("password"));
		role.setIdRole(3);
		role.setType("SUPER");
		Set<Role> roles = new HashSet<Role>();
		roles.add(role);
		admin.setAdminRoles(roles);
		mv = new ModelAndView();
		adminService.updateAdmin(admin);
		// try {
		//
		// mv.setViewName("AdminManagement/SuperAdminAccount");
		// } catch (DataIntegrityViolationException ex) {
		// mv.setViewName("AdminManagement/SuperAdminAccount");
		// request.setAttribute("admin", admin);
		// }
		mv.setViewName("AdminManagement/SuperAdminAccount");
		return mv;
	}

	@RequestMapping(value = "/SuperAdminPasswordAlter")
	public ModelAndView getSuperAdminPasswordAlter(HttpServletRequest request) {

		request.setAttribute("actualPassword", adminService.findBySSO(Stuff.getPrincipal()));
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/SuperAdminPasswordAlter");
		return mv;
	}

	@RequestMapping(value = "/SuperAdminAlterPassword", method = RequestMethod.POST)
	public ModelAndView processSuperAdminPassword(HttpServletRequest request) {
		admin.setPassword(passwordEncoder.encode(request.getParameter("NewPassword")));
		adminService.updatePassword(admin.getPassword(), Stuff.getPrincipal());
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/SuperAdminAccount");
		return mv;
	}

	// Admin controller

	@RequestMapping(value = "/AddAdmin")
	public ModelAndView getAdminAdd() {
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/AddAdmin");
		return mv;
	}

	@RequestMapping(value = "/AdminRegistration", method = RequestMethod.POST)
	public ModelAndView processAdminRegistration(HttpServletRequest request) {
		admin.setSsoId(request.getParameter("userName"));
		admin.setState("Actif");
		admin.setPassword(passwordEncoder.encode(request.getParameter("passwordRegister")));
		admin.setTown(request.getParameter("gouvernorat"));
		admin.setSex(request.getParameter("sex"));
		admin.setRegion(request.getParameter("delegation"));
		admin.setFirstName(request.getParameter("firstName"));
		admin.setLastName(request.getParameter("lastName"));
		admin.setBirthday(request.getParameter("birthday"));
		admin.setCompany(request.getParameter("comapanyName"));
		admin.setAddress(request.getParameter("address1"));
		admin.setEmail(request.getParameter("email"));
		admin.setPhone(request.getParameter("phoneNumber"));
		role.setIdRole(2);
		role.setType("ADMIN");
		Set<Role> roles = new HashSet<Role>();
		roles.add(role);
		admin.setAdminRoles(roles);
		mv = new ModelAndView();
		if (verifyAdminNameDB(admin.getSsoId()) == false) {
			if (verifyAdminEmailDB(admin.getEmail()) == false) {
				adminService.persistAdmin(admin);
				mv.setViewName("AdminManagement/AdminsList");
			} else {
				request.setAttribute("adminRegister", admin);
				mv.addObject("invalidEmail", "Email déjà utilisé");
				mv.setViewName("AdminManagement/AddAdmin");
			}
		} else {
			mv.setViewName("AdminManagement/AddAdmin");
			request.setAttribute("adminRegister", admin);
			if (verifyUserNameDB(admin.getSsoId()))
				mv.addObject("invalidUser", "Pseudonyme déjà utilisé");
			if (verifyEmailDB(admin.getEmail()))
				mv.addObject("invalidEmail", "Email déjà utilisé");
		}
		return mv;
	}

	@RequestMapping(value = "/DeleteAdmin", method = RequestMethod.POST)
	public ModelAndView processAdminDelete(HttpServletRequest request) {
		mv = new ModelAndView();
		try {
			adminService.deleteAdmin(request.getParameter("userName"));
			mv.setViewName("AdminManagement/AdminsList");
		} catch (StackOverflowError ex) {
			mv.setViewName("AdminManagement/AdminsList");
		}
		return mv;
	}

	@RequestMapping(value = "/AdminPage")
	public ModelAndView getAdminPage() {
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/AdminPage");
		return mv;
	}

	@RequestMapping(value = "/AdminAccount")
	public ModelAndView getAdminAccount(HttpServletRequest request) {
		request.setAttribute("admin", adminService.findBySSO(request.getParameter("userName")));
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/AdminAccount");
		return mv;
	}

	@RequestMapping(value = "/profileForm", method = RequestMethod.POST)
	public ModelAndView processAdminAccount(HttpServletRequest request) {
		admin.setTown(request.getParameter("gouvernorat"));
		admin.setState("Actif");
		admin.setPassword(request.getParameter("password"));
		admin.setRegion(request.getParameter("delegation"));
		admin.setSex(request.getParameter("sex"));
		admin.setSsoId(request.getParameter("userName"));
		admin.setFirstName(request.getParameter("firstName"));
		admin.setLastName(request.getParameter("lastName"));
		admin.setBirthday(request.getParameter("birthday"));
		admin.setCompany(request.getParameter("comapanyName"));
		admin.setAddress(request.getParameter("address1"));
		admin.setEmail(request.getParameter("email"));
		admin.setPhone(request.getParameter("phoneNumber"));
		admin.setPassword(request.getParameter("password"));
		role.setIdRole(2);
		role.setType("ADMIN");
		Set<Role> roles = new HashSet<Role>();
		roles.add(role);
		admin.setAdminRoles(roles);
		mv = new ModelAndView();
		adminService.updateAdmin(admin);
		mv.setViewName("AdminManagement/AdminsList");
		return mv;
	}

	@RequestMapping(value = "/AdminPasswordAlter")
	public ModelAndView getAdminPasswordAlter(HttpServletRequest request) {
		String ssoId = request.getParameter("userName");
		admin = adminService.findBySSO(ssoId);
		request.setAttribute("actualPassword", admin.getPassword());
		request.setAttribute("userName", admin.getSsoId());
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/AdminPasswordAlter");
		return mv;
	}

	@RequestMapping(value = "/alterPassword", method = RequestMethod.POST)
	public ModelAndView processAdminPassword(HttpServletRequest request) {
		admin.setPassword(passwordEncoder.encode(request.getParameter("NewPassword")));
		adminService.updatePassword(admin.getPassword(), request.getParameter("userName"));
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/AdminAccount");
		return mv;
	}

	@RequestMapping(value = "/AdminsList")
	public ModelAndView getAdminsList(HttpServletRequest request) {
		List<Admin> admins = adminService.getAdmins();
		request.setAttribute("adminsList", admins);
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/AdminsList");
		return mv;
	}

	@RequestMapping(value = "/SearchAdmin")
	public ModelAndView getAdminSearch() {
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/SearchAdmin");
		return mv;
	}

	@RequestMapping(value = "/AdminSearch", method = RequestMethod.POST)
	public ModelAndView searchAdmin(HttpServletRequest request) {

		List<Admin> admins = adminService.searchAdmin(request.getParameter("searchAdmin"));
		request.setAttribute("adminsList", admins);
		mv = new ModelAndView();
		mv.setViewName("AdminManagement/SearchAdmin");
		return mv;
	}
}
