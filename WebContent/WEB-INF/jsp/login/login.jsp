<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link href="<c:url value="/css/style_body.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<script type="text/javascript" src="<c:url value="/js/bootstrap.js"/>"></script>
	<title>Tetra WebTrack</title>
</head>
<body>
	<div class="container">
		<div class="row">
		</div>
		<div style="margin-top:80px;">
			<div class="row">
				<div class="span2"></div>
				<div class="span4">	<img src="<c:url value='/img/logo.png' />" class="img-rounded"> </div>
				<div class="span5" style="padding-left:50px;">
					<h3 style="padding-left:107px;">TETRA WEBTRACK</h3>
					<fieldset class="form-signin">
						<form class="form-horizontal" class="navbar-form" action="${pageContext.request.contextPath}/autenticar" method="post">
							<div class="control-group">
								<label>Usuário:</label>
								<div class="input-prepend">
									<span class="add-on"><i class="icon-user"></i></span>
									<input class="span3" id="prependedInput" type="text" placeholder="E-mail" name="usuario.email">
								</div>
							</div>
							<div class="control-group">
								<label>Senha:</label>
								<div class="input-prepend">
									<span class="add-on"><i class="icon-lock"></i></span>
									<input class="span3" id="prependedInput" type="password" placeholder="Senha" name="usuario.senha">
								</div>
							</div>
							<div class="control-group" style="padding-left:10px";>
								<a href="#">Esqueceu sua senha?</a>
							</div>
							<div class="control-group" style="padding-left:10px;">
								<button type="submit" class="btn btn-info" value="Acessar">Acessar</button>
							</div>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
