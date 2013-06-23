package br.com.tetra.webtrack.business;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.jpa.JPAFactory;
import br.com.tetra.webtrack.model.Cliente;

@Component
public class ClienteBusiness {

	private EntityManager manager;
	
	public ClienteBusiness() {
		this.manager = JPAFactory.getEntityManager();
	}
	
	public void gravaCliente(Cliente cliente){
		try {
			EntityTransaction transaction  = manager.getTransaction();
			transaction.begin();
			manager.persist(cliente);
			transaction.commit();
			manager.close();
		}catch (Exception ex){
			
		}
		
	}
	public void listagemCliente(){
		
	}
	
}
