package br.com.tetra.webtrack.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.entity.Grupo;

@Component
public class GrupoDAO {

protected EntityManager manager;
	
	public GrupoDAO(EntityManager manager){
		this.manager = manager;
	}
	
	public void gravar(Grupo grupo) {
		this.manager.getTransaction().begin();
		this.manager.merge(grupo);
		this.manager.getTransaction().commit();
	}
	
	public Grupo buscar(Long id) {
		try {
            Query query = manager.createQuery("from Grupo where id_grupo = :id");
            query.setParameter("id", id);
            return (Grupo) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
	}
	
	@SuppressWarnings("unchecked")
	public List<Grupo> listar() {
		Query query = manager.createQuery(" from Grupo");
		return query.getResultList();
	}
}
