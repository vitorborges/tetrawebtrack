<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- css -->
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
    
<title>Sistema de Gestão</title>
 <style type="text/css">
 html,
      body {
        height: 100%;
        /* The html and body elements cannot have any padding or margin. */
      }

      /* Wrapper for page content to push down footer */
      #wrap {
        min-height: 100%;
        height: auto !important;
        height: 100%;
        /* Negative indent footer by it's height */
        margin: 0 auto -60px;
      }

      /* Set the fixed height of the footer here */
      #push,
      #footer {
        height: 60px;
      }
      #footer {
        background-color: #f5f5f5;
      }

      /* Lastly, apply responsive CSS fixes as necessary */
      @media (max-width: 767px) {
        #footer {
          margin-left: -20px;
          margin-right: -20px;
          padding-left: 20px;
          padding-right: 20px;
        }
      }



      /* Custom page CSS
      -------------------------------------------------- */
      /* Not required for template or sticky footer method. */

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


    <!-- Part 1: Wrap all page content here -->
    <div id="wrap">

      <!-- Fixed navbar -->
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            
            <div class="nav-collapse collapse">
              <ul class="nav">
              
                
                
                
                
              
                <li><a href="login"> <i class="icon-large icon-user"></i> Bem vindo: Jocinardo</a></li>
               
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </div>
      </div>

      <!-- Begin page content -->
      <div class="container">
      
<ul class="breadcrumb">
  <li><a href="#">Sistema</a> <span class="divider">/</span></li>
  <li class="active">Tela Inicial</li>
</ul>
      
      </div>

      <div id="push"></div>
    </div>

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