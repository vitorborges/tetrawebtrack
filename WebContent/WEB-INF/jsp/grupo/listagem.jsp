<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html lang="pt-br">
  <head>
    <meta charset="utf-8">
       
    <!-- css externos -->
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/style_body.css"/>" rel="stylesheet" type="text/css" media="screen" />
  </head>
  <body>
  
  	<header>
		<%@ include file="/decorators/header.jsp" %>
	</header>
 	
	<footer>
		<%@ include file="/decorators/footer.jsp" %>
	</footer>
  </body>
