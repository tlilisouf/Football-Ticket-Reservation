package com.footballreservation.users;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Repository;

import com.footballreservation.model.User;
import com.footballreservation.reservation.AbstractDao;
import com.footballreservation.reservation.Stuff;

@Repository("UserDao")
public class UserDaoImpl extends AbstractDao<String, User> implements UserDao {

	@Autowired
	private MailSender mailSender;

	@Autowired
	SimpleMailMessage simpleMailMessage;

	@Transactional
	public User findBySSO(String sso) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.or(Restrictions.eq("ssoId", sso), Restrictions.eq("email", sso)));
		return (User) crit.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<User> getUsers() {
		return (List<User>) getSession().createQuery("from User").list();

	}

	@Transactional
	public void persitUser(User user) {
		persist(user);

	}

	@Transactional
	public void updatePassWord(String password) {
		getSession().createQuery("update User u set u.password =:" + password + "");

	}

	@Transactional
	public void updateUser(User user) {
		update(user);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<User> searchUser(String searchField) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.or(Restrictions.like("ssoId", searchField, MatchMode.ANYWHERE),
				Restrictions.like("firstName", searchField, MatchMode.ANYWHERE),
				Restrictions.like("lastName", searchField, MatchMode.ANYWHERE),
				Restrictions.like("email", searchField, MatchMode.ANYWHERE),
				Restrictions.like("phone", searchField, MatchMode.ANYWHERE),
				Restrictions.like("address", searchField, MatchMode.ANYWHERE)));
		return (List<User>) crit.list();
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<User> getInnactifUsers() {
		Criteria crit = createEntityCriteria();
		return crit.add(Restrictions.eq("state", "Innactiv")).list();
	}

	public void sendMail(String toAddress, String fromAddress, String subject, String msgBody) {
		simpleMailMessage.setFrom(fromAddress);
		simpleMailMessage.setTo(toAddress);
		simpleMailMessage.setSubject(subject);
		simpleMailMessage.setText(msgBody);
		mailSender.send(simpleMailMessage);
	}

	@Transactional
	public void updatePassword(String password) {
		Query query = getSession().createQuery("update User u set u.password =:oldPassword where u.ssoId =:ssoId");
		query.setString("oldPassword", password);
		query.setString("ssoId", Stuff.getPrincipal());
		query.executeUpdate();
	}

	@Transactional
	public void changeState(String state, String ssoId) {
		Query query = getSession().createQuery("update User u set u.state =:newState where u.ssoId =:ssoId");
		query.setString("newState", state);
		query.setString("ssoId", ssoId);
		query.executeUpdate();
	}

	@Transactional
	public void deleteUser(String ssoId) {
		Query query = getSession().createQuery("delete from User u where u.ssoId =:ssoId");
		query.setString("ssoId", ssoId);
		query.executeUpdate();
	}

}
