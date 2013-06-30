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
	<style type="text/css">
		#config {background-color: #fff;} 
	</style>
</head>
<body>
	<header>
		<%@ include file="/decorators/header.jsp" %>
	</header>
	<div class="wrapper">
		<div class="container">
			<div class="row">
				<p class="text-info">Configurações</p>
				<div class="span2">
					<div class="hero-unit" id="config">
						<ul class="inline">
 							<li><a href="${pageContext.request.contextPath}/listausuario"><img src="<c:url value='/img/usuario.png' />" class="img-rounded"></a></li>
  							<li>Usuário</li>							
						</ul>
					</div>
				</div>
				<div class="span2">
					<div class="hero-unit" id="config">
						<img src="<c:url value='/img/email.png' />" class="img-rounded">
						E-mail	
					</div>
				</div>
				<div class="span2">
					<div class="hero-unit" id="config">
						<img src="<c:url value='/img/bdados.png' />" class="img-rounded">
						Banco de dados		
					</div>
				</div>
				<div class="span2">
					<div class="hero-unit" id="config">
						
					</div>
				</div>
				<div class="span2">
					<div class="hero-unit" id="config">
						
					</div>
				</div>
				<div class="span2">
					<div class="hero-unit" id="config">
						
					</div>
				</div>
			</div>
		</div>

<div class="container">
			<div class="row">
				<p class="text-info">Configurações</p>
				<div class="span2">
					<div class="hero-unit" id="config">
						<img src="<c:url value='/img/usuario.png' />" class="img-rounded">
						Usuário	
					</div>
				</div>
				<div class="span2">
					<div class="hero-unit" id="config">
						<img src="<c:url value='/img/email.png' />" class="img-rounded">
						E-mail	
					</div>
				</div>
				<div class="span2">
					<div class="hero-unit" id="config">
						<img src="<c:url value='/img/bdados.png' />" class="img-rounded">
						Banco de dados		
					</div>
				</div>
				<div class="span2">
					<div class="hero-unit" id="config">
						
					</div>
				</div>
				<div class="span2">
					<div class="hero-unit" id="config">
						
					</div>
				</div>
				<div class="span2">
					<div class="hero-unit" id="config">
						
					</div>
				</div>
			</div>
		</div>

	</div>
	<footer>
		<%@ include file="/decorators/footer.jsp" %>
	</footer>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
</body>