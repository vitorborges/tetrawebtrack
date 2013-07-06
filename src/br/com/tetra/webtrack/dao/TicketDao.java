package br.com.tetra.webtrack.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.entity.Grupo;
import br.com.tetra.webtrack.entity.Status;
import br.com.tetra.webtrack.entity.Ticket;
import br.com.tetra.webtrack.entity.Usuario;

@Component
public class TicketDao {

	protected EntityManager manager;

	public TicketDao() {

		this.manager = manager;
	}

	public Ticket TicketPendente() {
		try {
			final String STATUS_PENDENTE = "Pendente";
			Query query = manager.createQuery("SELECT COUNT(t.status) FROM Ticket t where status = :st");
			query.setParameter("st", STATUS_PENDENTE);
			return (Ticket) query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

	public Ticket TicketCancelado() {
		return null;

	}

}