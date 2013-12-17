package br.com.tecnoone.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.tecnoone.app.domain.entity.Usuario;
import br.com.tecnoone.app.domain.repository.UsuarioRepository;
import br.com.tecnoone.app.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService {
	
	@Autowired
	private UsuarioRepository repository;

	public List<Usuario> findBy(Usuario exemplo) {
		return null;//(List<Login>) repository.buscarPor(exemplo);
	}
	
	public Usuario load(Usuario pk) {
		return null;//repository.carregarPor(pk);
	}

	@Override
	public Usuario loadByLoginName(Usuario usuario) {
		return repository.loadByLoginName(usuario);
	}
}
