<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<form:hidden path="id" />
<form:hidden path="usuario.id" />
<input type="hidden" name="igreja.id" id="igreja.id" value="${membroSession.igreja.id}">
<h3 class="header smaller lighter blue">Dados Pessoais</h3>
<div class="form-group row">	
	<div class="col-md-10">
		<form:label path="nome" >Nome:</form:label> 
		<form:input cssClass="form-control" path="nome" cssErrorClass="form-control danger"/>
	</div>
	<div class="col-md-2">
		<form:label path="idade">Idade:</form:label> 
		<form:input cssClass="form-control" path="idade" cssErrorClass="form-control danger"/>
	</div>
</div>
<div class="form-group row">
	<div class="col-md-4">
		<form:label path="cpf">CPF:</form:label> 
		<form:input cssClass="form-control" path="cpf" cssErrorClass="form-control danger"/>
	</div>
		<div class="col-md-4">
		<form:label path="rg">RG:</form:label> 
		<form:input cssClass="form-control" path="rg" cssErrorClass="form-control danger"/>
	</div>
</div>

<h3 class="header smaller lighter blue">Endereço</h3>
	<div class="form-group row">
		<div class="col-md-2">
			<label for="cep">CEP:</label> 
			<form:input id="cep" cssClass="form-control" path="endereco.cep"/>
		</div>
		<div class="form-group col-md-10">
			<label for="rua">Rua:</label> 
			<form:input id="rua" cssClass="form-control" path="endereco.rua"/>
		</div>
	</div>
	<div class="form-group row">
		<div class="col-md-6">
			<label for="bairro">Bairro:</label>
			<form:input id="bairro" cssClass="form-control" path="endereco.bairro"/>
		</div>
		<div class="col-md-4">
			<label for="complemento">Complemento:</label>
			<form:input id="complemento" cssClass="form-control" path="endereco.complemento"/>
		</div>
		<div class="col-md-2">
			<label for="estado">Estado:</label>
			<form:input id="estado" cssClass="form-control" path="endereco.estado"/>
		</div>
	</div>

	<h3 class="header smaller lighter blue">Telefone</h3>
	<c:choose>
		<c:when test="${param.page eq 'alteracao'}">
			<c:forEach var="tels" items="telefones" varStatus="index">
				<div class="form-group row">
					<div class="col-md-2">
						<form:label path="telefones[${index.count-1}].ddd">ddd:</form:label>
						<form:input cssClass="form-control" path="telefones[${index.count-1}].ddd" />
					</div>
					<div class="col-md-10">
						<form:label path="telefones[${index.count-1}].numero">Numero:</form:label>
						<form:input cssClass="form-control" path="telefones[${index.count-1}].numero" />
					</div>
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class="form-group row">
				<div class="col-md-2">
					<form:label path="telefones[0].ddd">ddd:</form:label>
					<form:input cssClass="form-control" path="telefones[0].ddd" />
				</div>
				<div class="col-md-10">
					<form:label path="telefones[0].numero">Numero:</form:label>
					<form:input cssClass="form-control" path="telefones[0].numero" />
				</div>
			</div>
		</c:otherwise>
	</c:choose>

<c:if test="${param.page eq 'alteracao'}">

	<div class="form-group row has-error">
		<div class="col-md-5">
			<div class="panel panel-danger" id='popover' data-toggle='popover'>
				<div class="panel-heading">
					<h4 class='panel-title'>
						<strong>Troca de Senha</strong>
					</h4>
				</div>
				<div class="panel-body">
					<div class="form-group row">
						<div class="col-md-4">
							<form:label cssClass="control-label" path="usuario.loginName">login:</form:label>
							<div class="input-group">
								<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
								<form:input cssClass="form-control" path="usuario.loginName" maxlength="8" size="8" cssErrorClass="form-control danger"/>
							</div>
						</div>
							<div class="col-md-4">
							<form:label cssClass="control-label" path="usuario.senha">Senha:</form:label>
							<div class="input-group">
								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
								<form:password cssClass="form-control" maxlength="8" size="8" path="usuario.senha" cssErrorClass="form-control danger"/>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</c:if>