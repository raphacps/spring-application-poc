package br.com.tecnoone.app.domain.repository;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

import br.com.tecnoone.app.domain.entity.Usuario;

@Repository
public class UsuarioRepository extends GenericRepositoryImpl<Usuario>{
	
	public Usuario loadByLoginName(Usuario login){
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		if(login.getId()!=null){
			params.put("id", login.getId());
		}
		
		if(login.getLoginName()!=null){
			params.put("loginName", login.getLoginName());
		}
		
		if(login.getSenha()!=null && !"".equals(login.getSenha())){
			params.put("senha", login.getSenha());
		}
		
		return (Usuario) dao.loadByNamedQuery("login.findByLoginName", params);
	}
}
