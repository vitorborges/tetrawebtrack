package br.com.tetra.webtrack.entity;

import java.util.Calendar;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.Type;

@Entity
public abstract class Equipamento {
	
	@Id @GeneratedValue
	@Column(name="id_equipamento")
	private long id;
	@Column(nullable=false)
	private String referencia;
	@Column(nullable=false)
	private String tipo;
	@Temporal(TemporalType.DATE)
	@Column(nullable=false)
	private Calendar dtcadastro;
	@Type(type="true_false")
	private Boolean inativo;
	@Lob
	private String obs;
	
	//RELACIONAMENTOS
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="id_usuario", insertable=true,updatable=true)
	@Fetch(FetchMode.JOIN)
	private Usuario usuario;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="id_cliente", insertable=true,updatable=true)
	@Fetch(FetchMode.JOIN)
	private Cliente cliente;
	@OneToMany(mappedBy="equipamento", fetch=FetchType.LAZY)
	private Collection<Atendimento> atendimentos;
	
	//getters and setters
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getReferencia() {
		return referencia;
	}
	public void setReferencia(String referencia) {
		this.referencia = referencia;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public Calendar getDtcadastro() {
		return dtcadastro;
	}
	public void setDtcadastro(Calendar dtcadastro) {
		this.dtcadastro = dtcadastro;
	}
	public Boolean getInativo() {
		return inativo;
	}
	public void setInativo(Boolean inativo) {
		this.inativo = inativo;
	}
	public String getObs() {
		return obs;
	}
	public void setObs(String obs) {
		this.obs = obs;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public Collection<Atendimento> getAtendimentos() {
		return atendimentos;
	}
	public void setAtendimentos(Collection<Atendimento> atendimentos) {
		this.atendimentos = atendimentos;
	} 
	
}
