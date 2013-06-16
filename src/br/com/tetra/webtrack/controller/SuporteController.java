package br.com.tetra.webtrack.controller;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.session.UserSession;

@Resource
public class SuporteController {
	private Result result;
    private UserSession userSession;


    public SuporteController(Result result, UserSession userSession) {
        this.result = result;
        this.userSession = userSession;
    }
    

	public void tickets(){
		
	}
}
