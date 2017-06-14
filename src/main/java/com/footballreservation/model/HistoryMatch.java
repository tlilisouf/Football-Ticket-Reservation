package com.footballreservation.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "MatchHistory")
public class HistoryMatch {
	@Id
	private String idMatch;

	@Column(name = "dateMatch", nullable = false)
	private String dateMatch;

	@Column(name = "matchComplete", nullable = false)
	private int matchComplete;

	@Column(name = "seat", nullable = false)
	private String seat;

	@Column(name = "matchTicketPrice", nullable = false)
	private float matchTicketPrice;

	@Column(name = "ticketsMatch", nullable = false)
	private int ticketsMatch;

	@Column(name = "ticketsMatchSelled", nullable = true)
	private int ticketsMatchSelled;

	@Column(name = "teamHome", nullable = false)
	private String teamHome;

	@Column(name = "teamAway", nullable = false)
	private String teamAway;

	@Column(name = "tournamentName", nullable = false)
	private String tournamentName;

	@Column(name = "stadiumName", nullable = false)
	private String stadiumName;

	@OneToMany(fetch = FetchType.LAZY, cascade = { CascadeType.ALL }, mappedBy = "matchReservation")
	private Set<Reservation> reservations = new HashSet<Reservation>();

	public String getIdMatch() {
		return idMatch;
	}

	public void setIdMatch(String idMatch) {
		this.idMatch = idMatch;
	}

	public String getDateMatch() {
		return dateMatch;
	}

	public void setDateMatch(String dateMatch) {
		this.dateMatch = dateMatch;
	}

	public int getMatchComplete() {
		return matchComplete;
	}

	public void setMatchComplete(int matchComplete) {
		this.matchComplete = matchComplete;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public float getMatchTicketPrice() {
		return matchTicketPrice;
	}

	public void setMatchTicketPrice(float matchTicketPrice) {
		this.matchTicketPrice = matchTicketPrice;
	}

	public int getTicketsMatch() {
		return ticketsMatch;
	}

	public void setTicketsMatch(int ticketsMatch) {
		this.ticketsMatch = ticketsMatch;
	}

	public int getTicketsMatchSelled() {
		return ticketsMatchSelled;
	}

	public void setTicketsMatchSelled(int ticketsMatchSelled) {
		this.ticketsMatchSelled = ticketsMatchSelled;
	}

	public String getTeamHome() {
		return teamHome;
	}

	public void setTeamHome(String teamHome) {
		this.teamHome = teamHome;
	}

	public String getTeamAway() {
		return teamAway;
	}

	public void setTeamAway(String teamAway) {
		this.teamAway = teamAway;
	}

	public Set<Reservation> getReservations() {
		return reservations;
	}

	public void setReservations(Set<Reservation> reservations) {
		this.reservations = reservations;
	}

	public String getTournamentName() {
		return tournamentName;
	}

	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}

	public String getStadiumName() {
		return stadiumName;
	}

	public void setStadiumName(String stadiumName) {
		this.stadiumName = stadiumName;
	}

}
