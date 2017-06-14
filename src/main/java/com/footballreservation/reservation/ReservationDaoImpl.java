package com.footballreservation.reservation;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.footballreservation.model.Reservation;

@Repository("ReservationDao")
public class ReservationDaoImpl extends AbstractDao<Integer, Reservation> implements ReservationDao {

	@Transactional
	public void persitReservation(Reservation reservation) {
		persist(reservation);

	}

	@Transactional
	@SuppressWarnings("unchecked")
	public List<Reservation> getReservation(String ssoId) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("userReservation.ssoId", ssoId));
		return (List<Reservation>) crit.list();
	}

	@Transactional
	private int getBroughtTickets(String idMatch) {
		Query query = getSession().createQuery("select ticketsMatchSelled from HistoryMatch where idMatch =:idMatch");
		query.setParameter("idMatch", idMatch);
		return (Integer) query.uniqueResult();
	}

	@Transactional
	public void updateTickets(String idMatch, int matchTickets, int ticketsBrought) {

		matchTickets -= ticketsBrought;
		ticketsBrought += getBroughtTickets(idMatch);
		Query query = getSession().createQuery(
				"update Match m set m.ticketsMatch =:matchTickets,m.ticketsMatchSelled =:ticketsBrought where idMatch =:idMatch");
		query.setParameter("matchTickets", matchTickets);
		query.setParameter("ticketsBrought", ticketsBrought);
		query.setParameter("idMatch", idMatch);
		query.executeUpdate();

	}


}
