package br.com.tecnoone.app.domain.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import br.com.tecnoone.app.dao.Dao;
import br.com.tecnoone.app.domain.entity.Login;

@Repository
public class UsuarioRepository{
	
	@Autowired
	@Qualifier(value="genericDao")
	private Dao<Login> dao;
	
	public Login buscarPor(Login pk){
		return dao.find(pk);
	}
}
