var application = new Application();
// Configuração de tooltips
$('.container').tooltip({
	selector : "*",
	placement : 'auto top'
});

// configuração de popover
$("a[data-toggle=popover]").popover().click(function(e) {
	e.defaultPrevented();
});


$(function() {
    $('#meuTeste').dataTable({
    	"sDom": "rt<'col-md-5'il><'pagination col-md-7 text-right'p>",
    	"sPaginationType": "full_numbers",
    	"bPaginate": true,
    	"oLanguage": application.DATATABLE_I18N_CONFIGURATIONS
    });
});


application.autocomplete("#cep");

function Application() {
	/* Constantes para aplicar css */
	var WARNING = 'warning';
	var INFO = 'info';
	var DANGER = 'danger';
	var SUCCESS = 'success';
	var PRIMARY = 'primary';
	var SUCCESS_ICON = 'glyphicon-ok-sign';
	var ERROR_ICON = 'glyphicon-remove-sign';
	var WARNING_ICON = 'glyphicon-exclamation-sign';
	var INFO_ICON = 'glyphicon-info-sign';

	/* Caixas de modal exibidas no sistema */
	this.alertSuccess = function(msg) {
		alert(SUCCESS, msg);
	};

	this.alertInfo = function(msg) {
		alert(INFO, msg);
	};

	this.alertPrimary = function(msg) {
		alert(PRIMARY, msg);
	};

	this.alertDanger = function(msg) {
		alert(DANGER, msg);
	};

	this.alertWarning = function(msg) {
		alert(WARNING, msg);
	};

	/* Montagem do modal */
	var alert = function(messageType, msg) {
		
		var icon;
		if(messageType === PRIMARY || messageType === INFO){
			icon = INFO_ICON;
		}else if(messageType === DANGER){
			icon = ERROR_ICON;
		}else if(messageType === SUCCESS){
			icon = SUCCESS_ICON;
		}else if(messageType === WARNING){
			icon = WARNING_ICON;
		}
		
		$('#applicationAlert')
			.find('.modal-header').addClass(messageType);
			
		$('#applicationAlert').find('.glyphicon')
			.addClass('text-'+messageType)
			.addClass(icon);
		$('#applicationAlert').find('.well').text(msg);

		$('#applicationAlert')
			.find('.btn').addClass('btn-' + messageType);

		$('#applicationAlert').modal('show');
	};
	
	this.autocomplete = function(obj){
		var $obj = $(obj);
		$obj.autocomplete({
			source : function(request, response) {
				var retorno = [];
				$('#rua').val('');
				$('#bairro').val('');
				$('#estado').val('');
				$('#cidade').val('');
				$('#complemento').val('');
				$.getJSON('http://api.postmon.com.br/v1/cep/' + $obj.val())
			    .done(function(data){
			    	$('#rua').val(data.logradouro);
			    	$('#cep').val(data.cep);
			    	$('#bairro').val(data.bairro);
			    	$('#estado').val(data.estado);
			    	$('#cidade').val(data.cidade);
			    	response();
			    })
			    .fail(function(error){
			    	retorno.push("Nenhum registro encontrado para o termo " + $obj.val());
			    	response(retorno);
			    })
			}
		});
	};
	
	this.DATATABLE_I18N_CONFIGURATIONS= {
			
		    "sProcessing":   "Processando...",
		    "sLengthMenu":   "Mostrar _MENU_ registros",
		    "sZeroRecords":  "N&atilde;o foram encontrados resultados",
		    "sInfo":         "Mostrando de _START_ at&eacute; _END_ de _TOTAL_ registros",
		    "sInfoEmpty":    "Mostrando de 0 at&eacute; 0 de 0 registros",
		    "sInfoFiltered": "(filtrado de _MAX_ registros no total)",
		    "sInfoPostFix":  "",
		    "sSearch":       "Buscar:",
		    "sUrl":          "",
		    "oPaginate": {
		        "sFirst":    "Primeiro",
		        "sPrevious": "Anterior",
		        "sNext":     "Seguinte",
		        "sLast":     "&Uacute;ltimo"
		    }
	};
	
	
}