package br.com.tetra.webtrack.entity;

import java.util.Calendar;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
public class Ticket {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_ticket")
	private long id;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable=false)
	private Calendar dtabertura;
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar dtfechamento;
	private String status;
	private String tipo;
	private String prioridade;
	@Type(type = "true_false")
	private Boolean pegajoso;
	@Column(length = 25, nullable=false)
	private String contato;
	@Lob
	@Column(name="problema", length=512, nullable=false)
	private String problema;
	@Lob
	@Column(name="obs")
	private String obs;
	@Column(name="codaux1", length=25)
	private String codaux1;
	@Column(name="codaux2", length=25)
	private String codaux2;
	
	//RELACIONAMENTOS
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="id_grupo", insertable=true,updatable=true)
	@Fetch(FetchMode.JOIN)
	private Grupo grupo;
	@OneToMany(mappedBy="ticket", fetch=FetchType.EAGER)
	private Collection<Atendimento> atendimentos;
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="id_usuario", insertable=true, updatable=true)
	@Fetch(FetchMode.JOIN)
	private Usuario usuario;
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="id_cliente", insertable=true, updatable=true)
	private Cliente cliente;
	
	
	// getters and setters
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTipo() {
		return tipo;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getPrioridade() {
		return prioridade;
	}
	public void setPrioridade(String prioridade) {
		this.prioridade = prioridade;
	}
	
	public Boolean getPegajoso() {
		return pegajoso;
	}
	public void setPegajoso(Boolean pegajoso) {
		this.pegajoso = pegajoso;
	}
	public String getProblema() {
		return problema;
	}
	public void setProblema(String problema) {
		this.problema = problema;
	}
	public String getObs() {
		return obs;
	}
	public void setObs(String obs) {
		this.obs = obs;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Calendar getDtabertura() {
		return dtabertura;
	}
	public void setDtabertura(Calendar dtabertura) {
		this.dtabertura = dtabertura;
	}
	
	public Calendar getDtfechamento() {
		return dtfechamento;
	}
	public void setDtfechamento(Calendar dtfechamento) {
		this.dtfechamento = dtfechamento;
	}
	public String getContato() {
		return contato;
	}
	public void setContato(String contato) {
		this.contato = contato;
	}
	public Grupo getGrupo() {
		return grupo;
	}
	public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}
	public Collection<Atendimento> getAtendimentos() {
		return atendimentos;
	}
	public void setAtendimentos(Collection<Atendimento> atendimentos) {
		this.atendimentos = atendimentos;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	

}
