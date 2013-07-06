package br.com.tetra.webtrack.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.dao.ClienteDAO;
import br.com.tetra.webtrack.entity.Cliente;

@Resource
public class ClienteController {

	private Result result;
    private ClienteDAO dao;

	 public ClienteController(Result result, ClienteDAO dao) {
		 this.result = result;
		 this.dao = dao;
	}
	
	@Post("/cliente")
	public void novo(Cliente cliente) {
		dao.gravar(cliente);
		result.redirectTo(this).listacliente();
	}
	 
	@Path("/cliente/listacliente")
	public void listacliente() {
		 result.include("clienteList", dao.listar());
	}
	 
	@Path("/cliente/form")
	public void form(){
	}
	 
	@Get("/cliente/editar/{cliente.id}")
	public void editar(Cliente cliente){
		 result.include("cliente", dao.buscar(cliente.getId()));
	}
	 
	@Put("/cliente/edita/{cliente.id}")
	public void edita(Cliente cliente){
			dao.gravar(cliente);
			result.redirectTo(this).listacliente();
	}
	
	@Get("/cliente/cliente/{cliente.id}")
	public void cliente(Cliente cliente){
		result.include("cliente", dao.buscar(cliente.getId()));
	}
}
