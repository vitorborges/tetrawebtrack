package br.com.tetra.webtrack.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.business.GrupoBusiness;
import br.com.tetra.webtrack.model.Grupo;

@Resource
public class GrupoController {

	private GrupoBusiness dao;
	private Result result;
	
	public GrupoController(GrupoBusiness dao, Result result) {
		this.dao = dao;
		this.result = result;
	}
	
	@Path("/grupo/cadastro")
	public void novo(){
		
	}
	
	@Post
	@Path("/grupo/gravar")
	public void gravar(Grupo grupo){
		dao.gravarGrupo(grupo);
		result.redirectTo(this).listagem();	
	}
	
	public void listagem(){
		
	}
	
}
