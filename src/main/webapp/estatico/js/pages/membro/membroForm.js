var page = {
	consultarCepComSucesso : function(data){
		$('#rua').val(data.logradouro);
		$('#cep').val(data.cep);
		$('#bairro').val(data.bairro);
		$('#estado').val(data.estado);
		$('#cidade').val(data.cidade);
	},
	consultarCepComErro : function(data){
		$('#rua').val('');
		$('#bairro').val('');
		$('#estado').val('');
		$('#cidade').val('');
		$('#complemento').val('');
	}
}

$('#cep').typeahead({
	source : function (query, process) {
		
		var result = $.getJSON('http://api.postmon.com.br/v1/cep/' + query + application.CROSS_DOMAIN_CONFIG);
		
		result.done(function(data){
			page.consultarCepComSucesso(data);
		});
		
		result.fail(function(data){
			page.consultarCepComErro(data);
		});
	}
});

$('[id="popover"]').popover({
	placement: 'right',
	title: 'Aten&ccedil;&atilde;o',
	content: '<div class="well">Os dados desta se&ccedil;&atilde;o alteram seu login e senha assim que salvos.</div>',
	container: 'body',
	trigger: 'hover',
	html: true
});

