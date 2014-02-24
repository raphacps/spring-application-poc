package br.com.tecnoone.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.tecnoone.app.domain.entity.Usuario;
import br.com.tecnoone.app.domain.repository.UsuarioRepository;
import br.com.tecnoone.app.service.UsuarioService;

@Service
public class UsuarioServiceImpl extends GenericServiceImpl<Usuario> implements UsuarioService{
	
	@Autowired
	private UsuarioRepository repository;

	public Usuario loadByLoginName(Usuario usuario) {
		return repository.loadByLoginName(usuario);
	}
}
