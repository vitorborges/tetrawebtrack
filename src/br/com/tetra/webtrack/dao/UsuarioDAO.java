package br.com.tetra.webtrack.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.entity.Usuario;

@Component
public class UsuarioDAO {

	protected EntityManager manager;
	
	public UsuarioDAO(EntityManager manager){
		this.manager = manager;
	}
	
	public Usuario emailexiste(String email){
		try {
            Query query = manager.createQuery("from Usuario where email = :email");
            query.setParameter("email", email);
            return (Usuario) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
	}

	public void gravar(Usuario user) {
		this.manager.getTransaction().begin();
		this.manager.merge(user);
		this.manager.getTransaction().commit();
	}
	
	public Usuario buscar(Long id) {
		try {
            Query query = manager.createQuery("from Usuario where id_usuario = :id");
            query.setParameter("id", id);
            return (Usuario) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
	}
	
	@SuppressWarnings("unchecked")
	public List<Usuario> listar() {
		Query query = manager.createQuery(" from Usuario");
		return query.getResultList();
	}
}
