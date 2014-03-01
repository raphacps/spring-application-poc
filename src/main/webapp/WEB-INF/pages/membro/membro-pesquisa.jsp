<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<form:form action="prepararAlteracao" method="GET" role="form" modelAttribute="membro">
		<div class="panel panel-default less-shadow" style="margin: auto auto;">
			<div class="panel-body">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class='panel-title'>
							<spring:message code="label.pesquisar" var="labelPesquisar" />
							<i class="icon-group"></i>&nbsp;<strong><spring:message code="label.nome.funcionalidade.membro"/>&nbsp;<i class="icon-double-angle-right"></i>&nbsp;</strong>${labelPesquisar}<span title="${labelPesquisar}" class="glyphicon glyphicon-search pull-right"></span>
						</h4>
					</div>
					<div class="panel-body">
						<div class="form-group row">
							<div class="col-sm-8">
								<label for="nome">Nome:</label>
								<form:input cssClass="form-control" path="nome" />
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-4">
								<label for="idade">CPF:</label> 
								<form:input cssClass="form-control"	path="cpf"/>
							</div>
						</div>
					</div>
					<div class="panel-footer text-right">
						<spring:message code="label.limpar.campos.formulario" var="limparCampos" />
						<button title="${limparCampos}" type="reset" class="btn btn-default">
							<span class="glyphicon glyphicon-remove"></span>&nbsp;Limpar
						</button>
						<button type="submit" class="btn btn-primary">
							<span class="glyphicon glyphicon-search"></span>&nbsp;Pesquisar
						</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>