package br.com.tecnoone.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import br.com.tecnoone.app.dao.Dao;
import br.com.tecnoone.app.domain.entity.Telefone;
import br.com.tecnoone.app.service.TelefoneService;

@Service
public class TelefoneServiceImpl implements TelefoneService {

	@Qualifier("genericDao")
	@Autowired
	private Dao<Telefone> dao;

	@Override
	public void delete(Telefone entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void create(Telefone entity) {
		dao.create(entity);

	}

	@Override
	public Telefone update(Telefone entity) {
		// TODO Auto-generated method stub
		return null;
	}

}
