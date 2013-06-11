<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- css -->
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
    
<title>Tetra WebTrack</title>
 <style type="text/css">
 html,
      body {
        height: 100%;
      }

      #wrap {
        min-height: 100%;
        height: auto !important;
        height: 100%;
        margin: 0 auto -60px;
      }

      #push,
      #footer {
        height: 60px;
      }
      #footer {
        background-color: #f5f5f5;
      }

      @media (max-width: 767px) {
        #footer {
          margin-left: -20px;
          margin-right: -20px;
          padding-left: 20px;
          padding-right: 20px;
        }
      }

      #wrap > .container {
        padding-top: 60px;
      }
      .container .credit {
        margin: 20px 0;
      }

      code {
        font-size: 80%;
      }

    </style>
    
        <link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
    
</head>
<body>
<f:view>


<div class="navbar navbar-inverse navbar-fixed-top">
     <div class="navbar-inner">
     <div class="container-fluid">
       <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
       <span class="icon-bar"></span>
       <span class="icon-bar"></span>
       <span class="icon-bar"></span>
       </button>
          	<a class="brand" href="#"> Gestão de Pos-Vendas <span class="label label-important">Beta</span></a>
          	<div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
            <i class="icon-search icon-white"></i>
            <img src="imagens/glyphicons_003_user.png" >
             
              Logado como <a href="#" class="navbar-link">Jocinardo
              </a>
            </p>
            <ul class="nav">
            <li class="active"><a href="#">Inicio</a></li>
             
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">CRM <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Novo Ticket</a></li>
                  <li><a href="#">Consular Ticket</a></li>
                  <li><a href="#">Fechamento de Ticket</a></li>
                  <li><a href="#">Visualizar Intervenções</a></li>
                  <li><a href="#">Historico do Ticket </a></li>
                  <li><a href="#">Intervenção </a></li>
                </ul>
                 
         
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pedidos <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Contratos</a></li>
                  <li><a href="#">Tickets por Operador</a></li>
                  <li><a href="#">Tickets por Cliente</a></li>
                  <li><a href="#">Detalhamento de SLA</a></li>
                </ul>
       
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Clientes <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="">Novo Projeto</a></li>
                  <li><a href="../Departamentos/index.php">Departamentos</a></li>
                  <li><a href="#">Usuarios</a></li>
                  <li><a href="#">Equipamentos</a></li>
                  <li><a href="#">Serviços</a></li>
                  <li><a href="#">Analistas</a></li>
                 
                </ul>
            
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Rastreamento de Pacotes <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="">Clientes</a></li>
                  <li><a href="../Departamentos/index.php">Departamentos</a></li>
                  <li><a href="#">Usuarios</a></li>
                  <li><a href="#">Equipamentos</a></li>
                  <li><a href="#">Serviços</a></li>
                  <li><a href="#">Analistas</a></li>
                 
                </ul>   
                
                <li><a href="#"><span class="badge badge-important">6</span> Mensagens</a></li>

            </ul>
          </div><!--/.nav-collapse -->


    <div id="footer">
      <div class="container">
        <p class="muted credit">Wise Solutionss <a href="http://martinbean.co.uk">wisesolutionss.com.br</a></p>
      </div>
    </div>

</f:view>
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