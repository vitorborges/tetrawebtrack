package br.com.tetra.webtrack.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
public abstract class Ticket {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_ticket")
	private long id;
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar dtabertura;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="id_grupo", insertable=true,updatable=true)
	@Fetch(FetchMode.JOIN)
	private Grupo grupo;
	private String status;
	private String tipo;
	private String prioridade;
	@Lob
	@Column(name="problema", length=512)
	private String problema;
	@Lob
	@Column(name="obs")
	private String obs;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTipo() {
		return tipo;
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
	public Grupo getGrupo() {
		return grupo;
	}
	public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}

}
