<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<form:form action="prepararInclusao" method="GET" role="form" modelAttribute="usuario">
		<div class="panel panel-default less-shadow" style="max-width: 600px; margin: auto auto;">
			<div class="panel-body">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class='panel-title'>
							<spring:message code="label.pesquisar" var="labelPesquisar" />
							<strong><spring:message code="label.nome.funcionalidade"/> - </strong>${labelPesquisar}<span title="${labelPesquisar}" class="glyphicon glyphicon-search pull-right"></span>
						</h4>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<label for="nome">Nome:</label> 
							<input class="form-control" type="text" name="nome" id="nome" />
						</div>
						<div class="form-group row">
							<div class="col-md-3">
								<label for="idade">CPF:</label> 
								<input class="form-control"	type="number" name="idade" id="idade" />
							</div>
							<div class="col-md-9">
								<label for="telefone">Data de nascimento:</label> 
								<input class="form-control" type="tel" name="telefone" id="telefone" />
							</div>
						</div>

					</div>
					<div class="panel-footer text-right">
						<spring:message code="label.limpar.campos.formulario" var="limparCampos" />
						<button title="${limparCampos}" type="reset" class="btn btn-default">
							<span class="glyphicon glyphicon-remove"></span>&nbsp;Limpar
						</button>
						<button type="button" class="btn btn-primary">
							<span class="glyphicon glyphicon-ok"></span>&nbsp;Incluir
						</button>
						<button type="submit" class="btn btn-primary">
							<span class="glyphicon glyphicon-search"></span>&nbsp;Pesquisar
						</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>