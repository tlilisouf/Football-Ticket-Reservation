package com.footballreservation.users;

import java.util.List;

import com.footballreservation.model.User;

public interface UserDao {
	public User findBySSO(String sso);

	public List<User> getUsers();

	public List<User> searchUser(String searchField);

	public List<User> getInnactifUsers();

	public void persitUser(User user);

	public void updateUser(User user);

	public void sendMail(String toAddress, String fromAddress, String subject, String msgBody);

	public void updatePassword(String password);
	
	public void changeState(String state, String ssoId);

	public void deleteUser(String ssoId);

}
