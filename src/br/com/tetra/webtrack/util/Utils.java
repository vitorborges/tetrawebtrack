package br.com.tetra.webtrack.util;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public class Utils {

	public static String md5(String senha) throws UnsupportedEncodingException{  
        String sen = "";  
        MessageDigest md = null;  
        try {  
            md = MessageDigest.getInstance("MD5");  
        } catch (NoSuchAlgorithmException e) {  
            e.printStackTrace();  
        }  
        BigInteger hash = new BigInteger(1, md.digest(senha.getBytes("UTF-8")));  
        sen = hash.toString(16);              
        return sen;  
    }  
	
	public static String gerasenha() {
		UUID uuid = UUID.randomUUID();  
		String myRandom = uuid.toString();  
		return (myRandom.substring(0,8));  
	}
}
