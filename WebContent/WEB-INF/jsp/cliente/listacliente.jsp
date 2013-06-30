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
		<div class="row">	
			<div class="span1 offset1">
				<p><a href="${pageContext.request.contextPath}/cliente/form"><button class="btn btn-small btn-primary" type="button">Cadastrar</button></a></p>
			</div>
			<div class="span1 offset9">
				<a href="${pageContext.request.contextPath}"><button class="btn btn-small btn-link" type="button">home</button></a>
			</div>
		</div>	
		<div class="row">
			<div class="span11 offset1">
				<table class="table table-condensed">
					<tr>
						<td><strong>#Id</strong></td>
						<td><strong>Fantasia</strong></td>
						<td><strong>Razão Social</strong></td>
						<td><strong>CNPJ</strong></td>
						<td><strong>Telefone</strong></td>
						<td><strong>E-mail</strong></td>
						<td><strong>Endereço</strong></td>
						<td><strong>Bairro</strong></td>
						<td><strong>Cidade</strong></td>
						<td><strong>Responsável</strong></td>
						<td><strong>Ações</strong></td>
					</tr>
					<c:forEach var="cliente" items="${clienteList}">
					<tr>
						<td>${cliente.id}</td>
						<td>${cliente.fantasia}</td>
						<td>${cliente.razaosocial}</td>
						<td>${cliente.cnpj}</td>
						<td>${cliente.fone1} | ${cliente.fone2}</td>
						<td>${cliente.email}</td>
						<td>${cliente.endereco}, ${cliente.numero}</td>
						<td>${cliente.bairro}</td>
						<td>${cliente.cidade}</td>
						<td>${cliente.responsavel}</td>
							<td>
								<c:if test="${(usuario.perfil != 'CLIENTE' && usuario.perfil != 'TECNICO')}"><a href="${pageContext.request.contextPath }/cliente/editar/${cliente.id}"><img	src="<c:url value='/img/icones/pencil-16.png'/>" /></a></c:if>
								<c:if test="${cliente.inativo }"><img src="<c:url value='/img/icones/badge-square-cross-16.png'/>"></c:if>

							</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<footer>
		<%@ include file="/decorators/footer.jsp" %>
	</footer>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
</body>