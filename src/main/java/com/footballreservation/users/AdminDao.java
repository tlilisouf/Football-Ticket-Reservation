package com.footballreservation.users;

import java.util.List;

import com.footballreservation.model.Admin;

public interface AdminDao {
	public Admin findBySSO(String sso);

	public void persistAdmin(Admin admin);

	public void updateAdmin(Admin admin);

	public void deleteAdmin(String ssoId);

	public List<Admin> searchAdmin(String searchField);

	public List<Admin> getAdmins();

	public void updatePassword(String password, String ssoId);

	public void updateAdmin(String ssoId);

}
