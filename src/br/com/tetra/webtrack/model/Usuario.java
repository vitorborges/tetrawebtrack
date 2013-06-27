package br.com.tetra.webtrack.model;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Type;

@Entity
public class Usuario implements Serializable{

		private static final long serialVersionUID = 1L;
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name="id_usuario")
		private Long id;
		@Column(length = 25, nullable = false)
		private String nome;
		@Column(length = 15, nullable = false)
		private String login;
		@Column(length = 32, nullable = false)
		private String senha;
		@Column(length = 35, nullable = false)
		private String email;
		@Column(length = 15)
		private String telefone;
		@Column (length=10, nullable = false)
		private String perfil;
		@Type(type = "true_false")
		private Boolean inativo;
		
		//RELACIONAMENTOS
		
		@OneToMany(mappedBy="usuario", fetch=FetchType.LAZY)
		private Collection<Atendimento> atendimentos;
		@OneToMany(mappedBy="usuario", fetch=FetchType.LAZY)
		private Collection<Ticket> tickets;
		@OneToMany(mappedBy="usuario", fetch=FetchType.LAZY)
		// private Collection<Equipamento> equipamentos;
		
		// getters and setters		
		
		public String getPerfil() {
			return perfil;
		}
		public void setPerfil(String perfil) {
			this.perfil = perfil;
		}
		public Boolean getInativo() {
			return inativo;
		}
		public void setInativo(Boolean inativo) {
			this.inativo = inativo;
		}
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
		public String getLogin() {
			return login;
		}
		public void setLogin(String login) {
			this.login = login;
		}
		public String getSenha() {
			return senha;
		}
		public void setSenha(String senha) {
			this.senha = senha;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getTelefone() {
			return telefone;
		}
		public void setTelefone(String telefone) {
			this.telefone = telefone;
		}
		
		public Collection<Atendimento> getAtendimentos() {
			return atendimentos;
		}
		public void setAtendimentos(Collection<Atendimento> atendimentos) {
			this.atendimentos = atendimentos;
		}
		public Collection<Ticket> getTickets() {
			return tickets;
		}
		public void setTickets(Collection<Ticket> tickets) {
			this.tickets = tickets;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		// public Collection<Equipamento> getEquipamentos() {
		// 	return equipamentos;
		// }
		// public void setEquipamentos(Collection<Equipamento> equipamentos) {
		// 	this.equipamentos = equipamentos;
		// }
		
}
