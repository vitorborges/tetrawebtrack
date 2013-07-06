package br.com.tetra.webtrack.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.annotation.Public;
import br.com.tetra.webtrack.dao.ConfigDAO;
import br.com.tetra.webtrack.dao.UsuarioDAO;
import br.com.tetra.webtrack.entity.Usuario;
import br.com.tetra.webtrack.model.LoginBusiness;
import br.com.tetra.webtrack.session.UserSession;
import br.com.tetra.webtrack.util.Email;
import br.com.tetra.webtrack.util.Utils;

@Resource
public class LoginController {

	    private Result result;
	    private UserSession userSession;
	    private LoginBusiness business;
	    private UsuarioDAO usuariodao;
	    private ConfigDAO configdao;

	    public LoginController(Result result, UserSession userSession, LoginBusiness business, UsuarioDAO usuariodao, ConfigDAO configDAO) {
	        this.result = result;
	        this.userSession = userSession;
	        this.business = business;
	        this.usuariodao = usuariodao;
	        this.configdao = configDAO;
	    }

	    @Public
	    @Get("/login")
	    public void login() {

	    }

	    @Public
	    @Post("/autenticar")
	    public void autenticar(Usuario usuario) {
	    	Usuario user = business.autenticar(usuario.getLogin(), usuario.getSenha());
	    	if (usuario.getLogin() == "") {
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
	            result.include("error", "Usuário ou senha incorretos!").redirectTo(this).login();
	    	}
	    }

	    @Get("/logout")
	    public void logout() {
	        userSession.logout();
	        result.redirectTo(this).login();
	    }
	    
	    @Public
	    @Get("/enviarsenha")
	    public void enviarsenha(String email) throws Exception {
	    	Usuario user = usuariodao.emailexiste(email);
	    	if (user == null) {
	    		result.include("error", "E-mail não cadastrado.").redirectTo(this).login();
	    	} else {
	    	String senhaaux = Utils.gerasenha();
	    	System.out.println("Senha: "+senhaaux+" MD5: "+Utils.md5(senhaaux));
	    	
	    	user.setSenha(Utils.md5(senhaaux));
	    	
	    	Email e = new Email(configdao);
	    	senhaaux = e.enviar(email,"Recuperação de senha.","Uma nova senha foi gerada. A nova senha é: "+senhaaux);
  	
	    		if (senhaaux != null) {
	    			usuariodao.gravar(user);
	    			result.include("success", "E-mail enviado com sucesso!").redirectTo(this).login();
	    		} else {
	    			result.include("error","Erro no envio do e-mail.").redirectTo(this).login();
	    		}
	    	}
	    }
}
