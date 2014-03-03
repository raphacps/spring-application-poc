<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="modal fade" id="applicationAlert">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">
					<strong>${membroSession.igreja.nome}</strong>
				</h4>
			</div>
			<div class="modal-body row">
				<div class='col-md-1' style="text-align: center; margin-bottom: -30px; ">
					<h1><span class="glyphicon"></span></h1>
				</div>
				<div class='col-md-11'>
					<div class='well' style="width: 500px;"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn" data-dismiss="modal">
					<spring:message code="label.fechar" />
				</button>
			</div>
		</div>
	</div>
</div>