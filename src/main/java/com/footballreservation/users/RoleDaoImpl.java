package com.footballreservation.users;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.footballreservation.model.Role;
import com.footballreservation.reservation.AbstractDao;

@Repository("RoleDao")
public class RoleDaoImpl extends AbstractDao<Integer, Role> implements RoleDao {

	@Transactional
	public void persistRole(Role role) {
		persist(role);
	}

}
