<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="sidebar" id="sidebar">
	<script type="text/javascript">
		try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
	</script>

	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-success">
				<i class="icon-signal"></i>
			</button>

			<button class="btn btn-info">
				<i class="icon-pencil"></i>
			</button>

			<button class="btn btn-warning">
				<i class="icon-group"></i>
			</button>

			<button class="btn btn-danger">
				<i class="icon-cogs"></i>
			</button>
		</div>

		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span>

			<span class="btn btn-info"></span>

			<span class="btn btn-warning"></span>

			<span class="btn btn-danger"></span>
		</div>
	</div><!-- #sidebar-shortcuts -->

	<ul class="nav nav-list">
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-hospital"></i>
				<span class="menu-text"> Igreja</span>
				<b class="arrow icon-angle-down"></b>
			</a>

			<ul class="submenu">
				<li>
					<a href="elements.html">
						<i class="icon-double-angle-right"></i>
						Cadastro
					</a>
				</li>

				<li>
					<a href="buttons.html">
						<i class="icon-double-angle-right"></i>
						Consulta
					</a>
				</li>
			</ul>
		</li>

		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-group"></i>
				<span class="menu-text"> Membros </span>

				<b class="arrow icon-angle-down"></b>
			</a>

			<ul class="submenu">
				<li>
					<a href="${pageContext.request.contextPath}/membro/prepararInclusao">
						<i class="icon-double-angle-right"></i>
						Cadastro
					</a>
				</li>

				<li class="active">
					<a href="${pageContext.request.contextPath}/membro/prepararConsulta">
						<i class="icon-double-angle-right"></i>
						Consulta
					</a>
				</li>
			</ul>
		</li>

		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-sitemap"></i>
				<span class="menu-text"> Departamentos </span>

				<b class="arrow icon-angle-down"></b>
			</a>

			<ul class="submenu">
				<li>
					<a href="elements.html">
						<i class="icon-double-angle-right"></i>
						Cadastro
					</a>
				</li>

				<li>
					<a href="buttons.html">
						<i class="icon-double-angle-right"></i>
						Consulta
					</a>
				</li>
			</ul>
		</li>
	</ul><!-- /.nav-list -->

	<div class="sidebar-collapse" id="sidebar-collapse">
		<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
	</div>

	<script type="text/javascript">
		try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
	</script>
</div>