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
			<div class="span1 offset2">
				<p><a href="${pageContext.request.contextPath}/usuario/form"><button class="btn btn-small btn-primary" type="button">Cadastrar</button></a></p>
			</div>
			<div class="span1 offset5">
				<a href="${pageContext.request.contextPath}/homeadmin"><button class="btn btn-small btn-link" type="button">voltar</button></a>
			</div>
		</div>
		<div class="row">
			<div class="span7 offset2">
				<table class="table table-condensed">
					<tr>
						<td><strong>#Id</strong></td>
						<td><strong>Nome</strong></td>
						<td><strong>Login</strong></td>
						<td><strong>E-mail</strong></td>
						<td><strong>Telefone</strong></td>
						<td><strong>Perfil</strong></td>
						<td><strong>Ações</strong></td>
					</tr>
					<c:forEach var="usuario" items="${usuarioList}">
					<tr>
						<td>${usuario.id}</td>
						<td>${usuario.nome}</td>
						<td>${usuario.login}</td>
						<td>${usuario.email}</td>
						<td>${usuario.telefone}</td>
						<td>${usuario.perfil }</td>
							<td>
								<c:if test="${(usuario.perfil != 'ADMIN')}"><a href="${pageContext.request.contextPath }/usuario/editar/${usuario.id}"><img	src="<c:url value='/img/icones/pencil-16.png'/>" /></a></c:if>
								<c:if test="${usuario.inativo }"><img src="<c:url value='/img/icones/badge-square-cross-16.png'/>"></c:if>

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