<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>jQuery UI Autocomplete - Remote JSONP datasource</title>

<link href='<spring:url value="estatico/css/bootstrap.css"/>'   rel="stylesheet" media="screen">
		<link href='<spring:url value="estatico/css/application.css"/>' rel="stylesheet" media="screen">
		<link href='<spring:url value="estatico/css/jquery-ui-1-10-3.css"/>' rel="stylesheet" media="screen">


<script src='<spring:url value="estatico/js/jquery-1.9.1.js"/>'></script>
		<script src='<spring:url value="estatico/js/jquery.ui.core.1.10.3.js"/>'></script>
		<script src='<spring:url value="estatico/js/bootstrap.js"/>'></script>
		<script src='<spring:url value="estatico/js/application.js"/>'></script>
		

<style>

.ui-autocomplete-loading {
	background: white url('images/ui-anim_basic_16x16.gif') right center
		no-repeat;
}

#city {
	width: 25em;
}
</style>
<script>
	$(function() {
		function log(message) {
			$("<div>").text(message).prependTo("#log");
			$("#log").scrollTop(0);
}
$( "#city" ).autocomplete({
					source : function(request, response ) {
						$.ajax({
							url : "http://ws.geonames.org/searchJSON",
							dataType : "jsonp",
							data : {
								featureClass : "P",
								style : "full",
								maxRows : 12,
								name_startsWith : request.term
							},
							success : function(data) {
								response($.map(data.geonames, function(item) {
									return {
										label : item.name
												+ (item.adminName1 ? ", "
														+ item.adminName1 : "")
												+ ", " + item.countryName,
										value : item.name
									}
								}));
							}
						});
					},
					minLength : 2,
					select : function(event, ui) {
						log(ui.item ? "Selected: " + ui.item.label
								: "Nothing selected, input was " + this.value);
					},
					open : function() {
						$(this).removeClass("ui-corner-all").addClass(
								"ui-corner-top");
					},
					close : function() {
						$(this).removeClass("ui-corner-top").addClass(
								"ui-corner-all");
					}
				});
	});
</script>
</head>
<body>
	<div class="ui-widget">
		<label for="city">Your city: </label> <input id="city" /> Powered by
		<a href="http://geonames.org">geonames.org</a>
	</div>
	<div class="ui-widget" style="margin-top: 2em; font-family: Arial;">
		Result:
		<div id="log" style="height: 200px; width: 300px; overflow: auto;"
			class="ui-widget-content"></div>
	</div>
</body>
</html>