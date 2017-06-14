package com.footballreservation.users;

import java.util.List;

import com.footballreservation.model.Admin;

public interface AdminService {
	public Admin findBySSO(String sso);

	public void updateAdmin(Admin admin);

	public void updatePassWord(String value);

	public void persistAdmin(Admin admin);

	public void deleteAdmin(String ssoId);

	public List<Admin> searchAdmin(String searchField);

	public List<Admin> getAdmins();

	public void updatePassword(String password, String ssoId);

	public void updateAdmin();
}
