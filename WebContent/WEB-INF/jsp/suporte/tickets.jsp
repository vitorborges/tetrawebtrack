<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<!-- CSS -->
	<link href="<c:url value="/css/tickets/bootstrap.min.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/tickets/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/tickets/style.css"/>" rel="stylesheet" type="text/css" media="screen" />

	
	
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
							
							
						</ul>
						<ul class="nav pull-right">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<c:url value="/img/usuario.png"/>"> ${userSession.user.nome} <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#"><i class="icon-cog"></i> Configurações</a></li>
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
<section class="container-fluid pad40">
	
	<section class="row-fluid">
		<div class="span2 sideBar" style="height: 2254px;">
			
			<br>
			<ul>
				<li class="" data-target="dashboard"><figure><i class="icon-user"></i> Tetra Soluções &nbsp;&nbsp;</figure></li>
				<hr>
				<li data-target="projects" class="active"><figure><i class="icon-user"></i> Tetra Soluções &nbsp;&nbsp;</figure></li>
				<li data-target="tasks" class=""><figure><i class="icon-user"></i> Tetra Soluções &nbsp;&nbsp;<span class="badge badge-info">3</span></figure></li>
				<li data-target="messages" class=""><figure><i class="icon-user"></i> Tetra Soluções &nbsp;&nbsp;<span class="badge badge-info">3</span></figure></li>
				<hr>
				<li data-target="functions"><figure><i class="icon-user"></i> Tetra Soluções </figure></li>
				<li class="dropper">
					<figure><i class="icon-circle-arrow-down"></i> Mais Opções &nbsp;›</figure>
					<ul class="subSide">
						<li><i class="icon-plus"></i> List Item 1</li>
						<li><i class="icon-plus"></i> List Item 2</li>
						<li><i class="icon-plus"></i> List Item 3</li>
					</ul>
				</li>
				<li data-target="charts" class=""><figure><i class="icon-user"></i> Tetra Soluções </figure></li>
				<hr>
				<li data-target="settings"><figure><i class="icon-user"></i> Tetra Soluções </figure></li>
				<li data-target="profile"><figure><i class="icon-user"></i> Tetra Soluções </figure></li>
				<hr>
				<li data-target="help"><figure><i class="icon-question-sign"></i> Ajuda</figure></li>
			</ul>
		</div>
		<section class="span10 content borBox" style="height: 2284px;"><div class="row-fluid">
	<div class="span12">
		<div class="page-header">
			<h1>HelpDesk<small> Listagem de Tickets</small></h1>
		</div>
	</div>
</div>
<br>

<div class="row-fluid">
	<div class="span12">
		<table class="table table-bordered table-projects">
			<thead>
				<tr><th>#</th>
				<th>Cliente</th>
				<th>Data</th>
				<th>Descrição</th>
				<th>Status</th>
				<th>SLA</th>
			</tr></thead>
			<tbody>	
				<tr>
					<td>1</td>
					<td>MBSOL GUARUS</td>
					<td>21/06/2013 - 05:00:00</td>
					<td>Duvida na Emissão de NF-e</td>
					<td>
						  <button class="btn btn-small btn-success" type="button">Fechar</button>
						  <button class="btn btn-small btn-warning" type="button">Atribuir</button>
						
					</td>
					<td>
						<div class="progress progress-success">
							<div class="bar" style="width:90%">
						</div>
					</div></td>
				</tr>
				<tr>
					<td>2</td>
					<td>KITEM 28</td>
					<td>21/06/2013 - 05:00:00</td>
					<td>Configurar Leitor de Código de Barras</td>
					<td>
						<div class="btn-group sharp">
							<button class="btn btn-primary" rel="tooltip" data-original-title="Messages"><i class="icon-white icon-envelope"></i> 2</button>
							<button class="btn btn-primary" rel="tooltip" data-original-title="Files"><i class="icon-white icon-file"></i> 1</button>
							<button class="btn btn-primary" rel="tooltip" data-original-title="Tasks"><i class="icon-white icon-edit"></i> 7</button>
						</div>
					</td>
					<td>
						<div class="progress progress-warning">
							<div class="bar" style="width:55%">
						</div>
					</div></td>
				</tr>
				<tr>
					<td>3</td>
					<td>ROMÃO</td>
					<td>21/06/2013 - 05:00:00</td>
					<td>Atualizar SG</td>
					<td>
						<div class="btn-group sharp">
							<button class="btn btn-primary" rel="tooltip" data-original-title="Messages"><i class="icon-white icon-envelope"></i> 4</button>
							<button class="btn btn-primary" rel="tooltip" data-original-title="Files"><i class="icon-white icon-file"></i> 11</button>
							<button class="btn btn-primary" rel="tooltip" data-original-title="Tasks"><i class="icon-white icon-edit"></i> 22</button>
						</div>
					</td>
					<td>
						<div class="progress progress-danger">
							<div class="bar" style="width:15%">
						</div>
					</div></td>
				</tr>	
			</tbody>
		</table>

	</div>
</div>
<div class="row-fluid">
	<div class="span12">
		<!-- BOTAO NOVO TICKET - ACTION ABRIR MODAL -->
		<div>
		<a href="#myModal" role="button" class="btn btn-info btn-sharp" data-toggle="modal">Novo Ticket</a>
		</div>
		<br>
	</div>
</div>
<br>
<br>

