<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <title>Tetra WebTrack - Novo Usuario</title>
   
    <!-- css externos -->
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<c:url value="/css/style_body.css"/>" rel="stylesheet" type="text/css" media="screen" />
    
    
  </head>

  <body>
   <form class="form-horizontal">
<fieldset>

<legend>Cadastro de Usuário</legend>

<div class="control-group">
  <label class="control-label">Nome:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Nome" class="input-xlarge" required="">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Login:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Login" class="input-xlarge" required="">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Senha:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Senha" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Telefone:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="Telefone" class="input-xlarge">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Perfil:</label>
  <div class="controls">
    <select id="selectbasic" name="selectbasic" class="input-xlarge">
      <option>Option one</option>
      <option>Option two</option>
    </select>
  </div>
</div>

<div class="control-group">
  <label class="control-label">Email:</label>
  <div class="controls">
    <input id="textinput" name="textinput" type="text" placeholder="E-mail" class="input-xlarge" required="">
    
  </div>
</div>

<div class="control-group">
  <label class="control-label">Status:</label>
  <div class="controls">
    <label class="radio">
      <input type="radio" name="radios" value="Ativo" checked="checked">
      Ativo
    </label>
    <label class="radio">
      <input type="radio" name="radios" value="Inativo">
      Inativo
    </label>
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
