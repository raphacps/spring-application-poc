package br.com.tecnoone.app.domain.repository;

import java.util.HashMap;
import java.util.List;

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
	
	public List<Membro> findBy(Membro membro) {
		
		StringBuilder strQuery = new StringBuilder();
		strQuery.append("Select m from Membro m where m.igreja.id = :id");
		if (membro.getNome() != null && membro.getNome().trim().length() > 0) {
			strQuery.append( " and m.nome like :nome");
		}
		
		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("id", membro.getIgreja().getId());
		
		if (membro.getNome() != null && membro.getNome().trim().length() > 0) {
			params.put("nome", "%" +  membro.getNome() + "%");
		}
		
		return dao.findBy(strQuery.toString(), params);
	}
}
