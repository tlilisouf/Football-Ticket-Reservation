package com.footballreservation.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.footballreservation.model.Payement;
@Service("PayementService")
public class PayementServiceImpl implements PayementService {
@Autowired
	PayementDao payementDao;

	public void persistPayement(Payement payement) {
		payementDao.persistPayement(payement);
	}

	public Payement getPayement(int idPayement) {
		return payementDao.getPayement(idPayement);
	}

}
