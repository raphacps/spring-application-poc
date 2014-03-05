package br.com.tecnoone.app.domain.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;

import org.hibernate.annotations.ForeignKey;

import br.com.tecnoone.app.domain.entity.embedabble.Endereco;

/**
 * Representa uma Igreja
 * 
 * @author Raphael Soares
 * 
 */
@Entity
public class Igreja implements AppEntity {

	private static final long serialVersionUID = 4547699503502750409L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(nullable = false)
	private String denominacao;
	@Column(nullable = false)
	private String nome;

	@OneToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "Sede_Congregacao", joinColumns = @JoinColumn(name = "id_sede"), inverseJoinColumns = @JoinColumn(name = "id_congregacao"))
	@ForeignKey(name = "sedePK", inverseName = "congregacaoPK")
	private List<Igreja> congrecacoes = new ArrayList<>();

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name="id_igreja")
	@ForeignKey(name="igrejaPK")
	private List<Telefone> telefones = new ArrayList<>();

	@Column(nullable = false)
	private String cnpj;

	@Embedded
	private Endereco endereco;

	@OneToMany(mappedBy = "igreja", orphanRemoval = true, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Membro> membros;

	@OneToMany(mappedBy = "igreja", orphanRemoval = true, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Departamento> departamentos;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDenominacao() {
		return denominacao;
	}

	public void setDenominacao(String denominacao) {
		this.denominacao = denominacao;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public List<Membro> getMembros() {
		return membros;
	}

	public void setMembros(List<Membro> membros) {
		this.membros = membros;
	}

	public List<Igreja> getCongrecacoes() {
		return congrecacoes;
	}

	public void addCongrecacoes(Igreja... congrecacao) {

		for (Igreja congreg : congrecacao) {
			this.congrecacoes.add(congreg);
		}
	}

	public List<Telefone> getTelefones() {
		return telefones;
	}

	public void addTelefones(Telefone... telefones) {
		for(Telefone tel : telefones){
			this.telefones.add(tel);
		}
	}

	public List<Departamento> getDepartamentos() {
		return departamentos;
	}

	public void setDepartamentos(List<Departamento> departamentos) {
		this.departamentos = departamentos;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cnpj == null) ? 0 : cnpj.hashCode());
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
		Igreja other = (Igreja) obj;
		if (cnpj == null) {
			if (other.cnpj != null)
				return false;
		} else if (!cnpj.equals(other.cnpj))
			return false;
		return true;
	}

	@Override
	public Object getPrimaryKey() {
		return this.getId();
	}

	@Override
	public String toString() {
		return "Igreja [id=" + id + ", denominacao=" + denominacao + ", nome="
				+ nome + ", congrecacoes=" + congrecacoes + ", telefones="
				+ telefones + ", cnpj=" + cnpj + ", endereco=" + endereco
				+ ", membros=" + membros + ", departamentos=" + departamentos
				+ "]";
	}

}