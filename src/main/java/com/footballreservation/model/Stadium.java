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
@Table(name = "Stadium")
public class Stadium {
	@Id
	private String stadiumName;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "stadiumMatch", cascade = { CascadeType.ALL })
	private Set<Match> matchs = new HashSet<Match>();

	public String getStadiumName() {
		return stadiumName;
	}

	public void setStadiumName(String stadiumName) {
		this.stadiumName = stadiumName;
	}

	public Set<Match> getMatchs() {
		return matchs;
	}

	public void setMatchs(Set<Match> matchs) {
		this.matchs = matchs;
	}

}
