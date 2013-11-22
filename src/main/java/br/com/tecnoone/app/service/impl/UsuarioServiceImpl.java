package br.com.tecnoone.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.tecnoone.app.domain.entity.Login;
import br.com.tecnoone.app.domain.repository.UsuarioRepository;
import br.com.tecnoone.app.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService {
	
	@Autowired
	private UsuarioRepository repository;

	public List<Login> findBy(Login example) {
		return (List<Login>) repository.buscarPor(example);
	}
	
	public Login find(Login pk) {
		return repository.buscarPor(pk);
	}
}
