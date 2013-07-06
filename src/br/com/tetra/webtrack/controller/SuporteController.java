package br.com.tetra.webtrack.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.session.UserSession;
import br.com.tetra.webtrack.dao.TicketDAO;

@Resource
public class SuporteController {
	private Result result;
	private TicketDAO dao;
    private UserSession userSession;

    public SuporteController(Result result, TicketDAO dao, UserSession userSession) {
        this.result = result;
        this.dao = dao;
        this.userSession = userSession;
    }
    
    @Get("/suporte/tickets")
	public void tickets() {
        result.include("chamadoList", dao.listar());
	}

    @Get("/suporte/tickets/novo")
    public void novochamado() {
    
    }
}
