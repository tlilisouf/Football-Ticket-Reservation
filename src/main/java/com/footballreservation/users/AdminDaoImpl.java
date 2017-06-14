package com.footballreservation.users;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.footballreservation.model.Admin;
import com.footballreservation.reservation.AbstractDao;

@Repository("AdminDao")
public class AdminDaoImpl extends AbstractDao<String, Admin> implements AdminDao {
	@Transactional
	public Admin findBySSO(String sso) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.or(Restrictions.eq("ssoId", sso), Restrictions.eq("email", sso)));
		return (Admin) crit.uniqueResult();
	}

	@Transactional
	public void updateAdmin(Admin admin) {
		update(admin);
	}

	@Transactional
	public void persistAdmin(Admin admin) {
		persist(admin);

	}

	@Transactional
	public void deleteAdmin(String ssoId) {
		deleteAdmin(ssoId);
	}

	@Transactional
	@SuppressWarnings("unchecked")
	public List<Admin> searchAdmin(String searchField) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.or(Restrictions.like("ssoId", searchField, MatchMode.ANYWHERE),
				Restrictions.like("firstName", searchField, MatchMode.ANYWHERE),
				Restrictions.like("lastName", searchField, MatchMode.ANYWHERE),
				Restrictions.like("email", searchField, MatchMode.ANYWHERE),
				Restrictions.like("phone", searchField, MatchMode.ANYWHERE),
				Restrictions.like("address", searchField, MatchMode.ANYWHERE)));
		return (List<Admin>) crit.list();
	}

	@Transactional
	@SuppressWarnings("unchecked")
	public List<Admin> getAdmins() {
		return (List<Admin>) getSession().createQuery("from Admin where ssoId <> 'tlili_souf'").list();
	}

	@Transactional
	public void updatePassword(String password, String ssoId) {
		Query query = getSession().createQuery("update Admin a set a.password =:oldPassword where a.ssoId =:ssoId");
		query.setString("oldPassword", password);
		query.setString("ssoId", ssoId);
		query.executeUpdate();
	}

	public void updateAdmin(String ssoId) {

	}

}
