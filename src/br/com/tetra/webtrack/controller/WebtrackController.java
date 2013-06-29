package br.com.tetra.webtrack.controller;

import java.io.UnsupportedEncodingException;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.com.tetra.webtrack.business.UsuarioBusiness;
import br.com.tetra.webtrack.session.UserSession;
import br.com.tetra.webtrack.util.Utils;

@Resource
public class WebtrackController {
	private Result result;
    private UserSession userSession;
    private UsuarioBusiness userBusiness;

    public WebtrackController(Result result, UserSession userSession, UsuarioBusiness userBusiness) {
        this.result = result;
        this.userSession = userSession;
        this.userBusiness = userBusiness;
    }

	@Get("/sistema")
	public void sistema(){
		
	}
	
	@Path("/")
	public void index() {
		result.redirectTo(this).sistema();
	}
	

	@Path("/webtrack/visualizar")
	public void visualizar(){
		
	}
	
	@Get("/alterarsenha")
	public void alterarsenha(String senhaatual, String senhanova) throws UnsupportedEncodingException{
		if (userSession.getUser().getSenha().equals(Utils.md5(senhaatual))) {
			userSession.getUser().setSenha(Utils.md5(senhanova));
			userBusiness.gravaUsuario(userSession.getUser());
			result.redirectTo(this).sistema();
			System.out.println("senha alterada!");
		} else {
			System.out.println("senha atual não confere!");
			result.redirectTo(LoginController.class).logout();
		}
	}
	
}
