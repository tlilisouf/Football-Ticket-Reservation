package com.footballreservation.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Tournament")
public class Tournament {
	@Id
	private String tournamentName;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "matchTournament", cascade = { CascadeType.ALL })
	private Set<Match> matchs = new HashSet<Match>();

	public String getTournamentName() {
		return tournamentName;
	}

	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}

	public Set<Match> getMatchs() {
		return matchs;
	}

	public void setMatchs(Set<Match> matchs) {
		this.matchs = matchs;
	}

}
