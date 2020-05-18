/**
 * Auteur: MOHAMMED BENNIS
 * c'est le mod�de qui d�crit Un outil et contient ses diff�rents attributs et m�thodes
 * **/
package application;

import javafx.scene.image.Image;

public class Outil {
		private int numero,position;
		private String nom;
		private Image image_gauche,image_face,image_droite;//chaque outil a 3 vues 
		boolean ramass�;
		
		public Outil(int numero) {
			this.numero = numero;
			this.image_gauche=new Image("/Bibiolt�que/outil/"+numero+"g.png");
			this.image_face=new Image("/Bibiolt�que/outil/"+numero+"f.png");
			this.image_droite=new Image("/Bibiolt�que/outil/"+numero+"d.png");
			this.ramass�=false;
		}
		public Outil() {
			this.image_gauche=new Image("/Bibiolt�que/outil/vide.png");	
			this.image_face=new Image("/Bibiolt�que/outil/vide.png");	
			this.image_droite=new Image("/Bibiolt�que/outil/vide.png");	
			this.ramass�=true;
		}
		public boolean isRamass�() {
			return ramass�;
		}
		public void setRamass�(boolean ramass�) {
			this.ramass� = ramass�;
		}
		public Image getImage_gauche() {
			return image_gauche;
		}
		public void setImage_gauche(Image image_gauche) {
			this.image_gauche = image_gauche;
		}
		public Image getImage_face() {
			return image_face;
		}
		public void setImage_face(Image image_face) {
			this.image_face = image_face;
		}
		public Image getImage_droite() {
			return image_droite;
		}
		public void setImage_droite(Image image_droite) {
			this.image_droite = image_droite;
		}
		public int getPosition() {
			return position;
		}
		public void setPosition(int position) {
			this.position = position;
		}
		public int getNumero() {
			return numero;
		}
		public void setNumero(int numero) {
			this.numero = numero;
		}
		public String getNom() {
			return nom;
		}
		public void setNom(String nom) {
			this.nom = nom;
		}
}
