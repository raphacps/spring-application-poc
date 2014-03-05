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
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.ForeignKey;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;

import br.com.tecnoone.app.domain.entity.embedabble.Endereco;

@Entity
@NamedQueries({
				@NamedQuery(name = "membro.loadByIdUsuario", query = "select m from Membro m where m.usuario.id = :id"),
				@NamedQuery(name = "membro.findAll", query = "Select m from Membro m") })
@Table(name = "Membro")
public class Membro implements AppEntity {

	private static final long serialVersionUID = 198532763431970887L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotBlank(message = "O Usuario não pode ser vazio!")
	private String nome;
	@Range(min = 1, max = 100, message = "A idade deve variar entre 0 e 100.")
	private String idade;
	@Column(unique = true)
	private String cpf;
	private String rg;

	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name="id_membro")
	@ForeignKey(name="membroPK")
	private List<Telefone> telefones = new ArrayList<>();

	@Embedded
	private Endereco endereco;

	@OneToOne(optional = true, orphanRemoval = true, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_usuario")
	@ForeignKey(name="usuarioPK")
	private Usuario usuario;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_igreja", nullable = false)
	@ForeignKey(name="igrejaPK")
	@JsonIgnore
	private Igreja igreja;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getIdade() {
		return idade;
	}

	public void setIdade(String idade) {
		this.idade = idade;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public List<Telefone> getTelefones() {
		return telefones;
	}

	public void addTelefone(Telefone... telefones) {
		for(Telefone tel : telefones){
			this.telefones.add(tel);
		}
	}
	
	public void setTelefones(List<Telefone> telefones) {
		this.telefones = telefones;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}	
	
	public Igreja getIgreja() {
		return igreja;
	}

	public void setIgreja(Igreja igreja) {
		this.igreja = igreja;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cpf == null) ? 0 : cpf.hashCode());
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
		Membro other = (Membro) obj;
		if (cpf == null) {
			if (other.cpf != null)
				return false;
		} else if (!cpf.equals(other.cpf))
			return false;
		return true;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	@Override
	public Object getPrimaryKey() {
		return getId();
	}

	//@Override
	/*public String toString() {
		return "Membro [id=" + id + ", nome=" + nome + ", idade=" + idade
				+ ", cpf=" + cpf + ", rg=" + rg + ", telefones=" + telefones
				+ ", endereco=" + endereco + ", usuario=" + usuario + "]";
	}*/
	
	

}
