this.autocomplete = function(obj) {
	var $obj = $(obj);
	$obj.autocomplete({
		source : function(request, response) {
			var retorno = [];
			$('#endereco.rua').val('');
			$('#endereco.bairro').val('');
			$('#endereco.estado').val('');
			$('#endereco.cidade').val('');
			$('#endereco.complemento').val('');
			$.getJSON('http://api.postmon.com.br/v1/cep/' + $obj.val()).done(
					function(data) {
						$('#endereco.rua').val(data.logradouro);
						$('#endereco.cep').val(data.cep);
						$('#endereco.bairro').val(data.bairro);
						$('#endereco.estado').val(data.estado);
						$('#endereco.cidade').val(data.cidade);
						response();
					}).fail(
					function(error) {
						retorno.push("Nenhum registro encontrado para o termo "
								+ $obj.val());
						response(retorno);
					})
		}
	});
};

application.autocomplete("#endereco.cep");