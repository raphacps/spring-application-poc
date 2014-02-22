package br.com.tecnoone.app.domain.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Departamento implements AppEntity {

	private static final long serialVersionUID = 6973411019952819439L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String descricao;
	
	@OneToMany(mappedBy="pk.igreja", fetch = FetchType.LAZY)
	private List<IgrejaDepartamento> igrejas;
	
	@OneToMany(mappedBy = "pk.cargo", fetch = FetchType.LAZY)
	private List<IgrejaDepartamentoCargo> cargos;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public List<IgrejaDepartamento> getIgrejas() {
		return igrejas;
	}

	public void setIgrejas(List<IgrejaDepartamento> igrejas) {
		this.igrejas = igrejas;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
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
		Departamento other = (Departamento) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	@Override
	public Object getPrimaryKey() {
		return this.getId();
	}

	@Override
	public String toString() {
		return "Departamento [id=" + id + ", descricao=" + descricao
				+ ", igrejas=" + igrejas + ", cargos=" + cargos + "]";
	}
	
	
}
