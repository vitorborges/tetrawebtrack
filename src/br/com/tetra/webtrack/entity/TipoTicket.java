package br.com.tetra.webtrack.entity;

public enum TipoTicket {
	
	SUPORTE_TECNICO("Suporte Técnico"),
	SUPORTE_FISCAL("Suporte Fiscal"),
	IMPLANTACAO("Implantação"),
	TREINAMENTO("Treinamento"),
	INSTALACAO("Instalação");
	
	private String label;

	private TipoTicket(String label) {
		this.label = label;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}
}
