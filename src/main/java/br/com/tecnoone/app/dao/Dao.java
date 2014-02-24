package br.com.tecnoone.app.dao;

import java.util.HashMap;
import java.util.List;

import br.com.tecnoone.app.domain.entity.AppEntity;

public interface Dao<T extends AppEntity> {
	
	void create(T entity);
	
	T update(T entity);
	
	T load(T pk);
	
	T loadByNamedQuery(String namedQuery, HashMap<String, Object> params);
	
	void remove(T entity);
	
	List<T> findAll();
	
	Integer getCount(String namedQuery);
	
	List<T> findByExample(T example);
}