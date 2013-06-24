package br.com.tetra.webtrack.util;

import java.io.UnsupportedEncodingException;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import br.com.caelum.vraptor.ioc.Component;
import br.com.tetra.webtrack.dao.ConfigDAO;
import br.com.tetra.webtrack.model.Config;

@Component
public class Email {
	
	private ConfigDAO dao;
	
	public Email() {
		this.dao = new ConfigDAO();
	}
	
	public String enviar(String email, String senha) throws EmailException, UnsupportedEncodingException {
		
		try {
			
		Config config = dao.buscaConfig(1);
		
		
		SimpleEmail e = new SimpleEmail();
		   //Utilize o hostname do seu provedor de email
		   System.out.println("alterando hostname...");
		   e.setHostName(config.getEmailsmpt());
		   //Quando a porta utilizada não é a padrão (gmail = 465)
		   e.setSmtpPort(config.getEmailporta());
		   //Adicione os destinatários
		   e.addTo(email);
		   //Configure o seu email do qual enviará
		   e.setFrom(config.getEmaillogin(), "Tetra WebTrack E-mail Robot");
		   //Adicione um assunto
		   e.setSubject("Recuperação de senha");
		   //Adicione a mensagem do email
		   e.setMsg("A sua senha é: " + senha +
		   		"Não responda este e-mail");
		   //Para autenticar no servidor é necessário chamar os dois métodos abaixo
		   System.out.println("autenticando...");
		   e.setSSLCheckServerIdentity(true);
		   e.setAuthentication(config.getEmaillogin(), config.getEmailsenha());
		   System.out.println("enviando...");
		   e.send();
		} catch (EmailException e) {
			return null;
		}
			return "sucesso";
	}

}
