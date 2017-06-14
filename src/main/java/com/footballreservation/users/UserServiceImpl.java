package com.footballreservation.users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.footballreservation.model.User;

@Service("UserService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	public User findBySSO(String sso) {
		return userDao.findBySSO(sso);
	}

	public List<User> getUsers() {
		return userDao.getUsers();
	}

	public void persitUser(User user) {
		userDao.persitUser(user);

	}

	public void updateUser(User user) {
		userDao.updateUser(user);

	}

	public List<User> getInnactifUsers() {
		return userDao.getInnactifUsers();
	}

	public List<User> searchUser(String searchField) {
		return userDao.searchUser(searchField);
	}

	public void sendMail(String toAddress, String fromAddress, String subject, String msgBody) {
		userDao.sendMail(toAddress, fromAddress, subject, msgBody);
	}

	public void updatePassword(String password) {
		userDao.updatePassword(password);
	}

	public void changeState(String state, String ssoId) {
		userDao.changeState(state, ssoId);
	}

	public void deleteUser(String ssoId) {
		userDao.deleteUser(ssoId);
	}

}
