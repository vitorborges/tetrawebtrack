package br.com.tetra.webtrack.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
public class Atendimento {

	@Id
	@GeneratedValue
	@Column(name = "id_atendimento")
	private Long id;
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar dtatendimento;
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar dtsolucao;
	private String status;
	private String tipo;
	@Column(length = 25, nullable = false)
	private String contato;
	@Lob
	private String solucao;

	// RELACIONAMENTOS

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_ticket", insertable = true, updatable = true)
	@Fetch(FetchMode.JOIN)
	private Ticket ticket;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_usuario", insertable = true, updatable = true)
	@Fetch(FetchMode.JOIN)
	private Usuario usuario;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_equipamento", insertable = true, updatable = true)
	@Fetch(FetchMode.JOIN)
	private Equipamento equipamento;

	// getters and setters

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Calendar getDtatendimento() {
		return dtatendimento;
	}

	public void setDtatendimento(Calendar dtatendimento) {
		this.dtatendimento = dtatendimento;
	}

	public Calendar getDtsolucao() {
		return dtsolucao;
	}

	public void setDtsolucao(Calendar dtsolucao) {
		this.dtsolucao = dtsolucao;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getContato() {
		return contato;
	}

	public void setContato(String contato) {
		this.contato = contato;
	}

	public String getSolucao() {
		return solucao;
	}

	public void setSolucao(String solucao) {
		this.solucao = solucao;
	}

	public Ticket getTicket() {
		return ticket;
	}

	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Equipamento getEquipamento() {
		return equipamento;
	}

	public void setEquipamento(Equipamento equipamento) {
		this.equipamento = equipamento;
	}
	

}
