package br.com.tetra.webtrack.session;

import java.io.Serializable;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.com.tetra.webtrack.entity.Usuario;

@Component
@SessionScoped
public class UserSession implements Serializable {

	private Usuario user;
	private static final long serialVersionUID = 1L;
	
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
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
