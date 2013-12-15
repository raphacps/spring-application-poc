<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<form:form action="salvar" method="POST" role="form" modelAttribute="pessoa">
	<form:hidden path="id" />
	<form:hidden path="usuario.id" />
	<div class="panel panel-default less-shadow" style="margin: auto auto;">
			<div class="panel-body">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class='panel-title'>
							<spring:message code="label.pesquisar" var="labelPesquisar" />
							<strong><spring:message code="label.nome.funcionalidade"/> - </strong>${labelPesquisar}<span title="${labelPesquisar}" class="glyphicon glyphicon-edit pull-right"></span>
						</h4>
					</div>
					<div class="panel-body">
						<div class="form-group row">	
							<div class="col-md-10">
								<label for="nome">Nome:</label> 
								<form:input cssClass="form-control" path="nome"/>
							</div>
							<div class="col-md-2">
								<label for="idade">Idade:</label> 
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
							<legend>Acesso ao sistema</legend>
							<div class="form-group row">
								<div class="col-md-4">
									<label for="telefone">login:</label> 
									<form:input cssClass="form-control" path="usuario.loginName"/>
								</div>
									<div class="col-md-4">
									<label for="telefone">senha:</label> 
									<form:password cssClass="form-control" path="usuario.senha"/>
								</div>
							</div>
						</fieldset>
					</div>					
					<div class="panel-footer text-right">
						<spring:message code="label.limpar.campos.formulario" var="limparCampos" />
						<button title="${limparCampos}" type="reset" class="btn btn-default">
							<span class="glyphicon glyphicon-remove"></span>&nbsp;Limpar
						</button>
						<button type="submit" class="btn btn-primary">
							<span class="glyphicon glyphicon-ok"></span>&nbsp;Salvar
						</button>
					</div>
				</div>
			</div>
		</div>
</form:form>