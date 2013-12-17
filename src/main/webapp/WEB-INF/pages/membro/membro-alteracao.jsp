<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<form:form action="salvar" method="POST" role="form" modelAttribute="pessoa">
	<form:hidden path="id" />
	<form:hidden path="usuario.id" />
	<div class="panel panel-default less-shadow" style="margin: auto auto;">
		<div class="panel-body">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class='panel-title'>
						<spring:message code="label.Alterar" var="labelAlterar" />
						<strong><spring:message code="label.nome.funcionalidade.membro"/> - </strong>${labelAlterar}<span title="${labelAlterar}" class="glyphicon glyphicon-edit pull-right"></span>
					</h4>
				</div>
				<div class="panel-body">
					<c:import url="/WEB-INF/pages/membro/membroForm.inc.jsp" charEncoding="UTF-8">
						<c:param name="page" value="alteracao" />
					</c:import>
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