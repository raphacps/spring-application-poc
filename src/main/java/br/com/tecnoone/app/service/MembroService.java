package br.com.tecnoone.app.service;

import br.com.tecnoone.app.domain.entity.Membro;
import br.com.tecnoone.app.domain.entity.Usuario;
import br.com.tecnoone.app.service.core.CrudService;

public interface MembroService extends CrudService<Membro>{
	
	/**
	 * Carrega uma entidade Pessoa pela chave do usuario
	 * @param usuario
	 * @return
	 */
	Membro loadBy(Usuario usuario);
}
