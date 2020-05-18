/**
 * Auteur: MOHAMMED BENNIS
 * c'est le modède qui décrit Un Joueur et contient ses différents attributs et méthodes
 * **/
package application;

public class Joueur {
		private int numero;
		private String nom;
		private int niveau;
		private Cartable cartable;
		private int position;
		private boolean[] porte_ouverte;
		private String message;
		
		public Joueur(int num,String nom, int niveau, Cartable cartable, int position) {
			this.numero=num;
			this.nom = nom;
			this.niveau = niveau;
			this.cartable = cartable;
			this.position = position;
			this.porte_ouverte = new boolean[4];
			message="";
		}
		public String getNom() {
			return nom;
		}
		public void setNom(String nom) {
			this.nom = nom;
		}
		public int getNiveau() {
			return niveau;
		}
		public void setNiveau(int niveau) {
			this.niveau = niveau;
		}
		public Cartable getCartable() {
			return cartable;
		}
		public void setCartable(Cartable cartable) {
			this.cartable = cartable;
		}
		
		public int getPosition() {
			return position;
		}
		public void setPosition(int position) {
			this.position = position;
		}
		
		public boolean isPorte_ouverte(int num_chambre) {
			return porte_ouverte[num_chambre-1];
		}
		public void setPorte_ouverte(boolean porte_ouverte,int num_chambre) {
			this.porte_ouverte[num_chambre-1] = porte_ouverte;
		}
		public int getNumero() {
			return numero;
		}
		public void setNumero(int numero) {
			this.numero = numero;
		}
		//Pour changer de direction/position et tourne
		public void tourneDroite() {
			if(position<4)//la position maximale est la 4éme si le joueur tourne encore il doit se diriger vers la 1ére encore une fois
				this.position++;
			else
				this.position=1;
		}
		//Pour changer de direction/position et tourne
		public void tourneGauche() {
			if(position>1)//la position minimale est la 1ére si le joueur tourne encore il doit se diriger vers la 4éme encore une fois 
				this.position--;
			else
				this.position=4;
		}
		//pour s'avancer et passer à l'autre chambre/niveau
		//à condition que la porte doit etre ouverte; 
		//pour l'avoir ouverte le joueur doit atteindre l'objectif correspandant à son niveau actuel
		//et qu'il doit etre face à la porte càd la 3 eme position/direction
		public boolean avancer(Chambre chambre) {
			if(chambre.getNumero()!=0) {
				if(position==3 && porte_ouverte[chambre.getNumero()-1]) {
					return true;
				}
				else
					if(position==3) {
						message="La porte n'est pas ouverte, vous devez atteindre l'objectif pour l'avoir ouverte";
		
						return false;
					}	
					else {
						message="Pour avancer; vous devez être face à la porte et l'avoir ouverte";
						return false;
					}
			}
			else {
				int index_porte_face=position+1;
				if(index_porte_face>=4)
					index_porte_face=index_porte_face-4;
				if(porte_ouverte[index_porte_face]) {
					return true;
				}
				else {
					message="La porte n'est pas ouverte, vous devez atteindre l'objectif pour l'avoir ouverte";
					return false;
				}
			
			}
				
		}
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
		//méthode pour reculer et revenir au niveau précédant
		public void reculer() {
			
		}
		//méthode permettant de ramasser un outil et l'ajouter au cartable du joueur
		public void ramasser(Outil o) {
			cartable.ajouter0util(o);
		}
		//méthode qui permet au joueur de prendre le cartable
		public void prendreCartable() {
			
		}
		//méthode permettant de deposer un outil 
		public void deposer() {
			
		}
}
