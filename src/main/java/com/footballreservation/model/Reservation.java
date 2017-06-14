package com.footballreservation.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Reservation")
public class Reservation {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idReservation;

	@Column(name = "shippementMode", nullable = true)
	private String shippementMode;

	@Column(name = "adresseShippement", nullable = true)
	private String adresseShippement;

	@Column(name = "ticketsBrought", nullable = true)
	private int ticketsBrought;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idMatch")
	private HistoryMatch matchReservation;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ssoId")
	private User userReservation;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idPayement")
	private Payement reservationPayement;

	public int getIdReservation() {
		return idReservation;
	}

	public void setIdReservation(int idReservation) {
		this.idReservation = idReservation;
	}

	public String getShippementMode() {
		return shippementMode;
	}

	public void setShippementMode(String shippementMode) {
		this.shippementMode = shippementMode;
	}

	public String getAdresseShippement() {
		return adresseShippement;
	}

	public void setAdresseShippement(String adresseShippement) {
		this.adresseShippement = adresseShippement;
	}

	public int getTicketsBrought() {
		return ticketsBrought;
	}

	public void setTicketsBrought(int ticketsBrought) {
		this.ticketsBrought = ticketsBrought;
	}

	public HistoryMatch getMatchReservation() {
		return matchReservation;
	}

	public void setMatchReservation(HistoryMatch matchReservation) {
		this.matchReservation = matchReservation;
	}

	public User getUserReservation() {
		return userReservation;
	}

	public void setUserReservation(User userReservation) {
		this.userReservation = userReservation;
	}

	public Payement getReservationPayement() {
		return reservationPayement;
	}

	public void setReservationPayement(Payement reservationPayement) {
		this.reservationPayement = reservationPayement;
	}
}
