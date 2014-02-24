package br.com.tecnoone.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.tecnoone.app.domain.entity.AppEntity;
import br.com.tecnoone.app.domain.repository.GenericRepositoryImpl;
import br.com.tecnoone.app.service.core.CrudService;

@Service(value = "genericServiceImpl")
public class GenericServiceImpl<T extends AppEntity> implements CrudService<T>{

	@Autowired(required=false)
	@Qualifier("genericRepositoryImpl")
	protected GenericRepositoryImpl<T> repository;
	
	@Override
	@Transactional
	public void remove(T entity) {
		repository.remove(entity);
		
	}

	@Override
	@Transactional
	public void create(T entity) {
		repository.create(entity);
		
	}

	@Override
	@Transactional
	public T update(T entity) {
		return repository.update(entity);
	}

	@Override
	public List<T> findBy(T example) {
		return null;
	}

	@Override
	public T load(T pk) {
		return repository.load(pk);
	}

	@Override
	public List<T> findAll() {
		return repository.findAll();
	}

}
