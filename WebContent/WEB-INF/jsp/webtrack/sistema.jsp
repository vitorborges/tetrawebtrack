<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tetra WebTrack</title>

<!-- css externos -->
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
    
</head>
<body>
<!--   -->
<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
          </button>
          
          <!--   <a class="brand" href="http://twitter.github.io/bootstrap/examples/starter-template.html#">Project name</a> -->
          <div class="nav-collapse collapse">
              <ul class="nav">
              <li><a href="#">HelpDesk</a></li>
              <li><a href="#">KB</a></li>
              <li><a href="#">Projetos</a></li>
            <a>
			<img src="img/img_login.png" >		             
              Logado como <a href="#" class="navbar-link">Jocinardo</a>
       
            </ul>
          </div>
        </div>
      </div>
    </div>
</div>
	
</body>
</html>