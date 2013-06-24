package br.com.tetra.webtrack.jpa;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.caelum.vraptor.ioc.ApplicationScoped;
import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.ComponentFactory;

@ApplicationScoped
@Component
public class FabricaDeEntityManagerFactory implements ComponentFactory<EntityManagerFactory>{

	private final EntityManagerFactory factory;
	
	public FabricaDeEntityManagerFactory() {
		this.factory = Persistence.createEntityManagerFactory("default");
	}
	
	@Override
	public EntityManagerFactory getInstance() {
		return this.factory;
	}
	

}
