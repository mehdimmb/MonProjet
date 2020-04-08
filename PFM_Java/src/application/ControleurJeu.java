/**
 * Auteur: MOHAMMED BENNIS
 * c'est le Contrôleur de l'interface graphique Jeu
 * **/
package application;

import java.io.IOException;
import java.util.ArrayList;

import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.KeyEvent;


public  class ControleurJeu implements EventHandler<KeyEvent>{
	@FXML
	private Label objectif,niveau,nom_joueur,position;
	@FXML
	public Label avertissement;
	@FXML
	private ImageView toit,murf,murg,murd,sol,arrplan,imv_outild,imv_outilf,imv_outilg;
	private Outil outil1,outil2,outil3,vide;
	public Outil outil_face_joueur;
	public ArrayList<Outil> outils;
	public ControleurJeu(){
		// TODO Auto-generated constructor stub	
	}
	@Override
	public void handle(KeyEvent event) {
		// TODO Auto-generated method stub		
	}   /*la méthode charger_chambre pour charger les différent attributs et composants de la chambre 
			correspondantes au attribut niveau de la classe Joueur
		*/
	public void charger_Chambre(Joueur joueur,Chambre chambre) {
		//La 3 eme position posséde 2 cas soit la porte ouverte donc ou porte fermée
		if(joueur.getPosition()==3 && joueur.isPorte_ouverte())
			chambre.setMurf(new Image("/Bibioltèque/chambre"+joueur.getNiveau()+"_"+joueur.getPosition()+"/murfpo.png"));
		murf.setImage(chambre.getMurf());
		murg.setImage(chambre.getMurg());
		murd.setImage(chambre.getMurd());
		toit.setImage(chambre.getToit());
		sol.setImage(chambre.getSol());
		avertissement.setText("");
		
		
	} //la méthode pour charger les afficher les différents outils correspandant au niveau du joueur
	public void charger_Outlis(int niveau,int position){
		int indexof=position;
		int indexod=position+1;
		if(position==4) {
			indexof=0;
			indexod=1;
		}
		if(position==3) {
			indexod=0;
		}
		imv_outilg.setImage(outils.get(position-1).getImage_gauche());
		imv_outilf.setImage(outils.get(indexof).getImage_face());
		imv_outild.setImage(outils.get(indexod).getImage_droite());
		outil_face_joueur=outils.get(indexof);
	}  //la méthode qui permet l'initialisation des outils 
	public void init_Outils(int niveau) {
		outils=new ArrayList<Outil>();
		outil1=new Outil(niveau,niveau);
		outil2=new Outil(niveau+1,niveau);
		outil3=new Outil(niveau+2,niveau);
		vide=new Outil();
		outils.add(outil1);
		outils.add(outil2);
		outils.add(outil3);
		outils.add(vide);
	}  /*la méthode qui permet d'afficher sur la vue Jeu.fxml les différents informations 
			tels que l'objectif à atteindre, Niveau actuel, position actuel et nom de joueur
		*/
	public void charger_Info(String objectif,String nom_joueur,int position, int niveau) {
		this.objectif.setText(objectif);
		this.nom_joueur.setText(nom_joueur);
		this.position.setText(""+position);
		this.niveau.setText(""+niveau);
	}


}
