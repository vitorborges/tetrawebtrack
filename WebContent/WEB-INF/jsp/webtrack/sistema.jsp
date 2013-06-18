<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<script src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript" src="<c:url value="/js/bootstrap.js"/>"></script>
	<title>Tetra WebTrack</title>
</head>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#">Webtrack</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="active"><a href="#">Helpdesk</a></li>
						<li><a href="#">KB</a></li>
						<li><a href="#">Projetos</a></li>
					</ul>
					<form class="navbar-search pull-left">
						<input type="text" class="search-query" placeholder="">
					</form>
					<ul class="nav pull-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<c:url value="/img/usuario.png"/>"> ${userSession.user.nome} <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Configurações</a></li>
								<!-- <li class="divider"></li> -->
								<li><a href="#">Sair</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="span4">
					<legend>Chamados</legend>
					<img src="<c:url value='/img/helpdesk.png' />" alt="" />
					<label>seus tickets não resolvidos <span class="badge badge-inverse">10</span></label>
					<label>seus tickets não atribuido <span class="badge badge-inverse">10</span></label>
					<label>seus tickets cancelados <span class="badge badge-inverse">10</span></label>
					<button class="btn btn-inverse" type="button">Novo</button>
				</div>
				<div class="span4">
					<legend>Chamados</legend>
					<img src="<c:url value='/img/helpdesk.png' />" alt="" />
					<label>seus tickets não resolvidos <span class="badge badge-inverse">10</span></label>
					<label>seus tickets não atribuido <span class="badge badge-inverse">10</span></label>
					<label>seus tickets cancelados <span class="badge badge-inverse">10</span></label>
					<button class="btn btn-inverse" type="button">Novo</button>
				</div>
				<div class="span4">
					<legend>Chamados</legend>
					<img src="<c:url value='/img/helpdesk.png' />" alt="" />
					<label>seus tickets não resolvidos <span class="badge badge-inverse">10</span></label>
					<label>seus tickets não atribuido <span class="badge badge-inverse">10</span></label>
					<label>seus tickets cancelados <span class="badge badge-inverse">10</span></label>
					<button class="btn btn-inverse" type="button">Novo</button>
				</div>
			</div>
		</div>
		<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3 id="myModalLabel">Mensagens</h3>
			</div>
			<div class="modal-body">
				<img src="<c:url value='/img/pessoa.png' />" alt="" />
				<hr>
				<img src="<c:url value='/img/pessoa.png' />" alt="" />
				<hr>
			</div>
			<div class="modal-footer">
				<button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>
				<button class="btn btn-info">Enviar nova Mensagem</button>
			</div>
		</div>
	</div>
</body>