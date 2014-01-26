package br.com.tecnoone.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.tecnoone.app.domain.entity.Membro;
import br.com.tecnoone.app.domain.entity.Telefone;
import br.com.tecnoone.app.domain.entity.Usuario;
import br.com.tecnoone.app.domain.repository.PessoaRepository;
import br.com.tecnoone.app.service.MembroService;

@Service
public class MembroServiceImpl implements MembroService {

	@Autowired
	private PessoaRepository repository;
	
	@Override
	public void delete(Membro obj) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional
	public void create(Membro membro) {
		for (Telefone telefone : membro.getTelefones()) {
			telefone.setMembro(membro);
		}
		repository.create(membro);
	}

	@Override
	public List<Membro> findBy(Membro example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Membro load(Membro pk) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Membro loadBy(Usuario usuario) {
		return repository.loadBy(usuario);
	}

	@Override
	@Transactional
	public Membro update(Membro membro) {
		for (Telefone telefone : membro.getTelefones()) {
			telefone.setMembro(membro);
		}
		return repository.update(membro);
	}

	@Override
	public List<Membro> findAll() {
		return repository.findAll("membro.findAll");
	}

}
