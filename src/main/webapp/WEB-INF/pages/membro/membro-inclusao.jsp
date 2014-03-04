	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
		<form:form action="salvar" method="POST" role="form" modelAttribute="membro">
			<form:errors cssClass="alert alert-danger" path="*" element="div"/>
			<div class="panel panel-default less-shadow">
				<div class="panel-body">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class='panel-title'>
								<spring:message code="label.incluir" var="labelIncluir" />
								<i class="icon-group">&nbsp;</i><strong><spring:message code="label.nome.funcionalidade.membro" /></strong>&nbsp;<i class="icon-double-angle-right"></i>&nbsp;${labelIncluir}&nbsp;<span title="${labelIncluir}" class="glyphicon glyphicon-file pull-right"></span>
							</h4>
						</div>
						<div class="panel-body">
							<c:import url="/WEB-INF/pages/membro/membroForm.inc.jsp" charEncoding="UTF-8">
								<c:param name="page" value="inclusao" />
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
	  