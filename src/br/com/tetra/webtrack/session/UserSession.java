package br.com.tetra.webtrack.session;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.com.tetra.webtrack.model.Usuario;

@Component
@SessionScoped
public class UserSession {

	private Usuario user;
	
	public boolean isLogged() {
		return user != null;
	}
	
	public void logout() {
		user = null;
	}

	public Usuario getUser() {
		return user;
	}

	public void setUser(Usuario user) {
		this.user = user;
	}
	
	
}
