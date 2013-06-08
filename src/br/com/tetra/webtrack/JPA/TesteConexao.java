package br.com.tetra.webtrack.JPA;

public class TesteConexao {

	public static void main(String[] args) {
		if (JPAFactory.getEntityManager() != null){
			System.out.println("Conexao OK!");
		}
	}
}
