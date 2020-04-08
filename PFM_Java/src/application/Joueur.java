/**
 * Auteur: MOHAMMED BENNIS
 * c'est le mod�de qui d�crit Un Joueur et contient ses diff�rents attributs et m�thodes
 * **/
package application;

public class Joueur {
		private int numero;
		private String nom;
		private int niveau;
		private Cartable cartable;
		private int position;
		private boolean porte_ouverte;
		private String message;
		
		public Joueur(String nom, int niveau, Cartable cartable, int position, boolean porte_ouverte) {
			this.nom = nom;
			this.niveau = niveau;
			this.cartable = cartable;
			this.position = position;
			this.porte_ouverte = porte_ouverte;
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
		
		public boolean isPorte_ouverte() {
			return porte_ouverte;
		}
		public void setPorte_ouverte(boolean porte_ouverte) {
			this.porte_ouverte = porte_ouverte;
		}
		public int getNumero() {
			return numero;
		}
		public void setNumero(int numero) {
			this.numero = numero;
		}
		//Pour changer de direction/position et tourne
		public void tourneDroite() {
			if(position<4)//la position maximale est la 4�me si le joueur tourne encore il doit se diriger vers la 1�re encore une fois
				this.position++;
			else
				this.position=1;
		}
		//Pour changer de direction/position et tourne
		public void tourneGauche() {
			if(position>1)//la position minimale est la 1�re si le joueur tourne encore il doit se diriger vers la 4�me encore une fois 
				this.position--;
			else
				this.position=4;
		}
		//pour s'avancer et passer � l'autre chambre/niveau
		//� condition que la porte doit etre ouverte; 
		//pour l'avoir ouverte le joueur doit atteindre l'objectif correspandant � son niveau actuel
		//et qu'il doit etre face � la porte c�d la 3 eme position/direction
		public boolean avancer() {
			if(position==3 && porte_ouverte) {
				this.niveau++;
				return true;
			}
			else
				if(position==3) {
					message="La porte n'est pas ouverte, vous devez atteindre l'objectif pour l'avoir ouverte";
	
					return false;
				}	
				else {
					message="Pour avancer et passer au niveau suivant vous devez �tre face � la porte et l'avoir ouverte";
					return false;
				}
					
				
		}
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
		//m�thode pour reculer et revenir au niveau pr�c�dant
		public void reculer() {
			
		}
		//m�thode permettant de ramasser un outil et l'ajouter au cartable du joueur
		public void ramasser(Outil o) {
			cartable.ajouter0util(o);
		}
		//m�thode qui permet au joueur de prendre le cartable
		public void prendreCartable() {
			
		}
		//m�thode permettant de deposer un outil 
		public void deposer() {
			
		}
}
