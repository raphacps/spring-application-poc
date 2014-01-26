package br.com.tecnoone.app.service.core;

public interface PersistService <T> {
    /**
     * Deleta um registro do banco fisicamente
     * @param entity
     */
	void delete(T entity);
	
	/**
	 * Salva uma entidade no banco de dados
	 * @param entity
	 */
    void create(T entity);
    
    /**
     * Atualiza uma entidade no banco de dados
     * @param entity
     * @return entity - Entidade alterada.
     */
    T update(T entity);
}
