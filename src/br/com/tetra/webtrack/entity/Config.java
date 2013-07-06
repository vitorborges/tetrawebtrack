package br.com.tetra.webtrack.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Config {

	@Id @GeneratedValue
	@Column(name="id_config")
	private Long id;
	@Column(length=100)
	private String emailsmtp;
	@Column(length=100)
	private String emaillogin;
	private Integer emailporta;
	@Column(length = 50)
	private String emailsenha;
	
	// getters and setters
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getEmailsmtp() {
		return emailsmtp;
	}
	public void setEmailsmpt(String emailsmtp) {
		this.emailsmtp = emailsmtp;
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
