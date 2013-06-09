package br.com.tetra.webtrack.controler;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;

@Resource
public class LoginController {

	@Path("/")
	public String login(){
		
		return "login";
	}
}
