package com.footballreservation.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.footballreservation.model.Reservation;

@Service("ReservationService")
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	ReservationDao reservationDao;

	public void persitReservation(Reservation reservation) {
		reservationDao.persitReservation(reservation);
	}

	public List<Reservation> getReservation(String ssoId) {
		return reservationDao.getReservation(ssoId);
	}

	public void updateTickets(String idMatch, int matchTickets, int ticketsBrought) {
		reservationDao.updateTickets(idMatch, matchTickets, ticketsBrought);

	}

}
