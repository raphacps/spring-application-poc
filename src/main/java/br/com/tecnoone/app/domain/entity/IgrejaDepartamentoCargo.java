package br.com.tecnoone.app.domain.entity;

import java.io.Serializable;

import javax.persistence.Embedded;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

import br.com.tecnoone.app.domain.entity.embedabble.DataHoraInclusaoAtualizacao;

@Entity
@Table(name = "igreja_departamento_cargo")
public class IgrejaDepartamentoCargo implements Serializable, AppEntity {

	private static final long serialVersionUID = -2096411254757777849L;

	@EmbeddedId
	private IgrejaDepartamentoCargoPK pk;

	@Embedded
	private DataHoraInclusaoAtualizacao dataHora;

	public IgrejaDepartamentoCargoPK getPk() {
		return pk;
	}

	public void setPk(IgrejaDepartamentoCargoPK pk) {
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

}
