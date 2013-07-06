package br.com.tetra.webtrack.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.dao.GrupoDAO;
import br.com.tetra.webtrack.entity.Grupo;

@Resource
public class GrupoController {

	private GrupoDAO dao;
	private Result result;
	
	public GrupoController(GrupoDAO dao, Result result) {
		this.dao = dao;
		this.result = result;
	}
	
	@Path("/grupo/listagrupo")
	public void listagrupo(){
		result.include("grupoList", dao.listar());
	}
	
	@Get("/grupo/form")
	public void form(){
	}
	
	@Post("/grupo")
	public void novo(Grupo grupo){
		dao.gravar(grupo);
		result.redirectTo(this).listagrupo();
	}
	
	@Get("/grupo/editar/{grupo.id}")
	public void editar(Grupo grupo){
		result.include("grupo", dao.buscar(grupo.getId()));
	}
	
	@Put("/grupo/edita/{grupo.id}")
	public void edita(Grupo grupo){
		dao.gravar(grupo);
		result.redirectTo(this).listagrupo();
	}
	
}
