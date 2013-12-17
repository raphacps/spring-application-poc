package br.com.tecnoone.app.domain.entity;

import java.io.Serializable;

public interface AppEntity extends Serializable{
	/**
	 * Define a chave primaria
	 * @return
	 */
	Object getPrimaryKey();
}
