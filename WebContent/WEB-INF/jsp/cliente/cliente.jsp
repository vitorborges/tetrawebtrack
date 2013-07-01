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
			<div class="span1 offset9">
				<a href="${pageContext.request.contextPath}/cliente/listacliente"><button class="btn btn-small btn-link" type="button">voltar</button></a>
			</div>
		</div>	
		<div class="row">
			<div class="span11 offset1">
				<div class="tabbable tabs-left">
				  <ul class="nav nav-tabs" id="myTab">
				    <li class="active" ><a href="#detalhe" data-toggle="tab">Detalhe</a></li>
				    <li class="" ><a href="#contatos" data-toggle="tab">Contatos</a></li>
				    <li class="" ><a href="#estat" data-toggle="tab">Estatísticas</a></li>
				  </ul>
					<div class="tab-content">
				    	<div class="tab-pane active" id="detalhe">
				    		
						ddddddddd

				    	</div>
				    	<div class="tab-pane" id="contatos">
				    		
				    	....

				    	</div>
				    	<div class="tab-pane" id="estat">
				    	
				    	eeeeeeeeeeeee	
				    		
				    	</div>
			    	</div>				

			    </div>			    
			</div>
		</div>
	</div>
	<footer>
		<%@ include file="/decorators/footer.jsp" %>
	</footer>	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="<c:url value="js/bootstrap.js"/>"></script>
	<script src="<c:url value="js/bootstrap-tabs.js"/>"></script>
<script>
  $(function () {
    $('#myTab a:last').tab('show');
  })
</script>

</body>