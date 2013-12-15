package br.com.tecnoone.app.dao;

import java.util.HashMap;
import java.util.List;

import br.com.tecnoone.app.domain.entity.AppEntity;

public interface Dao<T extends AppEntity> {
	
	void create(T entity);
	
	T update(T entity);
	
	T load(T pk);
	
	T loadByNamedQuey(String namedQuery, HashMap<String, Object> params);
	
	void remove(T entity);
	
	List<T> findAll(String namedQuey);
	
	Integer getCount(String namedQuery);
}