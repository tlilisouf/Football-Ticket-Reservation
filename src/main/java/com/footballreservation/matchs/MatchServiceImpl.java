package com.footballreservation.matchs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.footballreservation.model.Match;
import com.footballreservation.model.HistoryMatch;

@Service("MatchService")
public class MatchServiceImpl implements MatchService {
	@Autowired
	private MatchDao matchDao;

	public void persitMatch(Match match) {
		matchDao.persitMatch(match);
	}

	public void persitMatchHistpry(HistoryMatch matchHistory) {
		matchDao.persitMatchHistpry(matchHistory);

	}

	public Match findMatch(Match match) {
		return matchDao.findMatch(match);
	}

	public Match findMatchByID(String idMatch) {
		return (Match) matchDao.findMatch(idMatch);
	}

	public List<Match> findMatch(String searchKey) {
		return matchDao.findMatch(searchKey);
	}

	public List<Match> getMatchs() {
		return matchDao.getMatchs();
	}

	public void updateMatch(Match match) {
		matchDao.updateMatch(match);
	}

	public void deleteMatch(String idMatch) {
		matchDao.deleteMatch(idMatch);

	}

	public List<Match> searchContent(String content) {
		return matchDao.searchContent(content);
	}

}
