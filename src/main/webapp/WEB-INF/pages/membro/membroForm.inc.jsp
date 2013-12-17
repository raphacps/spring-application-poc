<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>


<div class="form-group row">	
	<div class="col-md-10">
		<label for="nome">Nome:</label> 
		<form:input cssClass="form-control" path="nome"/>
	</div>
	<div class="col-md-2">
		<label for="idade">Idade:${tipoOperacao}</label> 
		<form:input cssClass="form-control" path="idade"/>
	</div>
</div>
<div class="form-group row">
	<div class="col-md-4">
		<label for="telefone">CPF:</label> 
		<form:input cssClass="form-control" path="cpf"/>
	</div>
		<div class="col-md-4">
		<label for="telefone">RG:</label> 
		<form:input cssClass="form-control" path="rg"/>
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
							<form:input cssClass="form-control" path="usuario.loginName"/>
						</div>
							<div class="col-md-4">
							<form:label cssClass="control-label" path="usuario.senha">Senha:</form:label> 
							<form:password cssClass="form-control" path="usuario.senha"/>
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