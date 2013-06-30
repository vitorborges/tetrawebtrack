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
                <c:when test="${usuario.id == null}">
                  <c:set var="uri" value="/usuario" />
                </c:when>
                <c:otherwise>
                  <c:set var="uri" value="/usuario/edita/${usuario.id}" />
                </c:otherwise>
              </c:choose>

       <form class="form-horizontal" action="${pageContext.request.contextPath}${uri}" method="post">

          <c:if test="${usuario.id != null}"><input type="hidden" name="_method" value="put"/></c:if>

            <fieldset>

            <legend>Cadastro de Usuário</legend>

            <div class="control-group">
              <label class="control-label">Nome:</label>
              <div class="controls">
                <!--  quando edita tem que ter obrigatoriamente os campos para gravar no banco -->
                <c:if test="${(usuario.id != null && usuario.id != 1)}"><input type="hidden" name="usuario.id" value="${usuario.id}"></c:if> 

                <input id="textinput" name="usuario.nome" type="text" placeholder="Nome" class="input-xlarge" required="" value="${usuario.nome}">                
              </div>
            </div>

            <div class="control-group">
              <label class="control-label">Login:</label>
              <div class="controls">
                <input id="textinput" name="usuario.login" type="text" placeholder="Login" class="input-xlarge" required="" value="${usuario.login}">
                
              </div>
            </div>
            <!-- se for editar o usuário não pode permitir trocar a senha -->
            <c:if test="${(usuario.id == null)}">
                <div class="control-group">
                  <label class="control-label">Senha:</label>
                  <div class="controls">
                    <input id="textinput" name="usuario.senha" type="password" placeholder="Senha" class="input-xlarge" value="${usuario.senha}">
                    
                  </div>
                </div>
            </c:if>
            <c:if test="${(usuario.id != null)}">
              <input type="hidden" name="usuario.senha" value="${usuario.senha}">
            </c:if>
            <div class="control-group">
              <label class="control-label">Telefone:</label>
              <div class="controls">
                <input id="textinput" name="usuario.telefone" type="text" placeholder="Telefone" class="input-xlarge" value="${usuario.telefone}">
                
              </div>
            </div>

            <div class="control-group">
              <label class="control-label">Perfil:</label>
              <div class="controls">
                <select id="selectbasic" name="usuario.perfil" class="input-xlarge">
                      <option value="" selected="selected">--selecione--</option>
                      <c:forEach var="item" items="${perfilList }">
                          <option value="${item}" <c:if test="${usuario.perfil eq item}">selected="selected"</c:if>>${item.label}</option>
                      </c:forEach>
                </select>
              </div>
            </div>

            <div class="control-group">
              <label class="control-label">Email:</label>
              <div class="controls">
                <input id="textinput" name="usuario.email" type="text" placeholder="E-mail" class="input-xlarge" required="" value="${usuario.email}">
                
              </div>
            </div>

        <c:if test="${(usuario.id != null && usuario.id != 1)}">
            <div class="control-group">
              <label class="control-label">Status:</label>
                <div class="controls">
                  <label class="checkbox">   
                      Inativo:<input id="inativo" type="checkbox" name="usuario.inativo" <c:if test="${usuario.inativo }">checked="checked"</c:if>/>
                  </label>
                </div>
            </div>
        </c:if>

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
