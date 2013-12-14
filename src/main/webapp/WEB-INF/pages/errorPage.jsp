<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

		<div class="jumbotron">
		  <h1>Ops... tivemos um problema interno :(</h1>
		  <p>Por gentileza entre em contato com a administração e informe o código de erro <span class="label label-primary">${uuid}</span>.</p>
		</div>
		
		
		<!--
	    Failed URL: ${url}
	    Exception:  ${ex.message}
	        <c:forEach items="${ex.stackTrace}" var="ste">    
	        	${ste} 
	    	</c:forEach>
	    -->