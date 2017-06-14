package com.footballreservation.reservation;

import java.util.List;

import com.footballreservation.model.Reservation;

public interface ReservationDao {

	public void persitReservation(Reservation reservation);

	public List<Reservation> getReservation(String ssoId);

	public void updateTickets(String idMatch, int matchTickets, int ticketsBrought);

}
