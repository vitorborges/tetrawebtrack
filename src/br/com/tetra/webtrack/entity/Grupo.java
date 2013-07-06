package br.com.tetra.webtrack.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Grupo {

	@Id @GeneratedValue
	@Column(name="id_grupo")
	private Long id;
	@Column (length = 30, nullable = false)
	private String nome;
	@Column (length = 120)
	private String descricao;
	
	//RELACIONAMENTOS
	@OneToMany(mappedBy = "grupo", fetch = FetchType.LAZY)
	private Collection<Ticket> tickets;
	
	// getters and setters
	
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
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Collection<Ticket> getTickets() {
		return tickets;
	}
	public void setTickets(Collection<Ticket> tickets) {
		this.tickets = tickets;
	}
	
}
