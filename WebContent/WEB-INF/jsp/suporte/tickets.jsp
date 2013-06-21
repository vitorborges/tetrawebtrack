<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<!-- CSS -->
<link href="<c:url value="/css/tickets/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css" media="screen" />
<link href="<c:url value="/css/tickets/bootstrap.css"/>"
	rel="stylesheet" type="text/css" media="screen" />
<link href="<c:url value="/css/tickets/style.css"/>" rel="stylesheet"
	type="text/css" media="screen" />



<!-- FAVICON -->
<link rel="shortcut icon" href="<c:url value="/img/logo.png"/>" />

<!-- TITULO -->
<title>Tetra WebTrack</title>
</head>
<body>
	<header>
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a> <a class="brand" href="${pageContext.request.contextPath}">Tetra
						Webtrack</a>
					<div class="nav-collapse collapse">

						<ul class="nav">
							<li class="divider-vertical"></li>

							<!-- MENU PRINCIPAL DA APLICAÇÃO -->
							<li><a
								href="${pageContext.request.contextPath}/suporte/tickets"><img
									src="<c:url value="/img/helpdesk.png"/>"><span>
										HelpDesk</span></a></li>
							<li><a
								href="${pageContext.request.contextPath}/suporte/tickets"><img
									src="<c:url value="/img/kb.png"/>"><span> KB</span></a></li>
							<li><a
								href="${pageContext.request.contextPath}/suporte/tickets"><img
									src="<c:url value="/img/projetos.png"/>"><span>
										Projetos</span></a></li>


						</ul>
						<ul class="nav pull-right">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><img
									src="<c:url value="/img/usuario.png"/>">
									${userSession.user.nome} <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#"><i class="icon-cog"></i> Configurações</a></li>
									<li class="divider"></li>
									<li><a href="${pageContext.request.contextPath}/logout"><i
											class="icon-off"></i> Sair</a></li>
								</ul></li>
						</ul>
						<form class="navbar-search pull-right">
							<input type="text" class="search-query" placeholder=""
								value="#id_ticket">
						</form>
					</div>
				</div>
			</div>
		</div>
	</header>
	<section class="container-fluid pad40">

		<section class="row-fluid">
			<div class="span2 sideBar" style="height: 2254px;">

				<br>
				<ul>
					<li class="" data-target="dashboard"><figure>
							<i class="icon-user"></i> Tetra Soluções &nbsp;&nbsp;
						</figure></li>
					<hr>
					<li data-target="projects" class="active"><figure>
							<i class="icon-user"></i> Tetra Soluções &nbsp;&nbsp;
						</figure></li>
					<li data-target="tasks" class=""><figure>
							<i class="icon-user"></i> Tetra Soluções &nbsp;&nbsp;
							<span class="badge badge-info">3</span>
						</figure></li>
					<li data-target="messages" class=""><figure>
							<i class="icon-user"></i> Tetra Soluções &nbsp;&nbsp;
							<span class="badge badge-info">3</span>
						</figure></li>
					<hr>
					<li data-target="functions"><figure>
							<i class="icon-user"></i> Tetra Soluções
						</figure></li>
					<li class="dropper">
						<figure>
							<i class="icon-circle-arrow-down"></i> Mais Opções &nbsp;›
						</figure>
						<ul class="subSide">
							<li><i class="icon-plus"></i> List Item 1</li>
							<li><i class="icon-plus"></i> List Item 2</li>
							<li><i class="icon-plus"></i> List Item 3</li>
						</ul>
					</li>
					<li data-target="charts" class=""><figure>
							<i class="icon-user"></i> Tetra Soluções
						</figure></li>
					<hr>
					<li data-target="settings"><figure>
							<i class="icon-user"></i> Tetra Soluções
						</figure></li>
					<li data-target="profile"><figure>
							<i class="icon-user"></i> Tetra Soluções
						</figure></li>
					<hr>
					<li data-target="help"><figure>
							<i class="icon-question-sign"></i> Ajuda
						</figure></li>
				</ul>
			</div>
			<section class="span10 content borBox" style="height: 2284px;">
				<div class="row-fluid">
					<div class="span12">
						<div class="page-header">
							<h1>
								HelpDesk<small> Listagem de Tickets</small>
							</h1>

						</div>
						<!-- BOTAO FILTRO -->
						<div>
							<a href="#modalFiltro" role="button" class="btn btn-primary"
								data-toggle="modal">Filtro de Pesquisa</a>
						</div>
					</div>
				</div>
				<br>

				<div class="row-fluid">
					<div class="span12">
						<table class="table table-bordered table-projects">
							<thead>
								<tr>
									<th>#</th>
									<th>Cliente</th>
									<th>Data</th>
									<th>Descrição</th>
									<th>Status</th>
									<th>SLA</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>MBSOL GUARUS</td>
									<td>21/06/2013 - 05:00:00</td>
									<td>Duvida na Emissão de NF-e</td>
									<td>
										<button class="btn btn-small btn-success" type="button">Fechar</button>
										<button class="btn btn-small btn-warning" type="button">Atribuir</button>
										<button class="btn btn-small btn-primary" type="button">Visualizar</button>
									</td>
									<td>
										<div class="progress progress-success">
											<div class="bar" style="width: 90%"></div>
										</div>
									</td>
								</tr>
								<tr>
									<td>2</td>
									<td>KITEM 28</td>
									<td>21/06/2013 - 05:00:00</td>
									<td>Configurar Leitor de Código de Barras</td>
									<td>
										<button class="btn btn-small btn-success" type="button">Fechar</button>
										<button class="btn btn-small btn-warning" type="button">Atribuir</button>
										<button class="btn btn-small btn-primary" type="button">Visualizar</button>
									</td>
									<td>
										<div class="progress progress-warning">
											<div class="bar" style="width: 55%"></div>
										</div>
									</td>
								</tr>
								<tr>
									<td>3</td>
									<td>ROMÃO</td>
									<td>21/06/2013 - 05:00:00</td>
									<td>Atualizar SG</td>
									<td>
										<button class="btn btn-small btn-success" type="button">Fechar</button>
										<button class="btn btn-small btn-warning" type="button">Atribuir</button>
										<button class="btn btn-small btn-primary" type="button">Visualizar</button>
									</td>
									<td>
										<div class="progress progress-danger">
											<div class="bar" style="width: 15%"></div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<!-- BOTAO NOVO TICKET - ACTION ABRIR MODAL -->
						<div>
							<a href="#myModal" role="button" class="btn btn-primary"
								data-toggle="modal">Novo Ticket</a>
						</div>
						<br>
					</div>
				</div>
				<br> <br>

				<!--  MODAL NOVO TICKET -->
				<div id="myModal" class="modal hide fade" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h3 id="myModalLabel">Abertura de Ticket</h3>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="span8">
								<form action="billing" method="post" class="form-horizontal"
									id="billingform" accept-charset="utf-8">
									<div class="control-group">
										<label for="email" class="control-label"> Billing
											E-Mail </label>
										<div class="controls">
											<input name="email" type="email" value="" id="email">
											<span class="help-inline"> Where should we send
												invoices?</span>
										</div>
									</div>

									<div class="control-group">
										<label for="address" class="control-label"> Street
											Address </label>
										<div class="controls">
											<input name="address" placeholder="W 123 Street" type="text"
												value="" id="address"><span class="help-inline">
												Street Name and/or apartment number</span>
										</div>
									</div>

									<div class="control-group">
										<label for="zip" class="control-label"> Zip Code </label>
										<div class="controls">
											<input name="zip" type="text" value="" id="zip">
										</div>
									</div>

									<div class="control-group">
										<label for="city" class="control-label"> City </label>
										<div class="controls">
											<input name="city" type="text" value="" id="city">
										</div>
									</div>

									<div class="control-group">
										<label for="country" class="control-label"> Country </label>
										<div class="controls">
											<select name="sl_Dados" id="country">
												<option value=""></option>
												<option value="AR">Testes</option>


											</select>
										</div>
									</div>
								</form>
							</div>
							<!-- .span8 -->
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>
						<button class="btn btn-primary">Gravar</button>
					</div>
				</div>
				<!-- FIM MODAL -->

				<!-- COMEÇO MODAL FILTRO -->


				<!-- Advanced Modal -->
				<div id="modalFiltro" class="modal hide fade" tabindex="-1"
					role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<ul class="nav nav-pills pull-right">
							<li class="active"><a href="#date" data-toggle="pill">Data</a>
							</li>
							<li><a href="#relevance" data-toggle="pill">Status</a></li>
							<li><a href="#dealership" data-toggle="pill">Prioridade</a></li>
						</ul>
						<h4>Filtro</h4>
					</div>
					<div class="modal-body">
						<div class="row-fluid">
							<div class="tab-content">
								<div class="tab-pane active" id="date">
									<form>
										<div class="controls controls-row">
											<select>
												<option>Date</option>
												<option>Today</option>
												<option>Yesterday</option>
												<option>Last Week</option>
												<option>Last Month</option>
											</select>
										</div>
										<button type="submit" class="btn btn-warning">Pesquisar</button>
									</form>
								</div>
								<div class="tab-pane" id="relevance">
									<form>
										<fieldset>
											<div class="controls controls-row">
												<select class="span6">
													<option value="">Relevance Factor</option>
													<option value="">Containing</option>
													<option value="">Starting with</option>
													<option value="">Enging with</option>
												</select> <select class="span6">
													<option value="">Sorting</option>
													<option value="">Relevant on top</option>
													<option value="">Relevant on bottom</option>
												</select>
											</div>
											<button type="submit" class="btn btn-warning">Sort</button>
										</fieldset>
									</form>
								</div>
								<div class="tab-pane" id="dealership">
									<form>
										<fieldset>
											<div class="controls controls-row">
												<input type="text" class="span8" placeholder="Location">
												<select class="span4">
													<option>City</option>
													<option>Los Angeles</option>
													<option>Tokyo</option>
													<option>New York</option>
													<option>London</option>
												</select>
											</div>
											<button type="submit" class="btn btn-warning">Pesquisar</button>
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- FIM MODAL FILTRO -->
			</section>

		</section>
	</section>

	<script src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript" src="<c:url value="/js/bootstrap.js"/>"></script>
</body>