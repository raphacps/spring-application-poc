package br.com.tecnoone.app.dao;

import java.util.List;

import br.com.tecnoone.app.domain.entity.AppEntity;

public interface Dao<T extends AppEntity> {
	
	void create(T entity);
	
	T update(T entity);
	
	T find(T entity);
	
	void remove(T entity);
	
	List<T> findAll(String namedQuey);
	
	Integer getCount(String namedQuery);
}