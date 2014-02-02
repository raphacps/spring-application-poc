<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html lang="pt">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">		
		<link href='<spring:url value="/estatico/css/bootstrap.min.css"/>'   rel="stylesheet" media="screen" />
		<link href='<spring:url value="/estatico/css/ace.min.css"/>'   rel="stylesheet" media="screen" />
		<link href='<spring:url value="/estatico/css/ace-rtl.min.css"/>'   rel="stylesheet" media="screen" />
		<link href='<spring:url value="/estatico/css/ace-skins.min.css"/>'   rel="stylesheet" media="screen" />
		<link href='<spring:url value="/estatico/css/ace-fonts.css"/>'   rel="stylesheet" media="screen" />
		<link href='<spring:url value="/estatico/css/font-awesome.min.css"/>'   rel="stylesheet" media="screen" />
		<link href='<spring:url value="/estatico/css/jquery-ui-1.10.3.full.min.css"/>' rel="stylesheet" media="screen" />
		<tiles:useAttribute id="list" name="cssfilesList" classname="java.util.List" />	
		<c:forEach var="cssfileName" items="${list}">
			<link rel="styleSheet" href='${cssfileName}' type="text/css" media="screen"/>	
		</c:forEach>
		
		<style>
			.spinner-preview {
				width:100px;
				height:100px;
				text-align:center;
				margin-top:60px;
			}
			
			.dropdown-preview {
				margin:0 5px;
				display:inline-block;
			}
			.dropdown-preview  > .dropdown-menu {
				display: block;
				position: static;
				margin-bottom: 5px;
			}
		</style>
		
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="estatico/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="estatico/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
			<script src="estatico/js/html5shiv.js"></script>
			<script src="estatico/js/respond.min.js"></script>
		<![endif]-->
		
		
		
		<title><spring:message code="label.titulo.projeto" /></title>
	</head>
	<body>
		<tiles:insertAttribute name="alert" />
		<tiles:insertAttribute name="menu" />
		
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

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
							<a href="index.html">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> Dashboard </span>
							</a>
						</li>

						<li>
							<a href="typography.html">
								<i class="icon-text-width"></i>
								<span class="menu-text"> Typography </span>
							</a>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> UI Elements </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="elements.html">
										<i class="icon-double-angle-right"></i>
										Elements
									</a>
								</li>

								<li>
									<a href="buttons.html">
										<i class="icon-double-angle-right"></i>
										Buttons &amp; Icons
									</a>
								</li>

								<li>
									<a href="treeview.html">
										<i class="icon-double-angle-right"></i>
										Treeview
									</a>
								</li>

								<li>
									<a href="jquery-ui.html">
										<i class="icon-double-angle-right"></i>
										jQuery UI
									</a>
								</li>

								<li>
									<a href="nestable-list.html">
										<i class="icon-double-angle-right"></i>
										Nestable Lists
									</a>
								</li>

								<li>
									<a href="#" class="dropdown-toggle">
										<i class="icon-double-angle-right"></i>

										Three Level Menu
										<b class="arrow icon-angle-down"></b>
									</a>

									<ul class="submenu">
										<li>
											<a href="#">
												<i class="icon-leaf"></i>
												Item #1
											</a>
										</li>

										<li>
											<a href="#" class="dropdown-toggle">
												<i class="icon-pencil"></i>

												4th level
												<b class="arrow icon-angle-down"></b>
											</a>

											<ul class="submenu">
												<li>
													<a href="#">
														<i class="icon-plus"></i>
														Add Product
													</a>
												</li>

												<li>
													<a href="#">
														<i class="icon-eye-open"></i>
														View Products
													</a>
												</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> Tables </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="tables.html">
										<i class="icon-double-angle-right"></i>
										Simple &amp; Dynamic
									</a>
								</li>

								<li>
									<a href="jqgrid.html">
										<i class="icon-double-angle-right"></i>
										jqGrid plugin
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-edit"></i>
								<span class="menu-text"> Forms </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="form-elements.html">
										<i class="icon-double-angle-right"></i>
										Form Elements
									</a>
								</li>

								<li>
									<a href="form-wizard.html">
										<i class="icon-double-angle-right"></i>
										Wizard &amp; Validation
									</a>
								</li>

								<li>
									<a href="wysiwyg.html">
										<i class="icon-double-angle-right"></i>
										Wysiwyg &amp; Markdown
									</a>
								</li>

								<li>
									<a href="dropzone.html">
										<i class="icon-double-angle-right"></i>
										Dropzone File Upload
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="widgets.html">
								<i class="icon-list-alt"></i>
								<span class="menu-text"> Widgets </span>
							</a>
						</li>

						<li>
							<a href="calendar.html">
								<i class="icon-calendar"></i>

								<span class="menu-text">
									Calendar
									<span class="badge badge-transparent tooltip-error" title="2&nbsp;Important&nbsp;Events">
										<i class="icon-warning-sign red bigger-130"></i>
									</span>
								</span>
							</a>
						</li>

						<li>
							<a href="gallery.html">
								<i class="icon-picture"></i>
								<span class="menu-text"> Gallery </span>
							</a>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i>
								<span class="menu-text"> More Pages </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="profile.html">
										<i class="icon-double-angle-right"></i>
										User Profile
									</a>
								</li>

								<li>
									<a href="inbox.html">
										<i class="icon-double-angle-right"></i>
										Inbox
									</a>
								</li>

								<li>
									<a href="pricing.html">
										<i class="icon-double-angle-right"></i>
										Pricing Tables
									</a>
								</li>

								<li>
									<a href="invoice.html">
										<i class="icon-double-angle-right"></i>
										Invoice
									</a>
								</li>

								<li>
									<a href="timeline.html">
										<i class="icon-double-angle-right"></i>
										Timeline
									</a>
								</li>

								<li>
									<a href="login.html">
										<i class="icon-double-angle-right"></i>
										Login &amp; Register
									</a>
								</li>
							</ul>
						</li>

						<li class="active open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-file-alt"></i>

								<span class="menu-text">
									Other Pages
									<span class="badge badge-primary ">5</span>
								</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="faq.html">
										<i class="icon-double-angle-right"></i>
										FAQ
									</a>
								</li>

								<li>
									<a href="error-404.html">
										<i class="icon-double-angle-right"></i>
										Error 404
									</a>
								</li>

								<li>
									<a href="error-500.html">
										<i class="icon-double-angle-right"></i>
										Error 500
									</a>
								</li>

								<li>
									<a href="grid.html">
										<i class="icon-double-angle-right"></i>
										Grid
									</a>
								</li>

								<li class="active">
									<a href="blank.html">
										<i class="icon-double-angle-right"></i>
										Blank Page
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

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>
						
						
						
						<tiles:useAttribute id="list" name="breadcrumbsList" classname="java.util.List" />
						<c:if test="${not empty list}">
							<!-- buscando as migalhas de pão dinâmicamente do tiles -->
							<!-- p class="text-muted">Você est&aacute; em:</p -->
							<ul class="breadcrumb less-shadow">
						</c:if>

						<c:forEach var="breadcrumbName" items="${list}" varStatus="index">
							<!--Se for o último item da lista, este aparecerá desabilitado -->
							<c:choose>
								<c:when test="${(fn:length(list) eq index.count)}">
									<c:if test="${breadcrumbName eq 'Home'}">
										<i class="icon-home home-icon"></i>
									</c:if>
									<li class='active'>${breadcrumbName}</li>
								</c:when>
								<c:otherwise>
									<!--Foi criado um mecanismo no tiles para buscar o path e o texto a ser chamado no controller:
										Ex.: cadastroFiltro|Cadastrar -> <PATH_PARA_CONTROLLER|LAbEL>-->
									<li>
										<c:if test="${fn:split(breadcrumbName,'|')[1] eq 'Home'}">
											<i class="icon-home home-icon"></i>
										</c:if>
										<a href="${fn:split(breadcrumbName,'|')[0]}">${fn:split(breadcrumbName,'|')[1]}</a>
									</li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${not empty list}">
							</ul>
							<!-- Fim das migalhas de pão -->
						</c:if>
						
						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Procurar ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<tiles:insertAttribute name="body" />
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Escolha o tema</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		
		
		
		
			
			<div class="container" style="margin-top: -25px;">
				
					
				<div class='row'>
					<!-- buscando o menu vertical com tiles -->
					<tiles:useAttribute id="menuList" name="menuOptionsList" classname="java.util.List" />
					<c:set var="menuListEmpty" value='${empty menuList}'/>
					
					<aside class='col-md-${menuListEmpty?12:2}'>
						<tiles:useAttribute id="menuList" name="menuOptionsList" classname="java.util.List" />
					    <c:if test="${not menuListEmpty}">
					    <ul class="nav nav-pills nav-stacked well affix" style="width: 210px;">
					    </c:if>
					    	<c:forEach var="menuOption" items="${menuList}" varStatus="index">
								<li class='${(index.count eq 1)?"active":""}'><a href="#">${menuOption}</a></li>
							</c:forEach>
						<c:if test="${not menuListEmpty}">
					    </ul>
					    </c:if>
					</aside>
					<!-- fim do menu vetical -->
					<article class='col-md-${menuListEmpty?12:10}'>
						
					</article>	
				</div>
			</div>
		
		
		
		
		<!-- basic scripts -->

		<!--[if !IE]> -->

			<script type="text/javascript">
				window.jQuery || document.write("<script src='estatico/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
			</script>

		<!-- <![endif]-->

		<!--[if IE]>
			<script type="text/javascript">
			 	window.jQuery || document.write("<script src='estatico/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
			</script>
		<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='estatico/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		
		
		<script src='<spring:url value="/estatico/js/ace-elements.min.js"/>'></script>
		<script src='<spring:url value="/estatico/js/ace.min.js"/>'></script>
		<script src='<spring:url value="/estatico/js/typeahead-bs2.min.js"/>'></script>
		<script src='<spring:url value="/estatico/js/bootstrap.min.js"/>'></script>
		<script src='<spring:url value="/estatico/js/application.js"/>'></script>
		<script src='<spring:url value="/estatico/js/pages/home.js"/>'></script>
		<script src='<spring:url value="/estatico/js/jquery.dataTables.bootstrap.js"/>'></script>
		<script src='<spring:url value="/estatico/js/jquery.dataTables.min.js"/>'></script>
		
		<tiles:useAttribute id="list" name="jsfilesList" classname="java.util.List" />	
		<c:forEach var="jsfileName" items="${list}">
			<script src='<spring:url value='${jsfileName}' />'></script>	
		</c:forEach>
	</body>
</html>