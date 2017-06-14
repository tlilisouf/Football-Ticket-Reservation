package com.footballreservation.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Payement")
public class Payement {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idPayement;

	@Column(name = "datePayement", nullable = true)
	private String datePayement;

	@Column(name = "pricePayement", nullable = true)
	private float pricePayement;

	@Column(name = "modePayement", nullable = true)
	private String modePayement;

	@OneToMany(fetch = FetchType.LAZY, cascade = { CascadeType.ALL }, mappedBy = "reservationPayement")
	private Set<Reservation> reservation = new HashSet<Reservation>();

	public int getIdPayement() {
		return idPayement;
	}

	public void setIdPayement(int idPayement) {
		this.idPayement = idPayement;
	}

	public String getDatePayement() {
		return datePayement;
	}

	public void setDatePayement(String datePayement) {
		this.datePayement = datePayement;
	}

	public float getPricePayement() {
		return pricePayement;
	}

	public void setPricePayement(float pricePayement) {
		this.pricePayement = pricePayement;
	}

	public String getModePayement() {
		return modePayement;
	}

	public void setModePayement(String modePayement) {
		this.modePayement = modePayement;
	}

	public Set<Reservation> getReservation() {
		return reservation;
	}

	public void setReservation(Set<Reservation> reservation) {
		this.reservation = reservation;
	}

}
