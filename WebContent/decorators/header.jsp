<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link rel="shortcut icon" href="<c:url value="/img/logo.png"/>" />
	<title>Tetra WebTrack</title>
</head>
	<body>
	<header>
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					<a class="brand" href="${pageContext.request.contextPath}">Tetra Webtrack</a>
					<div class="nav-collapse collapse">
					
						<ul class="nav">
						<li class="divider-vertical"></li>
							
							<!-- MENU PRINCIPAL DA APLICAÇÃO -->
							<li><a href="${pageContext.request.contextPath}/suporte/tickets"><img src="<c:url value="/img/helpdesk.png"/>"><span> HelpDesk</span></a></li>
							<li><a href="${pageContext.request.contextPath}/suporte/tickets"><img src="<c:url value="/img/kb.png"/>"><span> KB</span></a></li>
							<li><a href="${pageContext.request.contextPath}/suporte/tickets"><img src="<c:url value="/img/projetos.png"/>"><span> Projetos</span></a></li>
							
							<!-- MENU CADASTROS -->
							<li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<c:url value="/img/cadastros.png"/>"><span> Cadastros</span> </a>
                                
                                <ul class="dropdown-menu">    
                                    <li>
                                        <a href="<c:url value="/cliente/cadastro"/>"> <i class=" icon-plus"></i> Cliente</a>
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
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<c:url value="/img/usuario.png"/>"> ${userSession.user.nome} <b class="caret"></b></a>
								<ul class="dropdown-menu">
								<c:if test="${userSession.user.perfil == 'ADMIN'}">
									<li><a href="#"><i class="icon-cog"></i> Configurações</a></li>
								</c:if>
									<li><a href="#"><i class="icon-cog"></i> Alterar senha</a></li>
									<li class="divider"></li>
									<li><a href="${pageContext.request.contextPath}/logout"><i class="icon-off"></i> Sair</a></li>
								</ul>
							</li>
						</ul>
						<form class="navbar-search pull-right">
							<input type="text" class="search-query" placeholder="" value="#id_ticket">
						</form>
					</div>
				</div>
			</div>
		</div>
	</header>
	</body>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript" src="<c:url value="/js/bootstrap.js"/>"></script>
</html>