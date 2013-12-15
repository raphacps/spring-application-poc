package br.com.tecnoone.app.domain.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity

@NamedQueries({
	@NamedQuery(name="login.findByLoginName", query="select u from Usuario u where u.loginName = :loginName"),
	@NamedQuery(name="login.findAll", query="select u from Usuario u")})

public class Usuario implements Serializable, AppEntity{
    
	private static final long serialVersionUID = -1023084253787111893L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String loginName;
	
    private String senha;
        
    public Usuario(){}
    
	@Override
	public Object getPrimaryKey() {
		return getId();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((loginName == null) ? 0 : loginName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		if (loginName == null) {
			if (other.loginName != null)
				return false;
		} else if (!loginName.equals(other.loginName))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Login [id=" + id + ", loginName=" + loginName + ", senha="
				+ senha + "]";
	}
}
