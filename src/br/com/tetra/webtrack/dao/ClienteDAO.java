package br.com.tetra.webtrack.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.entity.Cliente;

@Component
public class ClienteDAO {

	protected EntityManager manager;
	
	public ClienteDAO(EntityManager manager){
		this.manager = manager;
	}

	public void gravar(Cliente cliente) {
		this.manager.getTransaction().begin();
		this.manager.merge(cliente);
		this.manager.getTransaction().commit();
	}
	
	public Cliente buscar(Long id) {
		try {
            Query query = manager.createQuery("from Cliente where id_cliente = :id");
            query.setParameter("id", id);
            return (Cliente) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
	}
	
	@SuppressWarnings("unchecked")
	public List<Cliente> listar() {
		Query query = manager.createQuery(" from Cliente");
		return query.getResultList();
	}
}
