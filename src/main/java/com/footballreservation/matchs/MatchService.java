package com.footballreservation.matchs;

import java.util.List;

import com.footballreservation.model.Match;
import com.footballreservation.model.HistoryMatch;

public interface MatchService {
	public void persitMatch(Match match);
	
	public void persitMatchHistpry(HistoryMatch matchHistory);

	public Match findMatch(Match match);

	public Match findMatchByID(String idMatch);
	
	public List<Match> getMatchs();

	public List<Match> findMatch(String searchKey);

	public void updateMatch(Match match);

	public void deleteMatch(String string);

	public List<Match> searchContent(String searchKey);
}
