package br.com.tetra.webtrack.util;

import java.io.UnsupportedEncodingException;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.dao.ConfigDAO;
import br.com.tetra.webtrack.entity.Config;

@Component
public class Email {
	
	private ConfigDAO dao;
	
	public Email() {
		this.dao = new ConfigDAO();
	}

	public String enviar(String email, String subject, String mensagem) throws EmailException, UnsupportedEncodingException {
		try {
		Config config = dao.buscaConfig(1);
		SimpleEmail e = new SimpleEmail();
		   e.setHostName(config.getEmailsmtp());
		   e.setSmtpPort(config.getEmailporta());
		   e.addTo(email);
		   e.setFrom(config.getEmaillogin(), "Tetra WebTrack");
		   e.setSubject(subject);
		   e.setMsg(mensagem);
		   e.setSSLCheckServerIdentity(true);
		   e.setAuthentication(config.getEmaillogin(), config.getEmailsenha());
		   e.send();
		} catch (EmailException e) {
			e.getMessage();
		}
		return "sucesso";
	}
}