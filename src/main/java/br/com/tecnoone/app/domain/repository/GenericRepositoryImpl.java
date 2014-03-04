package br.com.tecnoone.app.domain.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import br.com.tecnoone.app.dao.Dao;
import br.com.tecnoone.app.domain.entity.AppEntity;

@Repository(value="genericRepositoryImpl")
public class GenericRepositoryImpl<T extends AppEntity> {
	
	@Autowired
	@Qualifier("genericDao")
	protected Dao<T> dao;
	
	public void create(T entity) {
		dao.create(entity);
	}

	public T update(T entity) {
		return dao.update(entity);
	}

	public T load(T pk) {
		return dao.load(pk);
	}

	public void remove(T entity) {
		dao.remove(entity);
	}

	public List<T> findAll(Class<T> entity) {
		return dao.findAll(entity);
	}

	public Integer getCount(String namedQuery) {
		return dao.getCount(namedQuery);
	}
	
	public List<T> findBy(T example) {
		return null;
	}
}
