package br.com.tetra.webtrack.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.hibernate.annotations.Type;

@Entity
public class Pc extends Equipamento{

	@Column(length=25)
	private String processador;
	@Column(length=15)
	private String memoria;
	@Column(length=15)
	private String hd1;
	@Column(length=15)
	private String hd2;
	@Column(length=20)
	private String sistoper;
	@Type(type="true_false")
	private Boolean dvd;
	
	//getters and setters
	
	public String getProcessador() {
		return processador;
	}
	public void setProcessador(String processador) {
		this.processador = processador;
	}
	public String getMemoria() {
		return memoria;
	}
	public void setMemoria(String memoria) {
		this.memoria = memoria;
	}
	public String getHd1() {
		return hd1;
	}
	public void setHd1(String hd1) {
		this.hd1 = hd1;
	}
	public String getHd2() {
		return hd2;
	}
	public void setHd2(String hd2) {
		this.hd2 = hd2;
	}
	public String getSistoper() {
		return sistoper;
	}
	public void setSistoper(String sistoper) {
		this.sistoper = sistoper;
	}
	public Boolean getDvd() {
		return dvd;
	}
	public void setDvd(Boolean dvd) {
		this.dvd = dvd;
	}
	
	
	
}
