<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>Tetra WebTrack - Login</title>
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="span4 offset3"><img src="<c:url value='/img/logo.png' />" width="300" height="300" class="img-rounded"></div>
				<div class="span5">
					<form class="form-signin" action="${pageContext.request.contextPath}/autenticar" method="post">
						<div class="control-group">
							<label>Usuário:</label>
							<div class="input-prepend">
								<span class="add-on"><i class="icon-user"></i></span>
								<input class="span3" id="prependedInput" type="text" placeholder="Usuário" name="usuario.login" required>
							</div>
						</div>
						<div class="control-group">
							<label>Senha:</label>
							<div class="input-prepend">
								<span class="add-on"><i class="icon-lock"></i></span>
								<input class="span3" id="prependedInput" type="password" placeholder="Senha" name="usuario.senha" required>
							</div>
						</div>
						<div class="control-group" style="padding-left:10px";>
							<a href="#"></a>
							<a href="#myModal" role="button" data-toggle="modal">Esqueceu sua senha?</a>
						</div>
						<div class="control-group" style="padding-left:10px;">
							<button type="submit" class="btn btn-info" value="Acessar">Acessar</button>
						</div>
						<c:if test="${not empty error}">
						<div class="alert alert-error">
							<button class="close" data-dismiss="alert">&times;</button>
							${error}
						</div>
					</c:if>
					<c:if test="${not empty success}">
					<div class="alert alert-success">
						<button class="close" data-dismiss="alert">&times;</button>
						${success}
					</div>
				</c:if>
			</form>
		</div>
	</div>
</div>
</div>
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Recuperar Senha</h3>
	</div>
	<div class="modal-body">
		<form class="form-inline" action="${pageContext.request.contextPath}/enviarsenha" method="get">
			<div class="input-prepend">
				<span class="add-on"><i class="icon-envelope"></i></span>
				<input class="span4" id="prependedInput" type="text" placeholder="Email" name="email">
			</div>
			<button type="submit" class="btn btn-info">enviar</button>
		</form>
	</div>
	<div class="modal-footer"></div>
</div>
<footer>
	<%@ include file="/decorators/footer.jsp" %>
</footer>

<script src="http://code.jquery.com/jquery.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>