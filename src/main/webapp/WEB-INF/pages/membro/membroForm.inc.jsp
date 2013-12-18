<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>


<div class="form-group row">	
	<div class="col-md-10">
		<form:label path="nome" >Nome:</form:label> 
		<form:input cssClass="form-control" path="nome" cssErrorClass="form-control danger"/>
	</div>
	<div class="col-md-2">
		<form:label path="idade">Idade:${tipoOperacao}</form:label> 
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

<fieldset>
	<legend>Endereço</legend>
	<div class="form-group row">
		<div class="col-md-2">
			<form:label path="endereco.cep">CEP:</form:label> 
			<form:input cssClass="form-control" path="endereco.cep"/>
		</div>
		<div class="form-group col-md-10">
			<form:label path="endereco.rua">Rua:</form:label> 
			<form:input cssClass="form-control" path="endereco.rua"/>
		</div>
	</div>
	<div class="form-group row">
		<div class="col-md-6">
			<form:label path="endereco.bairro">Bairro:</form:label>
			<form:input cssClass="form-control" path="endereco.bairro"/>
		</div>
		<div class="col-md-4">
			<form:label path="endereco.complemento">Complemento:</form:label>
			<form:input cssClass="form-control" path="endereco.complemento"/>
		</div>
		<div class="col-md-2">
			<form:label path="endereco.estado">Estado:</form:label>
			<form:input cssClass="form-control" path="endereco.estado"/>
		</div>
	</div>
</fieldset>

<fieldset>
	<legend>Telefone</legend>
		<c:choose>
			<c:when test="${param.page eq 'alteracao'}">
				<c:forEach var="tels" items="telefones" varStatus="index">
					<div class="form-group row">
						<div class="col-md-2">
							<form:label path="telefones[${index.count}].ddd">ddd:</form:label>
							<form:input cssClass="form-control" path="telefones[${index.count}].ddd" />
						</div>
						<div class="col-md-10">
							<form:label path="telefones[${index.count}].numero">Numero:</form:label>
							<form:input cssClass="form-control" path="telefones[${index.count}].numero" />
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
</fieldset>

<c:if test="${param.page eq 'alteracao'}">
<form:form action="salvar" method="POST" role="form" modelAttribute="pessoa">
	<div class="form-group row has-error">
		<div class="col-md-6">
			<div class="panel panel-danger">
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
								<form:input cssClass="form-control" path="usuario.loginName"/>
							</div>
						</div>
							<div class="col-md-4">
							<form:label cssClass="control-label" path="usuario.senha">Senha:</form:label>
							<div class="input-group">
								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
								<form:password cssClass="form-control" path="usuario.senha"/>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-footer text-right">
					<button type="submit" class="btn btn-danger">
						<span class="glyphicon glyphicon-ok"></span>&nbsp;Salvar
					</button>
				</div>
			</div>
		</div>
	</div>
</form:form>
</c:if>