package br.com.tetra.webtrack.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.entity.Ticket;

@Component
public class TicketDAO {

	protected EntityManager manager;
	
	public TicketDAO(EntityManager manager){
		this.manager = manager;
	}
	
	@SuppressWarnings("unchecked")
	public List<Ticket> listar() {
		Query query = manager.createQuery(" from Ticket");
		return query.getResultList();
	}
}
