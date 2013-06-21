package br.com.tetra.webtrack.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.annotation.Public;
import br.com.tetra.webtrack.business.LoginBusiness;
import br.com.tetra.webtrack.model.Usuario;
import br.com.tetra.webtrack.session.UserSession;

@Resource
public class LoginController {

	    private Result result;
	    private UserSession userSession;
	    private LoginBusiness business;

	    public LoginController(Result result, UserSession userSession, LoginBusiness business) {
	        this.result = result;
	        this.userSession = userSession;
	        this.business = business;
	    }

	    @Public
	    @Get("/login")
	    public void login() {

	    }

	    @Public
	    @Post("/autenticar")
	    public void autenticar(Usuario usuario) {
	    	Usuario user = business.autenticar(usuario.getEmail(), usuario.getSenha());
	    	if (usuario.getEmail() == "") {
	    		result.include("error", "Favor informar o campo Usuário").redirectTo(this).login();
	    		return;
	    	}
	    	if	(usuario.getSenha() == "") {
	    		result.include("error", "Favor informar o campo Senha").redirectTo(this).login();
	    		return;
	    	}
	    	if (user != null) {
	            userSession.setUser(user);
	            result.redirectTo(WebtrackController.class).sistema();
	        }
	    	else {
	            result.include("error", "E-mail ou senha incorreta!").redirectTo(this).login();
	    	}
	    }

	    @Get("/logout")
	    public void logout() {
	        userSession.logout();
	        result.redirectTo(this).login();
	    }
}
