package br.com.tetra.webtrack.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.entity.Config;
import br.com.tetra.webtrack.jpa.JPAFactory;

@Component
public class ConfigDAO {

	private EntityManager manager;
	
	public ConfigDAO() {
        this.manager = JPAFactory.getEntityManager();
	}
	
	public Config buscaConfig(int id) {
		try {
            Query query = manager.createQuery("from Config where id_config = :id_config");
            query.setParameter("id_config", id);
            return (Config) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
		
	}
}

