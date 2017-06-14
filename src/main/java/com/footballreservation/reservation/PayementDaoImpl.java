package com.footballreservation.reservation;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.footballreservation.model.Payement;

@Repository("PayementDao")
public class PayementDaoImpl extends AbstractDao<Integer, Payement> implements PayementDao {
	@Transactional
	public void persistPayement(Payement payement) {
		persist(payement);

	}

	@Transactional
	public Payement getPayement(int idPayement) {
		return findByKey(idPayement);
	}

}
