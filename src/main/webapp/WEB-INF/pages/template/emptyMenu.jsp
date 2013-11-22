<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container" style="margin-top: -25px">
		<div class="navbar-header active">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">
				<h2>
					<span class="glyphicon glyphicon-leaf"></span>&nbsp;
					<spring:message code="label.nome.projeto" /> - <spring:message code="label.descricao.projeto" />
				</h2>
			</a>
		</div>
		<!--/.nav-collapse -->
	</div>
</div>