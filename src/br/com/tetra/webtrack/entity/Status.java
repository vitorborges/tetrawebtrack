package br.com.tetra.webtrack.entity;

public enum Status {
	
	ABERTO("Aberto"),
	ATRIBUIDO("Atribuído"),
	ATENDENDO("Atendendo"),
	AGENDADO("Agendado"),
	RETORNADO("Retornado"),
	AGUARDANDO("Aguardando"),
	CANCELADO("Cancelado"),
	SOLUCIONADO("Solucionado"),
	REABERTO("Reaberto"),
	FECHADO("Fechado");
	
	private String label;

	private Status(String label) {
		this.label = label;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

}
