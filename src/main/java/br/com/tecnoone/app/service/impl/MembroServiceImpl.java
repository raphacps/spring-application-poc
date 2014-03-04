package br.com.tecnoone.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.tecnoone.app.domain.entity.Membro;
import br.com.tecnoone.app.domain.entity.Usuario;
import br.com.tecnoone.app.domain.repository.MembroRepository;
import br.com.tecnoone.app.service.MembroService;

@Service(value = "membroServiceImpl")
public class MembroServiceImpl extends GenericServiceImpl<Membro> implements MembroService {

	@Autowired
	private MembroRepository membroRepository;
	

	@Override
	public Membro loadBy(Usuario usuario) {
		return membroRepository.loadBy(usuario);
	}
	
	@Override
	public List<Membro> findBy(Membro membro) {
		return membroRepository.findBy(membro);
	}
}
