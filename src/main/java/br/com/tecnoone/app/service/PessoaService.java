package br.com.tecnoone.app.service;

import br.com.tecnoone.app.domain.entity.Pessoa;
import br.com.tecnoone.app.domain.entity.Usuario;
import br.com.tecnoone.app.service.core.CrudService;

public interface PessoaService extends CrudService<Pessoa>{
	Pessoa loadBy(Usuario usuario);
}
