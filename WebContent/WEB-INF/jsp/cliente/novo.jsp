<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <title>Tetra WebTrack - Novo Cliente</title>
   
    <!-- css externos -->
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/style_body.css"/>" rel="stylesheet" type="text/css" media="screen" />
  </head>
  <body>
  
  <form class="form-horizontal">
<fieldset>

<legend>Cadastro de Cliente</legend>

<div class="control-group">
  <label class="control-label">Nome Fantasia:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Nome Fantasia" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Razão Social:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Razão Social" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">CNPJ:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="CNPJ" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Endereço:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Endereço" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Número</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Número" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Bairro:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Bairro" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Cidade:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Cidade" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Telefone#1:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Telefone" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Telefone#2:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Telefone" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">E-mail:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="E-mail" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Responsável:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Responsável " class="input-xlarge">
    
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
  
	
  </body>
