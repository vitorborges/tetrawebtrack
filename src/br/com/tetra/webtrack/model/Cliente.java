package br.com.tetra.webtrack.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Cliente {

	@Id @GeneratedValue
	private Integer id;
	@Column(length = 11 , nullable = false)
	private String cnpj;
	@Column(length = 50, nullable = false)
	private String razaosocial;
	@Column(length = 35, nullable = false)
	private String fantasia;
	@Column(length = 50)
	private String endereco;
	@Column(length = 6)
	private String numero;
	@Column(length = 15)
	private String bairro;
	@Column(length = 20)
	private String cidade;
	@Column(length = 35)
	private String email;
	@Column(length = 20, nullable = false)
	private String fone1;
	@Column(length = 20)
	private String fone2;
	@Column(length = 20, nullable = false)
	private String responsavel;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCnpj() {
		return cnpj;
	}
	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	public String getRazaosocial() {
		return razaosocial;
	}
	public void setRazaosocial(String razaosocial) {
		this.razaosocial = razaosocial;
	}
	public String getFantasia() {
		return fantasia;
	}
	public void setFantasia(String fantasia) {
		this.fantasia = fantasia;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFone1() {
		return fone1;
	}
	public void setFone1(String fone1) {
		this.fone1 = fone1;
	}
	public String getFone2() {
		return fone2;
	}
	public void setFone2(String fone2) {
		this.fone2 = fone2;
	}
	public String getResponsavel() {
		return responsavel;
	}
	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}
	
	
	
}
