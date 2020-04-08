/**
 * Auteur: MOHAMMED BENNIS
 * c'est le modède qui décrit Un niveau et contient ses différents attributs et méthodes
 * **/
package application;

public class Niveau {
	//chaque niveau identifié par le numero de niveau et libellé qui décrit l'objectif du niveau
	private int numero;
	private String libellé;
	
	public Niveau() {
	}
	public Niveau(int numero, String libellé) {
		this.numero = numero;
		this.libellé = libellé;
	}
	public int getNiveau() {
		return numero;
	}
	public void setNiveau(int nemuro) {
		this.numero = nemuro;
	}
	public String getLibellé() {
		return libellé;
	}
	public void setLibellé(String libellé) {
		this.libellé = libellé;
	}
	
}
