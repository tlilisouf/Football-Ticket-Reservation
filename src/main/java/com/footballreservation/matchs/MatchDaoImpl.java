package com.footballreservation.matchs;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.footballreservation.model.Match;
import com.footballreservation.model.HistoryMatch;
import com.footballreservation.reservation.AbstractDao;

@Repository("MatchDao")
public class MatchDaoImpl extends AbstractDao<String, Match> implements MatchDao {

	@Transactional
	public void persitMatch(Match match) {
		persist(match);
	}

	@Transactional
	public void persitMatchHistpry(HistoryMatch matchHistory) {
		getSession().save(matchHistory);
	}

	@Transactional
	public Match findMatch(Match match) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("dateMatch", match.getDateMatch()));
		crit.add(Restrictions.eq("teamHome", match.getTeamHome()));
		crit.add(Restrictions.eq("teamAway", match.getTeamAway()));
		crit.add(Restrictions.eq("matchTournament.tournamentName", match.getMatchTournament().getTournamentName()));
		crit.add(Restrictions.eq("stadiumMatch.stadiumName", match.getStadiumMatch().getStadiumName()));
		crit.add(Restrictions.eq("seat", match.getSeat()));
		return (Match) crit.uniqueResult();
	}

	@Transactional
	public Match findMatchByID(String idMatch) {

		return (Match) findByKey(idMatch);
		// Criteria crit = createEntityCriteria();
		// crit.add(Restrictions.eq("idMatch", idMatch));
		// return (Match) crit.uniqueResult();
	}

	@Transactional
	@SuppressWarnings("unchecked")
	public List<Match> findMatch(String searchKey) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.or(Restrictions.eq("teamHome", searchKey), Restrictions.eq("teamAway", searchKey),
				Restrictions.eq("matchTournament.tournamentName", searchKey),
				Restrictions.eq("stadiumMatch.stadiumName", searchKey)));
		crit.add(Restrictions.eq("matchComplete", 0));
		return (List<Match>) crit.list();

	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Match> getMatchs() {
		return (List<Match>) getSession().createQuery("from Match order by teamHome").list();
	}

	@Transactional
	public void updateMatch(Match match) {
		update(match);
	}

	@Transactional
	public void deleteMatch(String idMatch) {
		Query query = getSession().createQuery("delete from Match where idMatch= :idMatch");
		query.setString("idMatch", idMatch);
		query.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Match> searchContent(String content) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.or(Restrictions.like("teamHome", content, MatchMode.ANYWHERE),
				Restrictions.like("teamAway", content, MatchMode.ANYWHERE),
				Restrictions.like("matchTournament.tournamentName", content, MatchMode.ANYWHERE),
				Restrictions.like("stadiumMatch.stadiumName", content, MatchMode.ANYWHERE)));
		return (List<Match>) crit.list();
	}

}
