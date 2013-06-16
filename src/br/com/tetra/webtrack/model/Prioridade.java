package br.com.tetra.webtrack.model;

public enum Prioridade {
	
	BAIXA("Baixa"),
	NORMAL("Normal"),
	ALTA("Alta"),
	URGENTE("Urgente"), 
	IMEDIATO("Imediato");
	
	private String label;

	private Prioridade(String label) {
		this.label = label;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}
}
