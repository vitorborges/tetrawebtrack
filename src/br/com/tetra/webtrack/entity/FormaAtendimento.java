package br.com.tetra.webtrack.entity;

public enum FormaAtendimento {
	PRESENCIAL("Presencial"),
	REMOTO("Remoto");
	
	private String label;

	private FormaAtendimento(String label) {
		this.label = label;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

}
