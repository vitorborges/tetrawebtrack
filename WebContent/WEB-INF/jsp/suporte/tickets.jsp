<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css" media="screen" />
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
					<a class="brand" href="${pageContext.request.contextPath}">Webtrack</a>
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li><a href="${pageContext.request.contextPath}/suporte/tickets">Chamados</a></li>
							<li><a href="#">KB</a></li>
							<li><a href="#">Implantações</a></li>
							<!-- <li><a href="${pageContext.request.contextPath}/suporte/tickets"><img src="<c:url value="/img/helpdesk.png"/>"></a></li> -->
							<!-- <li><a href="#"><img src="<c:url value="/img/kb.png"/>"></a></li> -->
							<!-- <li><a href="#"><img src="<c:url value="/img/projetos.png"/>"></a></li> -->
						</ul>
						<ul class="nav pull-right">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<c:url value="/img/usuario.png"/>"> ${userSession.user.nome} <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#"><i class="icon-cog"></i> Configurações</a></li>
									<!-- <li class="divider"></li> -->
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
	</header>
	<div class="wrapper">
		<div class="container">
			<div class="dv-acesso-facil">
				<label>seus tickets não resolvidos&nbsp;&nbsp; <span class="badge badge-inverse">0</span></label>
				<label>seus tickets não atribuido &nbsp;&nbsp;&nbsp; <span class="badge badge-inverse">4</span></label>
				<label>seus tickets cancelados &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="badge badge-inverse">4</span></label>
			</div>
			<div class="dv-tickets-grid">
				<legend>Filtro</legend>
				<input type="text" placeholder="">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Ticket</th>
							<th>Cliente</th>
							<th>Last Na</th>
							<th>Username</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Mark</td>
							<td>Otto</td>
							<td>@mdo</td>
						</tr>
						<tr>
							<td>1</td>
							<td>Mark</td>
							<td>Otto</td>
							<td>@TwBootstrap</td>
						</tr>
						<tr>
							<td>2</td>
							<td>Jacob</td>
							<td>Thornton</td>
							<td>@fat</td>
						</tr>
						<tr>
							<td>3</td>
							<td>Larry the Bird</td>
							<td>Larry the Bird</td>
							<td>@twitter</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="navbar navbar-inverse navbar-fixed-bottom">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
			</div>
		</div>
	</div>
	<script src="js/bootstrap.js"></script>
</body>
</html>