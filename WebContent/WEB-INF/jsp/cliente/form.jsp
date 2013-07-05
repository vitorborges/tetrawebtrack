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
                <c:when test="${cliente.id == null}">
                  <c:set var="uri" value="/cliente" />
                </c:when>
                <c:otherwise>
                  <c:set var="uri" value="/cliente/edita/${cliente.id}" />
                </c:otherwise>
              </c:choose>

       <form class="form-horizontal" action="${pageContext.request.contextPath}${uri}" method="post">

          <c:if test="${cliente.id != null}"><input type="hidden" name="_method" value="put"/></c:if>

            <fieldset>

            <legend>Cadastro de Cliente</legend>

            <div class="control-group">
              <label class="control-label">Fantasia:</label>
              <div class="controls">
                <!--  quando edita tem que ter obrigatoriamente os campos para gravar no banco -->
                <c:if test="${(cliente.id != null && cliente.id != 1)}"><input type="hidden" name="cliente.id" value="${cliente.id}"></c:if> 

                <input id="textinput" name="cliente.fantasia" type="text" placeholder="Nome Fantasia" class="input-xlarge" required="" value="${cliente.fantasia}">                
              </div>
            </div>

            <div class="control-group">
              <label class="control-label">Razão Social:</label>
              <div class="controls">
                <input id="textinput" name="cliente.razaosocial" type="text" placeholder="Razão Social" class="input-xlarge" required="" value="${cliente.razaosocial}">
                
              </div>
            </div>
                <div class="control-group">
                  <label class="control-label">CPNJ:</label>
                  <div class="controls">
                    <input id="textinput" name="cliente.cnpj" type="text" placeholder="CNPJ" class="input-xlarge" value="${cliente.cnpj}">
                    
                  </div>
                </div>
            <div class="control-group">
              <label class="control-label">Telefone 1:</label>
              <div class="controls">
                <input id="textinput" name="cliente.fone1" type="text" placeholder="Telefone" class="input-xlarge" value="${cliente.fone1}">
              </div>
            </div>
           <div class="control-group">
              <label class="control-label">Telefone 2:</label>
              <div class="controls">
                <input id="textinput" name="cliente.fone2" type="text" placeholder="Telefone" class="input-xlarge" value="${cliente.fone2}">
                
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Email:</label>
              <div class="controls">
                <input id="textinput" name="cliente.email" type="email" placeholder="E-mail" class="input-xlarge" required="" value="${cliente.email}">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Endereco:</label>
              <div class="controls">
                <input id="textinput" name="cliente.endereco" type="text" placeholder="Endereço" class="input-xlarge" value="${cliente.endereco}">, <input id="textinput" name="cliente.numero" type="text" placeholder="Número" class="input-xlarge" value="${cliente.numero}">
               </div>
            </div>
            <div class="control-group">
              <label class="control-label">Bairro:</label>
              <div class="controls">
                <input id="textinput" name="cliente.bairro" type="text" placeholder="Bairro" class="input-xlarge" value="${cliente.bairro}">
              </div>
            </div>            
            <div class="control-group">
              <label class="control-label">Cidade-UF:</label>
              <div class="controls">
                <input id="textinput" name="cliente.cidade" type="text" placeholder="Cidade-UF" class="input-xlarge" value="${cliente.cidade}">
              </div>
            </div> 
            <div class="control-group">
              <label class="control-label">Responsável:</label>
              <div class="controls">
                <input id="textinput" name="cliente.responsavel" type="text" placeholder="Responsável" class="input-xlarge" value="${cliente.responsavel}">
              </div>
            </div> 
        <c:if test="${(cliente.id != null)}">
            <div class="control-group">
              <label class="control-label">Status:</label>
                <div class="controls">
                  <label class="checkbox">   
                      Inativo:<input id="inativo" type="checkbox" name="cliente.inativo" <c:if test="${cliente.inativo }">checked="checked"</c:if>/>
                  </label>
                </div>
            </div>
        </c:if>

            <div class="control-group">
              <label class="control-label"></label>
              <div class="controls">
                <button id="button1id" name="button1id" class="btn btn-success">Gravar</button>
                <a href="${pageContext.request.contextPath}"> <button  type="button" id="button2id" name="button2id" class="btn btn-danger">Cancelar</button></a>
              </div>
            </div>

            </fieldset>
    </form>

    </div>

  </div>
  </body>
