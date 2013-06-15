package br.com.tetra.webtrack.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.business.LoginBusiness;
import br.com.tetra.webtrack.session.UserSession;

@Resource
public class WebtrackController {
	private Result result;
    private UserSession userSession;
    private LoginBusiness business;

    public WebtrackController(Result result, UserSession userSession, LoginBusiness business) {
        this.result = result;
        this.userSession = userSession;
        this.business = business;
    }

	@Get("/webtrack/sistema")
	public void sistema(){
		
	}
	
	@Path("/")
	public void index() {
		result.redirectTo(this).sistema();
	}
	
	@Path("/webtrack/tickets")
	public void tickets(){
		
	}

	@Path("")
	public void visualizar(){
		
	}
}
