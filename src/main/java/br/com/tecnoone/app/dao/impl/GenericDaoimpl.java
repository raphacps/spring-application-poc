package br.com.tecnoone.app.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.tecnoone.app.dao.Dao;
import br.com.tecnoone.app.domain.entity.AppEntity;

@Repository(value="genericDao")
public class GenericDaoimpl	implements Dao<AppEntity> {

	@PersistenceContext
	protected EntityManager entityManager;

	public void create(AppEntity obj) {
		entityManager.persist(obj);
	}

	public AppEntity update(AppEntity obj) {
		return entityManager.merge(obj);
	}

	public AppEntity load(AppEntity obj) {
		return entityManager.find(obj.getClass(), obj.getPrimaryKey());
	}

	public void remove(AppEntity obj) {
		entityManager.remove(obj);

	}

	public Integer getCount(String namedQuery) {
		Query query = entityManager.createNamedQuery(namedQuery);
		return Integer.valueOf(query.getSingleResult().toString());
	}

	@SuppressWarnings("unchecked")
	public List<AppEntity> findAll(String namedQuery) {
		Query query = entityManager.createNamedQuery(namedQuery);
		return query.getResultList();
	}

	@Override
	public AppEntity loadByNamedQuey(String nameQuery, HashMap<String, Object> params) {
		Query query = entityManager.createNamedQuery(nameQuery);
		
		Set<String> chaves = params.keySet();
		
		for(String chave : chaves){
			query.setParameter(chave, params.get(chave));
		}
		
		return (AppEntity) query.getSingleResult();
	}
}
