package br.com.tecnoone.app.service.core;

import java.util.List;

public interface ReaderService<T> {
    
	/**
	 * busca uma lista de objetos de acordo com os parametros do filtro.
	 * @param example
	 * @return T generico
	 */
    List<T> findBy(T example);

    /**
     * Carrega uma entidade pela chave primaria
     * @param pk
     * @return
     */
    T load(T pk);
    
    /**
     * Carrega uma lista de entidades
     * @return
     */
    List<T> findAll(Class<T> entity);
}
