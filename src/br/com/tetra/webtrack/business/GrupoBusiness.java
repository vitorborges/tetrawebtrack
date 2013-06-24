package br.com.tetra.webtrack.business;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.jpa.JPAFactory;
import br.com.tetra.webtrack.model.Grupo;

@Component
public class GrupoBusiness {

	private EntityManager manager;

	public GrupoBusiness() {
		this.manager = JPAFactory.getEntityManager();
	}

	public void gravarGrupo(Grupo grupo) {
		try {
			EntityTransaction transaction = manager.getTransaction();
			transaction.begin();
			manager.persist(grupo);
			transaction.commit();
			manager.close();
		} catch (Exception ex) {
			//
		}
	}

	public void listagemGrupo() {

	}
}
