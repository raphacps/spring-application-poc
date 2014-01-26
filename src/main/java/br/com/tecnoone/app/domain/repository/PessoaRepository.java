package br.com.tecnoone.app.domain.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import br.com.tecnoone.app.dao.Dao;
import br.com.tecnoone.app.domain.entity.Membro;
import br.com.tecnoone.app.domain.entity.Usuario;

@Repository
public class PessoaRepository {
	@Autowired
	@Qualifier(value = "genericDao")
	private Dao<Membro> dao;

	public Membro update(Membro membro) {
		return dao.update(membro);
	}

	public void create(Membro membro) {
		dao.create(membro);
	}
	
	public List<Membro> findAll(String namedQuery) {
		return dao.findAll(namedQuery);
	}

	public Membro loadBy(Usuario usuario) {
		HashMap<String, Object> params = new HashMap<String, Object>();

		if (usuario.getId() != null) {
			params.put("id", usuario.getId());
		}

		return dao.loadByNamedQuery("membro.loadByIdUsuario", params);
	}

}
