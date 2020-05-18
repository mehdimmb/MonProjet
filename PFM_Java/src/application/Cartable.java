/**
 * Auteur: MOHAMMED BENNIS
 * c'est le modède qui décrit Un Cartable il posséde un ArrayList de type Outil
 * **/
package application;

import java.util.ArrayList;

public class Cartable{
	private ArrayList<Outil> outils;
	public Cartable() {
		outils=new ArrayList<Outil>();
	}
	public Cartable(ArrayList<Outil> outils) {
		this.outils=outils;
	}
	public ArrayList<Outil> getOutils() {
		return outils;
	}
	public void setOutils(ArrayList<Outil> outils) {
		this.outils = outils;
	}
	//Pour ajouter un outil au cartable dans le cas où le joueur ramasse un outil
	public boolean ajouter0util(Outil o) {
		return outils.add(o);
	}
	//Pour supprimer un outil de cartable dans le cas où le joeur dépose un outil si existant
	public boolean supprrimerOutil(int index) {
		if(index>= 0 && index<outils.size()) {
			outils.remove(index);
			return true;
		}
		else 
			return false;	
	}
}
