package br.com.tetra.webtrack.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Usuario implements Serializable{

		private static final long serialVersionUID = 1L;
		@Id
		@GeneratedValue
		private Integer id;
		@Column(length = 25, nullable = false)
		private String nome;
		@Column(length = 15, nullable = false)
		private String login;
		@Column(length = 12, nullable = false)
		private String senha;
		@Column(length = 35, nullable = false)
		private String email;
		@Column(length = 15)
		private String telefone;
		
		
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
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
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
		
	
}
