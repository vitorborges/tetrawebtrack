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
				<p><a href="${pageContext.request.contextPath}/grupo/form"><button class="btn btn-small btn-primary" type="button">Cadastrar</button></a></p>
			</div>
			<div class="span1 offset5">
				<a href="${pageContext.request.contextPath}"><button class="btn btn-small btn-link" type="button">home</button></a>
			</div>
		</div>	
		<div class="row">
			<div class="span7 offset2">
				<table class="table table-condensed">
					<tr>
						<td><strong>#Id</strong></td>
						<td><strong>Nome</strong></td>
						<td><strong>Descrição</strong></td>
						<td><strong>Ações</strong></td>
					</tr>
					<c:forEach var="grupo" items="${grupoList}">
						<tr>
							<td>${grupo.id}</td>
							<td>${grupo.nome}</td>
							<td>${grupo.descricao}</td>
							<td>
								<a href="${pageContext.request.contextPath }/grupo/editar/${grupo.id}"><img	src="<c:url value='/img/icones/pencil-16.png'/>" /></a>
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