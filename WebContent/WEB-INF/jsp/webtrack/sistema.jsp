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
          <a class="brand" href="#">Tetra WebTrack</a>
          
          
          	<!-- Direito -->
          	<div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
           
           <img src="<c:url value='/img/configuracoes.png' />" alt="" /> 
           <img src="<c:url value='/img/notificacao.png' />" alt="" /> 
           
  		  <input type="text" class="input-medium search-query" value="">
		   
           <img src="<c:url value='/img/usuario.png' />" alt="" /> 
             
            <a href="#" class="navbar-link">Analista de Sistemas
            
              </a>
            </p>
            <ul class="nav">
                         <li><a href="#">HekpDesk</a></li>
                         <li><a href="#">KB</a></li>
                         <li><a  href="#">Projetos</a></li>
                         
                         
           			<img src="<c:url value='/img/configuracoes.png' />" alt="" /> 
           			<img src="<c:url value='/img/kb.png' />" alt="" />              
           			<img src="<c:url value='/img/projetos.png' />" alt="" /> 

            </ul>
          </div><!--/.nav-collapse -->
        </div>
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