package br.com.tetra.webtrack.entity;

public enum TipoTicket {
	
	SUPORTE_TECNICO("Suporte T�cnico"),
	SUPORTE_FISCAL("Suporte Fiscal"),
	IMPLANTACAO("Implanta��o"),
	TREINAMENTO("Treinamento"),
	INSTALACAO("Instala��o");
	
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
