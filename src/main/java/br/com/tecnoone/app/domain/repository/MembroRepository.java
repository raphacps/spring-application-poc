package br.com.tecnoone.app.domain.repository;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

import br.com.tecnoone.app.domain.entity.Membro;
import br.com.tecnoone.app.domain.entity.Usuario;

@Repository
public class MembroRepository extends GenericRepositoryImpl<Membro>{
	
	public Membro loadBy(Usuario usuario) {
		HashMap<String, Object> params = new HashMap<String, Object>();

		if (usuario.getId() != null) {
			params.put("id", usuario.getId());
		}

		return dao.loadByNamedQuery("membro.loadByIdUsuario", params);
	}

}
