package com.footballreservation.reservation;

import com.footballreservation.model.Payement;

public interface PayementDao {
	
	public void persistPayement(Payement payement);
	
	public Payement getPayement(int idPayement); 

}
