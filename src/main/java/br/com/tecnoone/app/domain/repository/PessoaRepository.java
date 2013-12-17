package br.com.tecnoone.app.domain.repository;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import br.com.tecnoone.app.dao.Dao;
import br.com.tecnoone.app.domain.entity.Pessoa;
import br.com.tecnoone.app.domain.entity.Usuario;

@Repository
public class PessoaRepository {
	@Autowired
	@Qualifier(value = "genericDao")
	private Dao<Pessoa> dao;

	public Pessoa update(Pessoa pessoa) {
		return dao.update(pessoa);
	}

	public Pessoa loadBy(Usuario usuario) {
		HashMap<String, Object> params = new HashMap<String, Object>();

		if (usuario.getId() != null) {
			params.put("id", usuario.getId());
		}

		return dao.loadByNamedQuery("pessoa.loadByidUsuario", params);
	}

}
