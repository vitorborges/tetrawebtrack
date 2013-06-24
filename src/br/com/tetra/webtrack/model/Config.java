package br.com.tetra.webtrack.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Config {

	@Id
	@Column(name="id_config")
	private Long id;
	@Column(length=35)
	private String emailsmpt;
	@Column(length=30)
	private String emaillogin;
	private Integer emailporta;
	@Column(length = 32)
	private String emailsenha;
	
	
	// getters and setters
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getEmailsmpt() {
		return emailsmpt;
	}
	public void setEmailsmpt(String emailsmpt) {
		this.emailsmpt = emailsmpt;
	}
	public String getEmaillogin() {
		return emaillogin;
	}
	public void setEmaillogin(String emaillogin) {
		this.emaillogin = emaillogin;
	}
	public Integer getEmailporta() {
		return emailporta;
	}
	public void setEmailporta(Integer emailporta) {
		this.emailporta = emailporta;
	}
	public String getEmailsenha() {
		return emailsenha;
	}
	public void setEmailsenha(String emailsenha) {
		this.emailsenha = emailsenha;
	}
	
	
	
}
