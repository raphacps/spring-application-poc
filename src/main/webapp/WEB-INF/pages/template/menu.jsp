<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" style="height: 75px;" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand"  style="margin-top: -20px;" href="${pageContext.request.contextPath}/home">
				<h2>
					<span class="glyphicon glyphicon-leaf"></span>&nbsp;
					<spring:message code="label.nome.projeto" />
				</h2>
			</a>
		</div>
		<div class="collapse navbar-collapse">
			
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="${pageContext.request.contextPath}/home">
						<h4><span class="glyphicon glyphicon-home"></span>&nbsp;<spring:message code="label.home" /></h4>
					</a>
				</li>
				<li>
					<a href="#" id="sobre">
						<h4><span class="glyphicon glyphicon-info-sign"></span>&nbsp;<spring:message code="label.sobre" /></h4>
					</a>
				</li>
				<li>	
					<a href="#contact">
						<h4><span class="glyphicon glyphicon-book"></span>&nbsp;<spring:message code="label.contato" /></h4>
					</a>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<h4><span class="glyphicon glyphicon-tasks"></span>&nbsp;Administrar <b class="caret"></b></h4>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="${pageContext.request.contextPath}/membro/prepararConsulta"><span class="glyphicon glyphicon-user"></span> Membros</a>
						</li>
						<li>
							<a href="#"><span class="glyphicon glyphicon-usd"></span> Tesouraria</a>
						</li>
					</ul>
				</li>
				<li class='dropdown active'>
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" id="sair">
						<h4><span class="glyphicon glyphicon-user"></span>&nbsp;${membroSession.usuario.loginName}<b class="caret"></b></h4>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="${pageContext.request.contextPath}/membro/prepararAlteracao"><span class="glyphicon glyphicon-edit"></span> Alterar</a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="${pageContext.request.contextPath}/logout"><span class="glyphicon glyphicon-log-out"></span> sair</a>
						</li>
					</ul>	
				</li>
			</ul>
			
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>