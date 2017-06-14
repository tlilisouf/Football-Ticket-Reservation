package com.footballreservation.matchs;

import java.util.List;

import com.footballreservation.model.Match;
import com.footballreservation.model.HistoryMatch;

public interface MatchDao {

	public void persitMatch(Match match);
	
	public void persitMatchHistpry(HistoryMatch matchHistory);

	public Match findMatch(Match match);

	public Match findMatchByID(String idMatch);

	public List<Match> findMatch(String searchKey);

	public List<Match> getMatchs();

	public void updateMatch(Match match);

	public void deleteMatch(String idMatch);

	public List<Match> searchContent(String content);

}
