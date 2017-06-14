package com.footballreservation.reservation;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.footballreservation.model.Admin;
import com.footballreservation.model.Role;
import com.footballreservation.users.AdminService;

@Service("customAdminDetailsService")
public class CustomAdminDetailsService implements UserDetailsService {
	@Autowired
	private AdminService adminService;

	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String ssoId) throws UsernameNotFoundException {
		Admin admin = adminService.findBySSO(ssoId);
		System.out.println("Admin : " + admin);
		if (admin == null) {
			System.out.println("Admin not found");
			throw new UsernameNotFoundException("Username not found");
		}
		return new org.springframework.security.core.userdetails.User(admin.getSsoId(), admin.getPassword(),
				admin.getState().equals("Actif"), true, true, true, getGrantedAuthorities(admin));
	}

	private List<GrantedAuthority> getGrantedAuthorities(Admin admin) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (Role userRole : admin.getAdminRoles()) {
			authorities.add(new SimpleGrantedAuthority("ROLE_"+userRole.getType()));
		}

		return authorities;
	}

}
