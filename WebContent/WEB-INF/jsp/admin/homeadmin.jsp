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
		<%@ include file="/decorators/header.jsp"%>
	</header>
	<div class="wrapper">
		<div class="container">

			<div class="row">
				<legend>Painel de Configurações</legend>
				<ul class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab"><i
							class="icon-wrench icon-white"></i> Geral</a></li>
					<li><a href="#mail" data-toggle="tab"><i
							class=" icon-envelope icon-white"></i> E-mail</a></li>
					<li><a href="#profile" data-toggle="tab"><i
							class="  icon-tasks icon-white"></i> Banco de Dados</a></li>
					<li><a href="#profile" data-toggle="tab"><i
							class="  icon-user icon-white"></i> Usuario</a></li>
				</ul>

				<div class="tab-content">
					<div class="tab-pane active" id="home"></div>
					<div class="tab-pane" id="mail">

						<form class="form-horizontal" action="<c:url value='/config/gravar'/>" method="post">
							<fieldset>
								
						
								
								<!-- Form Name -->
								<legend>Configurações de Email do Sistema</legend>

								<!-- Text input-->
								<div class="control-group">
									<label class="control-label">Email</label>
									<div class="controls">
										<input id="textinput" name="config.emaillogin" type="email"
											placeholder="Email" class="input-xlarge" required="">

									</div>
								</div>

								<!-- Text input-->
								<div class="control-group">
									<label class="control-label">Porta SMTP</label>
									<div class="controls">
										<input id="textinput" name="config.emailporta" type="text"
											placeholder="Porta SMTP" class="input-xlarge" required="">
										<p class="help-block">(587, 465)</p>
									</div>
								</div>

								<!-- Text input-->
								<div class="control-group">
									<label class="control-label">Senha</label>
									<div class="controls">
										<input id="textinput" name="config.emailsenha" type="text"
											placeholder="Senha" class="input-xlarge" required="">

									</div>
								</div>

								<!-- Text input-->
								<div class="control-group">
									<label class="control-label">Servidor</label>
									<div class="controls">
										<input id="textinput" name="config.emailsmtp" type="text"
											placeholder="Servidor" class="input-xlarge" required="">
										<p class="help-block">smtp.meuprovedor.com.br</p>
									</div>
									<br> 
									  <button id="button1id" name="button1id" class="btn btn-info"> <i class="icon-ok icon-white"></i> Gravar</button>
									 <a href="#"class="btn btn-info"><i class="icon-remove icon-white"></i>Cancelar</a>
								</div>

							</fieldset>

						</form>

					</div>
					<div class="tab-pane" id="messages">BB</div>
					<div class="tab-pane" id="settings">CC</div>
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