<!--  MODAL NOVO TICKET -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Abertura de Ticket</h3>
  </div>
  <div class="modal-body">
    <div class="row">
	<div class="span8">
		<form action="billing" method="post" class="form-horizontal" id="billingform" accept-charset="utf-8">
			<div class="control-group">
				<label for="email" class="control-label">	
					Billing E-Mail 
				</label>
				<div class="controls">
					<input name="email" type="email" value="" id="email">
					<span class="help-inline">  Where should we send invoices?</span>
				</div>
			</div>
 
			<div class="control-group">
				<label for="address" class="control-label">	
					Street Address
				</label>
				<div class="controls"><input name="address" placeholder="W 123 Street" type="text" value="" id="address"><span class="help-inline">  Street Name and/or apartment number</span>
				</div>
			</div>
 
			<div class="control-group">
				<label for="zip" class="control-label">	
					Zip Code
				</label>
				<div class="controls"><input name="zip" type="text" value="" id="zip">
				</div>
			</div>
 
			<div class="control-group">
				<label for="city" class="control-label">	
					City
				</label>
				<div class="controls"><input name="city" type="text" value="" id="city">
				</div>
			</div>
			
			<div class="control-group">
				<label for="country" class="control-label">	
					Country
				</label>
				<div class="controls">
					<select name="country" id="country">
						<option value=""></option>
						<option value="AR">Argentina</option>
						<option value="AU">Australia</option>
						<option value="AT">Austria</option>
						<option value="BY">Belarus</option>
						<option value="BE">Belgium</option>
						<option value="BA">Bosnia and Herzegovina</option>
						<option value="BR">Brazil</option>
						<option value="BG">Bulgaria</option>
						<option value="CA">Canada</option>
						<option value="CL">Chile</option>
						<option value="CN">China</option>
						<option value="CO">Colombia</option>
						<option value="CR">Costa Rica</option>
						<option value="HR">Croatia</option>
						<option value="CU">Cuba</option>
						<option value="CY">Cyprus</option>
						<option value="CZ">Czech Republic</option>
						<option value="DK">Denmark</option>
						<option value="DO">Dominican Republic</option>
						<option value="EG">Egypt</option>
						<option value="EE">Estonia</option>
						<option value="FI">Finland</option>
						<option value="FR">France</option>
						<option value="GE">Georgia</option>
						<option value="DE">Germany</option>
						<option value="GI">Gibraltar</option>
						<option value="GR">Greece</option>
						<option value="HK">Hong Kong S.A.R., China</option>
						<option value="HU">Hungary</option>
						<option value="IS">Iceland</option>
						<option value="IN">India</option>
						<option value="ID">Indonesia</option>
						<option value="IR">Iran</option>
						<option value="IQ">Iraq</option>
						<option value="IE">Ireland</option>
						<option value="IL">Israel</option>
						<option value="IT">Italy</option>
						<option value="JM">Jamaica</option>
						<option value="JP">Japan</option>
						<option value="KZ">Kazakhstan</option>
						<option value="KW">Kuwait</option>
						<option value="KG">Kyrgyzstan</option>
						<option value="LA">Laos</option>
						<option value="LV">Latvia</option>
						<option value="LB">Lebanon</option>
						<option value="LT">Lithuania</option>
						<option value="LU">Luxembourg</option>
						<option value="MK">Macedonia</option>
						<option value="MY">Malaysia</option>
						<option value="MT">Malta</option>
						<option value="MX">Mexico</option>
						<option value="MD">Moldova</option>
						<option value="MC">Monaco</option>
						<option value="ME">Montenegro</option>
						<option value="MA">Morocco</option>
						<option value="NL">Netherlands</option>
						<option value="NZ">New Zealand</option>
						<option value="NI">Nicaragua</option>
						<option value="KP">North Korea</option>
						<option value="NO">Norway</option>
						<option value="PK">Pakistan</option>
						<option value="PS">Palestinian Territory</option>
						<option value="PE">Peru</option>
						<option value="PH">Philippines</option>
						<option value="PL">Poland</option>
						<option value="PT">Portugal</option>
						<option value="PR">Puerto Rico</option>
						<option value="QA">Qatar</option>
						<option value="RO">Romania</option>
						<option value="RU">Russia</option>
						<option value="SA">Saudi Arabia</option>
						<option value="RS">Serbia</option>
						<option value="SG">Singapore</option>
						<option value="SK">Slovakia</option>
						<option value="SI">Slovenia</option>
						<option value="ZA">South Africa</option>
						<option value="KR">South Korea</option>
						<option value="ES">Spain</option>
						<option value="LK">Sri Lanka</option>
						<option value="SE">Sweden</option>
						<option value="CH">Switzerland</option>
						<option value="TW">Taiwan</option>
						<option value="TH">Thailand</option>
						<option value="TN">Tunisia</option>
						<option value="TR">Turkey</option>
						<option value="UA">Ukraine</option>
						<option value="AE">United Arab Emirates</option>
						<option value="GB">United Kingdom</option>
						<option value="US">USA</option>
						<option value="UZ">Uzbekistan</option>
						<option value="VN">Vietnam</option>
					</select>
				</div>
			</div>
 
			<div class="form-actions">
				<button type="submit" class="btn btn-large btn-primary">Save Billing Address</button>
			</div>
		</form>
	</div> <!-- .span8 -->
</div>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
    <button class="btn btn-primary">Save changes</button>
  </div>
</div>
<!-- FIM MODAL -->
</section>

	</section>
</section>
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript" src="<c:url value="/js/bootstrap.js"/>"></script>
</body>