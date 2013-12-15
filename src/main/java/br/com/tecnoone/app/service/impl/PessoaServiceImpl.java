package br.com.tecnoone.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.tecnoone.app.domain.entity.Pessoa;
import br.com.tecnoone.app.domain.entity.Usuario;
import br.com.tecnoone.app.domain.repository.PessoaRepository;
import br.com.tecnoone.app.service.PessoaService;

@Service
public class PessoaServiceImpl implements PessoaService{

	@Autowired
	private PessoaRepository repository;
	
	@Override
	public void delete(Pessoa obj) {
		// TODO Auto-generated method stub
		
	}

	@Override
	@Transactional
	public void persist(Pessoa pessoa) {
		repository.salvar(pessoa);
		
	}

	@Override
	public List<Pessoa> findBy(Pessoa example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pessoa find(Pessoa pk) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pessoa loadBy(Usuario usuario) {
		return repository.loadBy(usuario);
	}

}
