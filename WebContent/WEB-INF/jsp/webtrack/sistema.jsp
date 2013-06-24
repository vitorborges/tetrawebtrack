<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
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
				<div class="span4">
					<div class="hero-unit">
						<h4>Chamados</h4>
						<!-- <img src="<c:url value='/img/helpdesk.png' />" alt="" /> -->
						<label>Pendentes <span class="badge badge-important pull-right">5</span></label>
						<label>Resolvidos <span class="badge badge-success pull-right">7</span></label>
						<label>Cancelados <span class="badge badge-important pull-right">2</span></label>
					</div>
				</div>
				<div class="span4">
					<div class="hero-unit">
						<h4>Base de conhecimento</h4>
						<!-- <img src="<c:url value='/img/helpdesk.png' />" alt="" /> -->
						<label>Em aprovação <span class="badge badge-info pull-right">4</span></label>
						<label>Adicionadas recentemente<span class="badge badge-warning pull-right">3</span></label>
						<label>Rejeitadas <span class="badge badge-info pull-right">0</span></label>
					</div>
				</div>
				<div class="span4">
					<div class="hero-unit">
						<h4>Implantações</h4>
						<!-- <img src="<c:url value='/img/helpdesk.png' />" alt="" /> -->
						<label>Em andamento <span class="badge pull-right">1</span></label>
						<label>Agendadas <span class="badge badge-important pull-right">3</span></label>
						<label>Concluidas <span class="badge badge-success pull-right">4</span></label>
					</div>
				</div>
			</div>
		</div>
	</div>	
	
	<footer>
		<%@ include file="/decorators/footer.jsp" %>
	</footer>
</body>