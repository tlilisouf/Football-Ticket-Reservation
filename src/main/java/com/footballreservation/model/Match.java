package com.footballreservation.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "MatchFoot")
public class Match {

	@Id
	private String idMatch;

	@Column(name = "dateMatch", nullable = false)
	private String dateMatch;

	@Column(name = "matchComplete", nullable = false)
	private int matchComplete;

	@Column(name = "seat", nullable = true)
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

	@ManyToOne(fetch = FetchType.EAGER, cascade = { CascadeType.ALL })
	@JoinColumn(name = "tournamentName")
	private Tournament matchTournament;

	@ManyToOne(fetch = FetchType.EAGER, cascade = { CascadeType.ALL })
	@JoinColumn(name = "stadiumName")
	private Stadium stadiumMatch;

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

	public Tournament getMatchTournament() {
		return matchTournament;
	}

	public void setMatchTournament(Tournament matchTournament) {
		this.matchTournament = matchTournament;
	}

	public Stadium getStadiumMatch() {
		return stadiumMatch;
	}

	public void setStadiumMatch(Stadium stadiumMatch) {
		this.stadiumMatch = stadiumMatch;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((idMatch == null) ? 0 : idMatch.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Match other = (Match) obj;
		if (idMatch == null) {
			if (other.idMatch != null)
				return false;
		} else if (!idMatch.equals(other.idMatch))
			return false;
		return true;
	}

}
