package br.com.tecnoone.app.domain.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ForeignKey;

@Embeddable
public class IgrejaDepartamentoPK implements Serializable{
	
	private static final long serialVersionUID = 6824657111902359814L;

	@ForeignKey(name = "igrejaPK")
	@ManyToOne(fetch = FetchType.LAZY) 
	private Igreja igreja;
	
	@ForeignKey(name = "departamentoPK")
	@ManyToOne(fetch = FetchType.LAZY) 
	private Departamento departamento;

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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
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
		IgrejaDepartamentoPK other = (IgrejaDepartamentoPK) obj;
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
	
}
