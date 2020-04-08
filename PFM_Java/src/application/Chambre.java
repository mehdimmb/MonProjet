/**
 * Auteur: MOHAMMED BENNIS
 * c'est le modède qui décrit une chambre et contient ses différents attributs et méthodes
 * **/
package application;

import java.util.ArrayList;

import javafx.scene.image.Image;

public class Chambre {
private int numero;
private String couleur;
private Image murf,toit,sol,murg,murd;

	public Chambre(int niveau, int position) {
		this.numero=niveau;
		this.murd=new Image("/Bibioltèque/chambre"+niveau+"_"+position+"/murd.png");
		this.murg=new Image("/Bibioltèque/chambre"+niveau+"_"+position+"/murg.png");
		this.murf=new Image("/Bibioltèque/chambre"+niveau+"_"+position+"/murf.png");
		this.toit=new Image("/Bibioltèque/chambre"+niveau+"_"+position+"/toit.png");
		this.sol=new Image("/Bibioltèque/chambre"+niveau+"_"+position+"/sol.png");
	}

	public Chambre(int numero, String couleur) {
		this.numero = numero;
		this.couleur = couleur;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getCouleur() {
		return couleur;
	}
	public void setCouleur(String couleur) {
		this.couleur = couleur;
	}
	public Image getMurf() {
		return murf;
	}
	public void setMurf(Image murf) {
		this.murf = murf;
	}
	public Image getToit() {
		return toit;
	}
	public void setToit(Image toit) {
		this.toit = toit;
	}
	public Image getSol() {
		return sol;
	}
	public void setSol(Image sol) {
		this.sol = sol;
	}
	public Image getMurg() {
		return murg;
	}
	public void setMurg(Image murg) {
		this.murg = murg;
	}
	public Image getMurd() {
		return murd;
	}
	public void setMurd(Image murd) {
		this.murd = murd;
	}
}
