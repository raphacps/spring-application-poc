package br.com.tecnoone.app.service;

import br.com.tecnoone.app.domain.entity.Usuario;
import br.com.tecnoone.app.service.core.ReaderService;


public interface UsuarioService extends ReaderService<Usuario>{ 
	Usuario loadByLoginName(Usuario usuario);
}
