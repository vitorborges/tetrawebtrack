package br.com.tetra.webtrack.controller;

import java.io.UnsupportedEncodingException;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.tetra.webtrack.dao.UsuarioDAO;
import br.com.tetra.webtrack.entity.PerfilUsuario;
import br.com.tetra.webtrack.entity.Usuario;
import br.com.tetra.webtrack.util.Utils;
@Resource
public class UsuarioController {

	private Result result;
	private UsuarioDAO dao;

	public UsuarioController(Result result, UsuarioDAO dao) {
		this.result = result;
		this.dao = dao;
	}

	@Post("/usuario")
	public void novo(Usuario usuario) throws UnsupportedEncodingException {
		usuario.setSenha(Utils.md5(usuario.getSenha()));
		dao.gravar(usuario);
		result.redirectTo(this).listausuario();
	}

	@Path("/listausuario")
	public void listausuario() {
		result.include("usuarioList", dao.listar());
	}

	@Path("/usuario/form")
	public void form(){
		result.include("perfilList",PerfilUsuario.values());
	}

	@Get("/usuario/editar/{usuario.id}")
	public void editar(Usuario usuario){
		result.include("perfilList", PerfilUsuario.values());
		result.include("usuario", dao.buscar(usuario.getId()));
	}

	@Put("/usuario/edita/{usuario.id}")
	public void edita(Usuario usuario){
		dao.gravar(usuario);
		result.redirectTo(this).listausuario();
	}
}
