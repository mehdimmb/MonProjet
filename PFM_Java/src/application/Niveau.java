/**
 * Auteur: MOHAMMED BENNIS
 * c'est le mod�de qui d�crit Un niveau et contient ses diff�rents attributs et m�thodes
 * **/
package application;

public class Niveau {
	//chaque niveau identifi� par le numero de niveau et libell� qui d�crit l'objectif du niveau
	private int numero;
	private String libell�;
	
	public Niveau() {
	}
	public Niveau(int numero, String libell�) {
		this.numero = numero;
		this.libell� = libell�;
	}
	public int getNiveau() {
		return numero;
	}
	public void setNiveau(int nemuro) {
		this.numero = nemuro;
	}
	public String getLibell�() {
		return libell�;
	}
	public void setLibell�(String libell�) {
		this.libell� = libell�;
	}
	
}
