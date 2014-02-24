package br.com.tecnoone.app.domain.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.ForeignKey;

@Entity
public class Departamento implements AppEntity {

	private static final long serialVersionUID = 6973411019952819439L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String descricao;

	public Long getId() {
		return id;
	}

	@OneToMany(mappedBy = "departamento", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Cargo> cargos = new ArrayList<>();

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_igreja", nullable = false)
	@ForeignKey(name = "igrejaPK")
	@JsonIgnore
	private Igreja igreja;

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public List<Cargo> getCargos() {
		return cargos;
	}

	public void addCargo(Cargo... cargos) {
		for(Cargo cargo : cargos){
			this.cargos.add(cargo);
		}
	}

	public Igreja getIgreja() {
		return igreja;
	}

	public void setIgreja(Igreja igreja) {
		this.igreja = igreja;
	}

	@Override
	public Object getPrimaryKey() {
		return this.getId();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((descricao == null) ? 0 : descricao.hashCode());
		result = prime * result + ((igreja == null) ? 0 : igreja.hashCode());
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
		if (descricao == null) {
			if (other.descricao != null)
				return false;
		} else if (!descricao.equals(other.descricao))
			return false;
		if (igreja == null) {
			if (other.igreja != null)
				return false;
		} else if (!igreja.equals(other.igreja))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Departamento [id=" + id + ", descricao=" + descricao
				+ ", cargos=" + cargos + ", igreja=" + igreja + "]";
	}

}
