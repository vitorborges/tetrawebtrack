package br.com.tetra.webtrack.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.model.Usuario;
import br.com.tetra.webtrack.session.UserSession;
@Resource
public class UsuarioController {

	private Result result;
    private UserSession userSession;

	 public UsuarioController(Result result, UserSession userSession) {
		 this.result = result;
		 this.userSession = userSession;
	}
	
	 @Path("/usuario/cadastro")
	 public void novo(){
	
	 }
	 
	 public void gravar(Usuario usuario){
		 
	 }
	 
}
