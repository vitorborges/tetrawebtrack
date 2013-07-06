package br.com.tetra.webtrack.model;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.entity.Usuario;

@Component
public class LoginBusiness {
	
	private EntityManager manager;

    public LoginBusiness(EntityManager manager) {
        this.manager = manager;
    }

    public Usuario autenticar(String login, String senha) {
    	try {
            Query query = manager.createQuery("from Usuario where login = :login and senha = md5(:senha)");
            query.setParameter("login", login);
            query.setParameter("senha", senha);
            return (Usuario) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }
}
