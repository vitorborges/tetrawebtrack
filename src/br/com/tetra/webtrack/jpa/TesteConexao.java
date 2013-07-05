package br.com.tetra.webtrack.jpa;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.tetra.webtrack.model.Ticket;

public class TesteConexao {

	protected static EntityManager manager;
	

	
	public static void main(String[] args) {
		Ticket tkt = new Ticket();
		TicketPendente();
		System.out.println(tkt.getStatus());
			
	}
	
	
	public static  Ticket TicketPendente() {
		
		try {
			
			final String STATUS_PENDENTE = "Pendente";
			Query query = manager.createQuery("SELECT COUNT(t.status) FROM Ticket t where status = :st");
			query.setParameter("st", STATUS_PENDENTE);
			return (Ticket) query.getResultList();
		} catch (NoResultException e) {
			return null;
		}
	}
}