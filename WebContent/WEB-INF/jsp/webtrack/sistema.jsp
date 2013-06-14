<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<!-- css -->
    <link href="<c:url value="/css/style_body.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
    
    
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/jquery.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-transition.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-alert.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-modal.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-dropdown.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-scrollspy.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-tab.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-tooltip.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/avascript/bootstrap-popover.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-button.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-collapse.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-carousel.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/javascript/bootstrap-typeahead.js"/>"></script>

    
	<title>Tetra WebTrack</title>
</head>
<body> 
<div class="navbar navbar-inverse navbar-fixed-top">
     <div class="navbar-inner">
     	<div class="container-fluid">
       		<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
       		<span class="icon-bar"></span>
       		<span class="icon-bar"></span>
       		<span class="icon-bar"></span>
       
       			</button>
          			<a class="brand" href="#">Tetra WebTrack</a>
          			<!-- Direito -->
          			<div class="nav-collapse collapse">
            		<p class="navbar-text pull-right">
           			<img src="<c:url value='/img/configuracoes.png' />" alt="" /> 
           			<img src="<c:url value='/img/notificacao.png' />" alt="" />  
  		  			<input type="text" class="input-medium search-query" value="">
           			<img src="<c:url value='/img/usuario.png' />" alt="" /> 
            		<a href="#" class="navbar-link">Analista de Sistemas</a> 
            		
            		<ul class="nav">
                         
                  <li class="dropdown">
                 	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<c:url value='/img/helpdesk.png' />" alt="" />  <b class="caret"></b></a>
                 		<ul class="dropdown-menu">
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                		</ul>	
                		
                		<li class="dropdown">
                 	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<c:url value='/img/kb.png' />" alt="" />  <b class="caret"></b></a>
                 		<ul class="dropdown-menu">
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                		</ul>	
                		
                		<li class="dropdown">
                 	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<c:url value='/img/projetos.png' />" alt="" />  <b class="caret"></b></a>
                 		<ul class="dropdown-menu">
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                  		<li><a href="produtos/cadastro">Tetra Soluções</a></li>
                		</ul>		 
            		</ul>
          </div>
        </div>
      </div>
    </div>
    
    <br>
    <br>
    <br>
    <br>
     <div class="container-fluid">
     
    <!-- Chamados -->
	<div class="body-sistema">
		<legend>Chamados</legend>
       <img src="<c:url value='/img/helpdesk.png' />" alt="" />
       <br>
       <br> 
       <label>seus tickets não resolvidos <span class="badge badge-inverse">10</span></label>
       <label>seus tickets não atribuido <span class="badge badge-inverse">10</span></label>
       <label>seus tickets cancelados <span class="badge badge-inverse">10</span></label>
       <br>
       <br>
       <button class="btn btn-inverse" type="button">Novo</button>
	</div>
	
	<!-- Base De Conhecimento -->
	<div class="body-sistema">
		<legend>Base de Conhecimento</legend>
       <img src="<c:url value='/img/helpdesk.png' />" alt="" />
       <br>
       <br> 
       <label>seus tickets não resolvidos <span class="badge badge-inverse">10</span></label>
       <label>seus tickets não atribuido <span class="badge badge-inverse">10</span></label>
       <label>seus tickets cancelados <span class="badge badge-inverse">10</span></label>
       <br>
       <br>
       <button class="btn btn-inverse" type="button">Novo</button>
	</div>
	
	<!-- implantações -->
	<div class="body-sistema">
	   <legend>Implantações</legend>
       <img src="<c:url value='/img/helpdesk.png' />" alt="" />
       <br>
       <br> 
       <label>seus tickets não resolvidos <span class="badge badge-inverse">10</span></label>
       <label>seus tickets não atribuido <span class="badge badge-inverse">10</span></label>
       <label>seus tickets cancelados <span class="badge badge-inverse">10</span></label>
       <br>
       <br>
       <button class="btn btn-inverse" type="button">Novo</button>
	</div>
 	</div>
    
</body>
</html>