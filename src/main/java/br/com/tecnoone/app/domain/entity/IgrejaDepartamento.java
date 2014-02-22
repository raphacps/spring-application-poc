package br.com.tecnoone.app.domain.entity;

import java.io.Serializable;

import javax.persistence.Embedded;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

import br.com.tecnoone.app.domain.entity.embedabble.DataHoraInclusaoAtualizacao;

@Entity
@Table(name = "IGREJA_DEPARTAMENTO")
public class IgrejaDepartamento implements Serializable, AppEntity {

	private static final long serialVersionUID = -8842208962933752484L;

	@EmbeddedId
	private IgrejaDepartamentoPK pk;

	@Embedded
	private DataHoraInclusaoAtualizacao dataHora;

	public IgrejaDepartamentoPK getPk() {
		return pk;
	}

	public void setPk(IgrejaDepartamentoPK pk) {
		this.pk = pk;
	}

	public DataHoraInclusaoAtualizacao getDataHora() {
		return dataHora;
	}

	public void setDataHora(DataHoraInclusaoAtualizacao dataHora) {
		this.dataHora = dataHora;
	}

	@Override
	public Object getPrimaryKey() {
		return getPk();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((pk == null) ? 0 : pk.hashCode());
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
		IgrejaDepartamento other = (IgrejaDepartamento) obj;
		if (pk == null) {
			if (other.pk != null)
				return false;
		} else if (!pk.equals(other.pk))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "IgrejaDepartamento [pk=" + pk + ", dataHora=" + dataHora + "]";
	}

}
