package br.com.tecnoone.app.domain.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;

@Embeddable
public class IgrejaDepartamentoCargoPK implements Serializable {

	private static final long serialVersionUID = -6283193001813021694L;

	@ManyToOne
	private Igreja igreja;

	@ManyToOne
	private Departamento departamento;

	@ManyToOne
	private Cargo cargo;

	public Igreja getIgreja() {
		return igreja;
	}

	public void setIgreja(Igreja igreja) {
		this.igreja = igreja;
	}

	public Departamento getDepartamento() {
		return departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

	public Cargo getCargo() {
		return cargo;
	}

	public void setCargo(Cargo cargo) {
		this.cargo = cargo;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cargo == null) ? 0 : cargo.hashCode());
		result = prime * result
				+ ((departamento == null) ? 0 : departamento.hashCode());
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
		IgrejaDepartamentoCargoPK other = (IgrejaDepartamentoCargoPK) obj;
		if (cargo == null) {
			if (other.cargo != null)
				return false;
		} else if (!cargo.equals(other.cargo))
			return false;
		if (departamento == null) {
			if (other.departamento != null)
				return false;
		} else if (!departamento.equals(other.departamento))
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
		return "IgrejaDepartamentoCargoPK [igreja=" + igreja
				+ ", departamento=" + departamento + ", cargo=" + cargo + "]";
	}
}
