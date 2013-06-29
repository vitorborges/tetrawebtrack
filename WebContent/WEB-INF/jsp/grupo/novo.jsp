<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Tetra WebTrack - Novo Cliente</title>

<!-- css externos -->
<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet"
	type="text/css" media="screen" />
<link href="<c:url value="/css/bootstrap-responsive.css"/>"
	rel="stylesheet" type="text/css" media="screen" />
<link href="<c:url value="/css/style_body.css"/>" rel="stylesheet"
	type="text/css" media="screen" />
</head>
<body>

	<header> <%@ include file="/decorators/header.jsp"%>
	</header>
	<br>
	<br>
	<div class="container well">
		<div>
			<h2>Grupos</h2>
		</div>

		<div class="tabbable tabs-left">
			<ul class="nav nav-tabs" id="abas">
				<li class="active" id="aba_cadastro_medico"><a
					href="#cadastro_medico" data-toggle="tab"><i class="icon-plus"></i>
						Cadastrar Grupos</a></li>
				<li id="aba_listagem_medico"><a href="#listagem_medico"
					data-toggle="tab"><i class="icon-list-alt"></i> Listagem de Grupos</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="cadastro_medico">
					<form action="<c:url value="/grupo/gravar"/>" method="post" id="form_cadastro_grupo">
						<fieldset>
							<legend>Cadastro de Grupos</legend>
							<input type="hidden" name="idgrupo">
							<div class="control-group">
								<label class="control-label required"
									for="form_cadastro_medico:nome">Nome: </label>
								<div class="controls">
									<input type="text" name="grupo.nome" placeholder="Nome" required="">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label required"
									for="form_cadastro_medico:crm">Descrição: </label>
								<div class="controls">
									<input type="text" name="grupo.descricao" placeholder="Descrição" >
	
								</div>
							</div>
						</fieldset>
						<div class="control-group">
								 <button type="reset" id="singlebutton" name="singlebutton" class="btn btn-default"> <i class="icon-remove"></i> Limpar</button>
								 <button type="submit" id="singlebutton" name="singlebutton" class="btn btn-default"> <i class="icon-ok"></i> Cadastrar</button>
							</div>
						</div>
					</form>
				</div>
				<footer> <%@ include file="/decorators/footer.jsp"%>
				</footer>
</body>

</html>