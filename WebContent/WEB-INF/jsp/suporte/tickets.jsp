<<<<<<< HEAD
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
				<!-- <div class="span2">
					<%@ include file="/decorators/sidebar.jsp" %>
				</div> -->
				<div class="span12">
					<table class="table table-bordered table-striped" id="tabela">
						<thead>
							<tr class="info">
								<th>#</th>
								<th>Cliente</th>
								<th>Descrição</th>
								<th>Solução</th>
								<th>Abertura</th>
								<th>Término</th>
								<th>Estado</th>
								<th>Técnico</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Ipiranga HC</td>
								<td>Balcão não funciona</td>
								<td>Servidor reiniciado</td>
								<td>25/06/2013 13:20</td>
								<td>25/06/2013 13:40</td>
								<td>Resolvido</td>
								<th>Matheus</th>
							</tr>
							<tr>
								<td>2</td>
								<td>Emprecom Guarus</td>
								<td>Sistema desatualizado</td>
								<td></td>
								<td>25/06/2013 14:00</td>
								<td></td>
								<td>Pendente</td>
								<th>Jocinardo</th>
							</tr>
							<tr>
								<td>3</td>
								<td>Depósito do Kleber</td>
								<td>Caixa 1 não exportou</td>
								<td>Caixa exportado</td>
								<td>25/06/2013 13:43</td>
								<td>25/06/2013 13:47</td>
								<td>Resolvido</td>
								<th>Robson</th>
							</tr>
							<tr>
								<td>4</td>
								<td>Casa das Tintas</td>
								<td>Não consegue reemitir nota fiscal</td>
								<td>Download de xml e reimpressão pelo UNIDANFE</td>
								<td>25/06/2013 15:10</td>
								<td>25/06/2013 15:25</td>
								<td>Resolvido</td>
								<th>Matheus</th>
							</tr>
							<tr>
								<td>5</td>
								<td>Supermercado Econômico</td>
								<td>Busca preço não funciona</td>
								<td>Sistema reiniciado</td>
								<td>25/06/2013 15:28</td>
								<td>25/06/2013 15:34</td>
								<td>Resolvido</td>
								<th>Lucas</th>
							</tr>
							<tr>
								<td>6</td>
								<td>Irmãos Pessanha</td>
								<td>Cancelamento de nota fiscal</td>
								<td></td>
								<td>25/06/2013 16:00</td>
								<td></td>
								<td>Pendente</td>
								<th>Matheus</th>
							</tr>
							<tr>
								<td>7</td>
								<td>Meca</td>
								<td>Nota sendo emitida pela filial errada</td>
								<td>Sistema configurado corretamente</td>
								<td>25/06/2013 16:15</td>
								<td>25/06/2013 17:00</td>
								<td>Resolvido</td>
								<th>Vitor</th>
							</tr>
							<tr>
								<td>8</td>
								<td>Demaco</td>
								<td>DAV saindo cortado</td>
								<td>Configurada impressora no padrão A5</td>
								<td>25/06/2013 17:03</td>
								<td>25/06/2013 17:10</td>
								<td>Resolvido</td>
								<th>Carlos</th>
							</tr>
							<tr>
								<td>9</td>
								<td>Rei do Queijo</td>
								<td>Erro no balanço</td>
								<td></td>
								<td>25/06/2013 17:03</td>
								<td></td>
								<td>Pendente</td>
								<th>Marcus</th>
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
=======
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
								<th>Solução</th>
								<th>Abertura</th>
								<th>Término</th>
								<th>Estado</th>
								<th>Técnico</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Ipiranga HC</td>
								<td>Balcão não funciona</td>
								<td>Servidor reiniciado</td>
								<td>25/06/2013 13:20</td>
								<td>25/06/2013 13:40</td>
								<td>Resolvido</td>
								<th>Matheus</th>
							</tr>
							<tr>
								<td>2</td>
								<td>Emprecom Guarus</td>
								<td>Sistema desatualizado</td>
								<td></td>
								<td>25/06/2013 14:00</td>
								<td></td>
								<td>Pendente</td>
								<th>Jocinardo</th>
							</tr>
							<tr>
								<td>3</td>
								<td>Depósito do Kleber</td>
								<td>Caixa 1 não exportou</td>
								<td>Caixa exportado</td>
								<td>25/06/2013 13:43</td>
								<td>25/06/2013 13:47</td>
								<td>Resolvido</td>
								<th>Robson</th>
							</tr>
							<tr>
								<td>4</td>
								<td>Casa das Tintas</td>
								<td>Não consegue reemitir nota fiscal</td>
								<td>Download de xml e reimpressão pelo UNIDANFE</td>
								<td>25/06/2013 15:10</td>
								<td>25/06/2013 15:25</td>
								<td>Resolvido</td>
								<th>Matheus</th>
							</tr>
							<tr>
								<td>5</td>
								<td>Supermercado Econômico</td>
								<td>Busca preço não funciona</td>
								<td>Sistema reiniciado</td>
								<td>25/06/2013 15:28</td>
								<td>25/06/2013 15:34</td>
								<td>Resolvido</td>
								<th>Lucas</th>
							</tr>
							<tr>
								<td>6</td>
								<td>Irmãos Pessanha</td>
								<td>Cancelamento de nota fiscal</td>
								<td></td>
								<td>25/06/2013 16:00</td>
								<td></td>
								<td>Pendente</td>
								<th>Matheus</th>
							</tr>
							<tr>
								<td>7</td>
								<td>Meca</td>
								<td>Nota sendo emitida pela filial errada</td>
								<td>Sistema configurado corretamente</td>
								<td>25/06/2013 16:15</td>
								<td>25/06/2013 17:00</td>
								<td>Resolvido</td>
								<th>Vitor</th>
							</tr>
							<tr>
								<td>8</td>
								<td>Demaco</td>
								<td>DAV saindo cortado</td>
								<td>Configurada impressora no padrão A5</td>
								<td>25/06/2013 17:03</td>
								<td>25/06/2013 17:10</td>
								<td>Resolvido</td>
								<th>Carlos</th>
							</tr>
							<tr>
								<td>9</td>
								<td>Rei do Queijo</td>
								<td>Erro no balanço</td>
								<td></td>
								<td>25/06/2013 17:03</td>
								<td></td>
								<td>Pendente</td>
								<th>Marcus</th>
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
>>>>>>> 9419e8ab657b45146756ace57d9b70a8bcb47df6
</body>