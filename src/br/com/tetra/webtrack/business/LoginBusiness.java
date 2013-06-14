package br.com.tetra.webtrack.business;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.jpa.JPAFactory;
import br.com.tetra.webtrack.model.Usuario;

@Component
public class LoginBusiness {
	
	private EntityManager manager;

    public LoginBusiness() {
        this.manager = JPAFactory.getEntityManager();
    }

    public Usuario autenticar(String email, String senha) {
        try {
            Query query = manager.createQuery("from Usuario where email = :email and senha = :senha");
            query.setParameter("email", email);
            query.setParameter("senha", senha);
            return (Usuario) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }
}
