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
    <div class="span7 offset2">
 
            <!-- verifica de o usuário existe para configurar o formulario para edicao -->
            <c:choose>
                <c:when test="${grupo.id == null}">
                  <c:set var="uri" value="/grupo" />
                </c:when>
                <c:otherwise>
                  <c:set var="uri" value="/grupo/edita/${grupo.id}" />
                </c:otherwise>
              </c:choose>

       <form class="form-horizontal" action="${pageContext.request.contextPath}${uri}" method="post">

          <c:if test="${grupo.id != null}"><input type="hidden" name="_method" value="put"/></c:if>

            <fieldset>

            <legend>Cadastro de Grupo</legend>

            <div class="control-group">
              <label class="control-label">Nome:</label>
              <div class="controls">
                <!--  quando edita tem que ter obrigatoriamente os campos para gravar no banco -->
                <c:if test="${(grupo.id != null)}"><input type="hidden" name="grupo.id" value="${grupo.id}"></c:if> 

                <input id="textinput" name="grupo.nome" type="text" placeholder="Nome" class="input-xlarge" required="" value="${grupo.nome}">                
              </div>
            </div>

            <div class="control-group">
              <label class="control-label">Descrição:</label>
              <div class="controls">
                <input id="textinput" name="grupo.descricao" type="text" placeholder="Descrição" class="input-xlarge" required="" value="${grupo.descricao}">
                
              </div>
            </div>
            
            <div class="control-group">
              <label class="control-label"></label>
              <div class="controls">
                <button id="button1id" name="button1id" class="btn btn-success">Gravar</button>
                <button id="button2id" name="button2id" class="btn btn-danger">Cancelar</button>
              </div>
            </div>

            </fieldset>
    </form>

    </div>

  </div>
  </body>
