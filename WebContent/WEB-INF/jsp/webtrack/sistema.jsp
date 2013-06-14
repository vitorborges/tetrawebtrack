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
            		<a href="#" class="navbar-link">${userSession.user.nome}</a> 
                <a href="${pageContext.request.contextPath}/logout">Logout</a>
            		
            		<ul class="nav">
                         <li><a href="#"><img src="<c:url value='/img/helpdesk.png' />" alt="" /> </a></li>
                         <li><a href="#"><img src="<c:url value='/img/kb.png' />" alt="" /></a></li>
                         <li><a  href="#"><img src="<c:url value='/img/projetos.png' />" alt="" /></a></li> 			 
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
       <label>seus tickets n�o resolvidos <span class="badge badge-inverse">10</span></label>
       <label>seus tickets n�o atribuido <span class="badge badge-inverse">10</span></label>
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
       <label>seus tickets n�o resolvidos <span class="badge badge-inverse">10</span></label>
       <label>seus tickets n�o atribuido <span class="badge badge-inverse">10</span></label>
       <label>seus tickets cancelados <span class="badge badge-inverse">10</span></label>
       <br>
       <br>
       <button class="btn btn-inverse" type="button">Novo</button>
	</div>
	
	<!-- implanta��es -->
	<div class="body-sistema">
	   <legend>Implanta��es</legend>
       <img src="<c:url value='/img/helpdesk.png' />" alt="" />
       <br>
       <br> 
       <label>seus tickets n�o resolvidos <span class="badge badge-inverse">10</span></label>
       <label>seus tickets n�o atribuido <span class="badge badge-inverse">10</span></label>
       <label>seus tickets cancelados <span class="badge badge-inverse">10</span></label>
       <br>
       <br>
       <button class="btn btn-inverse" type="button">Novo</button>
	</div>
 	</div>

 <script src="javascript/jquery.js"></script>
    <script src="javascript/bootstrap-transition.js"></script>
    <script src="javascript/bootstrap-alert.js"></script>
    <script src="javascript/bootstrap-modal.js"></script>
    <script src="javascript/bootstrap-dropdown.js"></script>
    <script src="javascript/bootstrap-scrollspy.js"></script>
    <script src="javascript/bootstrap-tab.js"></script>
    <script src="javascript/bootstrap-tooltip.js"></script>
    <script src="javascript/bootstrap-popover.js"></script>
    <script src="javascript/bootstrap-button.js"></script>
    <script src="javascript/bootstrap-collapse.js"></script>
    <script src="javascript/bootstrap-carousel.js"></script>
    <script src="javascript/bootstrap-typeahead.js"></script>
    
</body>
</html>