<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/font-awesome.css"/>" rel="stylesheet">
	<link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link rel="shortcut icon" href="<c:url value="/img/logo.png"/>" />
</head>
<body>
	<header>
		<%@ include file="/decorators/header.jsp" %>
	</header>
	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="span2">
					<%@ include file="/decorators/sidebar.jsp" %>
				</div>
				<div class="span10">
					<table class="table table-bordered table-striped" id="tabela">
						<thead>
							<tr class="info">
								<th>#</th>
								<th>Cliente</th>
								<th>Descrição</th>
								<th>Abertura</th>
								<th>Término</th>
								<th>Estado</th>
								<th>Técnico</th>
								<th>Observação</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Ipiranga HC</td>
								<td>Máquina de expedição não liga</td>
								<td>25/06/2013 13:20</td>
								<td></td>
								<td>Pendente</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>2</td>
								<td>Emprecom Formosa</td>
								<td>Instalar impressora nova</td>
								<td>25/06/2013 14:10</td>
								<td>25/06/2013 14:46</td>
								<td>Resolvido</td>
								<th>Júnior</th>
								<td></td>
							</tr>
							<tr>
								<td>3</td>
								<td>Depósito do Kleber</td>
								<td>Formatar servidor</td>
								<td>25/06/2013 13:43</td>
								<td>25/06/2013 13:47</td>
								<td>Resolvido</td>
								<td>Robson</td>
								<td></td>
							</tr>
							<tr>
								<td>4</td>
								<td>Casa das Tintas</td>
								<td>Instalar certificado digital</td>
								<td>25/06/2013 15:10</td>
								<td>25/06/2013 15:25</td>
								<td>Resolvido</td>
								<td>Braz</td>
								<td></td>
							</tr>
							<tr>
								<td>5</td>
								<td>Supermercado Econômico</td>
								<td>Configurar balança</td>
								<td>25/06/2013 15:28</td>
								<td>25/06/2013 15:34</td>
								<td>Resolvido</td>
								<td>Renato</td>
								<td></td>
							</tr>
							<tr>
								<td>6</td>
								<td>Irmãos Pessanha</td>
								<td>Backup dos dados</td>
								<td>25/06/2013 16:00</td>
								<td>25/06/2013 17:20</td>
								<td>Resolvido</td>
								<td>Renato</td>
								<td></td>
							</tr>
							<tr>
								<td>7</td>
								<td>Meca</td>
								<td>Migração do sistema</td>
								<td>25/06/2013 13:15</td>
								<td>25/06/2013 19:32</td>
								<td>Resolvido</td>
								<td>Thiago</td>
								<td></td>
							</tr>
							<tr>
								<td>8</td>
								<td>Demaco</td>
								<td>Instalar impressora de etiqueta</td>
								<td>25/06/2013 17:03</td>
								<td>25/06/2013 18:20</td>
								<td>Resolvido</td>
								<td>Braz</td>
								<td></td>
							</tr>
							<tr>
								<td>9</td>
								<td>Rei do Queijo</td>
								<td>Instalar placa multi-serial</td>
								<td>25/06/2013 17:03</td>
								<td></td>
								<td>Pendente</td>
								<td>Alcides</td>
								<td></td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th></th>
								<th>
									<select></select>
								</th>
								<th>
									<select></select>
								</th>
								<th>
									<select></select>
								</th>
								<th>
									<select></select>
								</th>
								<th>
									<select></select>
								</th>
								<th>
									<select></select>
								</th>
								<th>
									<select></select>
								</th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<%@ include file="/decorators/footer.jsp" %>
	</footer>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<c:url value="/js/jquery.dataTables.columnFilter.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/bootstrap.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/application.js"/>"></script>
</body>