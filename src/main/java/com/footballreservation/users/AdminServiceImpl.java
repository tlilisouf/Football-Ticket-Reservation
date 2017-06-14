package com.footballreservation.users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.footballreservation.model.Admin;

@Service("AdminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao adminDao;

	public Admin findBySSO(String sso) {
		return adminDao.findBySSO(sso);
	}

	public void updateAdmin(Admin admin) {
		adminDao.updateAdmin(admin);

	}

	public void updatePassWord(String value) {

	}

	public void persistAdmin(Admin admin) {
		adminDao.persistAdmin(admin);

	}

	public void deleteAdmin(String ssoId) {
		adminDao.deleteAdmin(ssoId);

	}

	public List<Admin> searchAdmin(String searchField) {
		return adminDao.searchAdmin(searchField);
	}

	public List<Admin> getAdmins() {
		return adminDao.getAdmins();
	}

	public void updatePassword(String password, String ssoId) {
		adminDao.updatePassword(password, ssoId);

	}

	public void updateAdmin(String ssoId) {
		adminDao.updateAdmin(ssoId);
	}

	public void updateAdmin() {
		// TODO Auto-generated method stub

	}

}
