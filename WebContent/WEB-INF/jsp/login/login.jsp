<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <title>Tetra WebTrack - Login</title>
    
    <!-- css externos -->
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/style_login.css"/>" rel="stylesheet" type="text/css" media="screen" />
    
    <!-- css-->
    
  </head>
  <body>

    <div class="container">

 <div class="row">
	
 </div>
 <div style="margin-top:80px;">    
   <div class="row">
 	 <div class="span2"></div>
	   <div class="span4">	<img src="logo.jpg" class="img-polaroid"> </div>
		 <div class="span5" style="padding-left:50px;">	
		   <h3 style="padding-left:107px;">TETRA WEBTRACK </h3> 
			<fieldset class="form-signin">
			  <form class="form-horizontal">
				<div class="control-group">
				  <label>Usuário:</label>
					<div class="input-prepend">
						<span class="add-on"><i class="icon-user"></i></span>
						<input class="span3" id="prependedInput" type="text" placeholder="Usuário">
					</div>
				  </div>
				  <div class="control-group">
					<label>Senha:</label>
					<div class="input-prepend">
					  <span class="add-on"><i class="icon-lock"></i></span>
					  <input class="span3" id="prependedInput" type="password" placeholder="Senha">
					</div>
				  </div>

				  <div class="control-group" style="padding-left:10px";>
				  	<a href="#">Esqueceu sua senha?</a>	

				  </div>	
				  <div class="control-group" style="padding-left:10px;">
					<button type="submit" class="btn btn-info">Acessar</button>
				  </div>
			</form>
			</fieldset>
		
		</div>
	</div>
</div>
    </div>
 
  </body>
</html>
