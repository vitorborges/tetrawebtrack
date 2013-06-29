<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<a class="brand" href="${pageContext.request.contextPath}">Webtrack</a>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li>
						<a href="${pageContext.request.contextPath}/suporte/tickets">
							<i class="icon-desktop"></i> <span>Chamados</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/suporte/kb">
							<i class="icon-cloud"></i> <span>KB</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/suporte/projetos">
							<i class="icon-check"></i> <span>Implantações</span>
						</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-folder-open"></i> <span>Cadastros</span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="<c:url value="/cliente/cadastro"/>"><i class="icon-plus"></i> Cliente</a>
							</li>
							<li>
								<a href="<c:url value="/grupo/cadastro"/>"><i class="icon-adjust"></i> Grupo</a>
							</li>
							<li>
								<a href="#"><i class="icon-user"></i> Usuário</a>
							</li>
						</ul>
					</li>
				</ul>
				<ul class="nav pull-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-user"></i> ${userSession.user.nome} <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<c:if test="${userSession.user.perfil == 'ADMIN'}">
							<li><a href="#"><i class="icon-gear"></i> Configurações</a></li>
						</c:if>
						<li><a href="#myModal"  role="button" data-toggle="modal"><i class="icon-lock"></i> Alterar senha</a></li>
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath}/logout"><i class="icon-off"></i> Sair</a></li>
					</ul>
				</li>
			</ul>
			<form class="navbar-search pull-right">
				<input type="text" class="search-query" placeholder="">
			</form>
		</div>
	</div>
</div>
</div>
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Alterar Senha</h3>
	</div>
	<div class="modal-body">
		<form class="form-inline" action="${pageContext.request.contextPath}/alterarsenha" method="get">
			<div class="input-prepend">
				<div class="control-group">
				<input class="span4" id="prependedInput" type="password" placeholder="Senha atual" name="senhaatual">
				</div>
				<div class="control-group">
				<input class="span4" id="prependedInput" type="password" placeholder="Nova senha" name="senhanova">
				</div>
				<div class="control-group">
				<input class="span4" id="prependedInput" type="password" placeholder="Confirme nova senha" name="confirmasenha">
				</div>
			</div>
			<div class="control-group">
			<button type="submit" class="btn btn-info">alterar</button>
			</div>
		</form>
	</div>
	<div class="modal-footer"></div>
</div>