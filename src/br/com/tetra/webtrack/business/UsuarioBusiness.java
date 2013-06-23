package br.com.tetra.webtrack.business;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.jpa.JPAFactory;
import br.com.tetra.webtrack.model.Usuario;

@Component
public class UsuarioBusiness {

	private EntityManager manager;
	
	public UsuarioBusiness() {
		this.manager = JPAFactory.getEntityManager();
	}
	
	public void gravaUsuario(Usuario usuario){
		try {
			EntityTransaction transaction = manager.getTransaction();
			transaction.begin();
			manager.persist(usuario);
			transaction.commit();
			manager.close();
		} catch (Exception ex) {
			//
		}
	}
	
	public void listagemUsuario(){
		
	}
	
}
