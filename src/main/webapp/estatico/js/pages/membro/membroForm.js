var $obj = $('#cep');

$obj.autocomplete({
	source : function(request, response) {
		var retorno = [];
		$('#rua').val('');
		$('#bairro').val('');
		$('#estado').val('');
		$('#cidade').val('');
		$('#complemento').val('');
		$.getJSON('http://api.postmon.com.br/v1/cep/' + $obj.val()).done(
				function(data) {
					$('#rua').val(data.logradouro);
					$('#cep').val(data.cep);
					$('#bairro').val(data.bairro);
					$('#estado').val(data.estado);
					$('#cidade').val(data.cidade);
					response();
				}).fail(
				function(error) {
					console.debug('acessando autocomplete 12');
					retorno.push("Nenhum registro encontrado para o termo "
							+ $obj.val());
					response(retorno);
				})
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

