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
					<table class="table table-bordered table-striped table-condensed" id="tabela">
						<thead>
							<tr>
								<th></th>
								<th>#</th>
								<th>Cliente</th>
								<th>Descrição</th>
								<th>Abertura</th>
								<th>Término</th>
								<th>Estado</th>
								<th>Técnico</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="chamado" items="${chamadoList}">
							<tr>
								<td><input type="checkbox"></td>
								<td>${chamado.id}</td>
								<td></td>
								<td>${chamado.problema}</td>
								<td>${chamado.dtabertura}</td>
								<td>${chamado.dtfechamento}</td>
								<td>${chamado.status}</td>
								<td>${chamado.id_cliente}</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<%@ include file="/decorators/footer.jsp" %>
	</footer>
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<c:url value="/js/jquery.dataTables.columnFilter.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/bootstrap.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/application.js"/>"></script>
</body>
</html>