package br.com.tetra.webtrack.jpa;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.caelum.vraptor.ioc.ApplicationScoped;
import br.com.caelum.vraptor.ioc.Component;

@ApplicationScoped
@Component
public class FabricaDeEntityManagerFactory {

	private final EntityManagerFactory factory;
	
	public FabricaDeEntityManagerFactory() {
		this.factory = Persistence.createEntityManagerFactory("default");
	}

	public EntityManagerFactory getInstance() {
		return this.factory;
	}
}