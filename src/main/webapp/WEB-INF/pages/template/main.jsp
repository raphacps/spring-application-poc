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
		<link href='<spring:url value="/estatico/css/bootstrap.css"/>'   rel="stylesheet" media="screen" />
		<link href='<spring:url value="/estatico/css/application.css"/>' rel="stylesheet" media="screen" />
		<link href='<spring:url value="/estatico/css/jquery-ui-1-10-3.css"/>' rel="stylesheet" media="screen" />
		<link href='<spring:url value="/estatico/css/jquery.dataTables.css"/>' rel="stylesheet" media="screen" />
		<tiles:useAttribute id="list" name="cssfilesList" classname="java.util.List" />	
		<c:forEach var="cssfileName" items="${list}">
			<link rel="styleSheet" href='${cssfileName}' type="text/css" media="screen"/>	
		</c:forEach>
		<title><spring:message code="label.titulo.projeto" /></title>
	</head>
	<body>
		<tiles:insertAttribute name="alert" />
		
		<div id="wrap"><!-- Inicio wrap -->
			<tiles:insertAttribute name="menu" />
			<div class="container" style="margin-top: -25px;">
				<tiles:useAttribute id="list" name="breadcrumbsList" classname="java.util.List" />
				<c:if test="${not empty list}">
					<!-- buscando as migalhas de pão dinâmicamente do tiles -->
					<!-- p class="text-muted">Você est&aacute; em:</p -->
					<ol class="breadcrumb less-shadow">
				</c:if>
				
				
				<c:forEach var="breadcrumbName" items="${list}" varStatus="index">
					<!--Se for o último item da lista, este aparecerá desabilitado -->
					<c:choose>
						<c:when test="${(fn:length(list) eq index.count)}">
							<li class='active'>${breadcrumbName}</li>
						</c:when>
						<c:otherwise>
							<!--Foi criado um mecanismo no tiles para buscar o path e o texto a ser chamado no controller:
								Ex.: cadastroFiltro|Cadastrar -> <PATH_PARA_CONTROLLER|LAbEL>-->
							<li>
								<a href="${fn:split(breadcrumbName,'|')[0]}">${fn:split(breadcrumbName,'|')[1]}</a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${not empty list}">
					</ol>
					<!-- Fim das migalhas de pão -->
				</c:if>
				
					
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
						<tiles:insertAttribute name="body" />
					</article>	
				</div>
			</div>
		</div> <!-- Fim wrap -->
		
		<tiles:insertAttribute name="footer" />
		
		<script src='<spring:url value="/estatico/js/jquery-1.10.2.js"/>'></script>
		<script src='<spring:url value="/estatico/js/jquery.ui.core.1.10.3.js"/>'></script>
		<script src='<spring:url value="/estatico/js/bootstrap.js"/>'></script>
		<script src='<spring:url value="/estatico/js/application.js"/>'></script>
		<script src='<spring:url value="/estatico/js/pages/home.js"/>'></script>
		<script src='<spring:url value="/estatico/js/jquery.dataTables.js"/>'></script>
		<tiles:useAttribute id="list" name="jsfilesList" classname="java.util.List" />	
		<c:forEach var="jsfileName" items="${list}">
			<script src='<spring:url value='${jsfileName}' />'></script>	
		</c:forEach>
	</body>
</html>