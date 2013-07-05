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
				<div class="span4">
					<div class="hero-unit">
						<h3><i class="icon-desktop icon-2x opacity"></i> Chamados</h3>
						<label>Pendentes <span class="badge pull-right">5</span></label>
						<label>Resolvidos <span class="badge pull-right">7</span></label>
						<label>Cancelados <span class="badge pull-right">2</span></label>
					</div>
				</div>
				<div class="span4">
					<div class="hero-unit">
						<h3><i class="icon-cloud icon-2x opacity"></i> KB</h3>
						<label>Em Desenvolvimento <span class="badge pull-right">0</span></label>
						<label>Em Desenvolvimento<span class="badge pull-right">0</span></label>
						<label>Em Desenvolvimento <span class="badge pull-right">0</span></label>
					</div>
				</div>
				<div class="span4">
					<div class="hero-unit">
						<h3><i class="icon-folder-open icon-2x opacity"></i> Implantações</h3>
						<label>Em Desenvolvimento <span class="badge pull-right">0</span></label>
						<label>Em Desenvolvimento <span class="badge pull-right">0</span></label>
						<label>Em Desenvolvimento <span class="badge pull-right">0</span></label>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<%@ include file="/decorators/footer.jsp" %>
	</footer>
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<c:url value="/js/bootstrap.js"/>"></script>
</body>