package br.com.tetra.webtrack.entity;

public enum PerfilUsuario {
	CLIENTE("Cliente"),
	GESTOR("Gestor"),
	SUPERVISOR("Supervisor"),
	TECNICO("Tecnico");
	
	private String label;

	private PerfilUsuario(String label) {
		this.label = label;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}
}
