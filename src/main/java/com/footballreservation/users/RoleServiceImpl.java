package com.footballreservation.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.footballreservation.model.Role;

@Service("RoleService")
public class RoleServiceImpl implements RoleService {
	@Autowired
	RoleDao roleDao;

	public void persist(Role role) {
		roleDao.persist(role);
	}

}
