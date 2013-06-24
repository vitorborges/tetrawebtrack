package br.com.tetra.webtrack.jpa;

import javax.annotation.PreDestroy;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.ComponentFactory;

@Component
public class FabricaDeEntityManager implements ComponentFactory<EntityManager> {

	private final EntityManager manager;
	
	public FabricaDeEntityManager(){
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");
		this.manager = factory.createEntityManager();
	}
	
	@Override
	public EntityManager getInstance() {
		return this.manager;
	}
	
	@PreDestroy
	public void fechaManager() {
		this.manager.close();
	}

	
}
