package br.com.tetra.webtrack.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.dao.ConfigDAO;
import br.com.tetra.webtrack.entity.Config;

@Resource
@Path("config")
public class ConfigController {
	
	private Result result;
	private ConfigDAO dao;
	
	public ConfigController(Result result,ConfigDAO dao ) {
		this.result = result;
		this.dao = dao;
	}

	@Path("/gravar")
	public void gravar(Config config){
		dao.gravarConfig(config);
		result.redirectTo(AdminController.class).homeadmin();
	}
}
