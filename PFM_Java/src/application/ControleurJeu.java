/**
 * Auteur: MOHAMMED BENNIS
 * c'est le Contrôleur de l'interface graphique Jeu
 * **/
package application;

import java.awt.Button;
import java.io.IOException;
import java.util.ArrayList;

import org.json.JSONObject;

import com.jfoenix.controls.JFXButton;

import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import netscape.javascript.JSObject;


public  class ControleurJeu implements EventHandler<KeyEvent>{
	@FXML
	private Label objectif,niveau,nom_joueur,position;
	@FXML
	public Label avertissement,nsf,nsg,nsd,nsmap,fmap;
	@FXML
	private ImageView toit,murf,murg,murd,sol,arrplan,imv_outild,imv_outilf,imv_outilg;
	@FXML
	public ImageView map;
	@FXML
	public AnchorPane acp2;
	@FXML
	private VBox vb;
	@FXML
	private JFXButton quitter,enregistrer;
	public Outil outil_face_joueur;
	public ArrayList<Outil> tout_Outils,outils;
	ImageView pointer;
	private MainController mn=null;
	public ControleurJeu() throws IOException{
		// TODO Auto-generated constructor stub	
		tout_Outils=new ArrayList<Outil>();
		for(int i=1;i<=27;i++) {
			Outil o=new Outil(i);
			tout_Outils.add(o);	
		}
		
	}
	@Override
	public void handle(KeyEvent event) {
		// TODO Auto-generated method stub		
	}  
	/*la méthode charger_chambre pour charger les différent attributs et composants de la chambre 
			correspondantes au attribut niveau de la classe Joueur
		*/
	public void charger_Chambre(Joueur joueur,Chambre chambre) {
		String label;
		if(joueur.getNiveau()==3) {
			nsmap.setVisible(false);
			fmap.setVisible(true);
			label="Fin";
		}else {
			nsmap.setVisible(true);
			fmap.setVisible(false);
			label="Niveau suivant";
		}
		nsg.setText("");
		nsf.setText("");
		nsd.setText("");
		if(chambre.getNumero()!=0) {//partie responsable du chargement des différentes chambres 
			if(joueur.getPosition()==3 && joueur.isPorte_ouverte(chambre.getNumero()))
				chambre.setMurf(new Image("/Bibioltèque/chambre"+joueur.getNiveau()+"_"+chambre.getNumero()+"_"+joueur.getPosition()+"/murfpo.png"));
			if(joueur.getPosition()==2 && joueur.isPorte_ouverte(chambre.getNumero()))
				chambre.setMurd(new Image("/Bibioltèque/chambre"+joueur.getNiveau()+"_"+chambre.getNumero()+"_"+joueur.getPosition()+"/murdpo.png"));
			if(joueur.getPosition()==4 && joueur.isPorte_ouverte(chambre.getNumero()))
				chambre.setMurg(new Image("/Bibioltèque/chambre"+joueur.getNiveau()+"_"+chambre.getNumero()+"_"+joueur.getPosition()+"/murgpo.png"));
		}else {//partie responsable du chargement du couloir 
			int index_porte_face=joueur.getPosition()+2;
			if(index_porte_face>=5)
				index_porte_face=index_porte_face-4;
			int index_porte_gauche=joueur.getPosition()+1;
			if(index_porte_gauche>=5)
				index_porte_gauche=index_porte_gauche-4;
			int index_porte_droite=joueur.getPosition()+3;
			if(index_porte_droite>=5)
				index_porte_droite=index_porte_droite-4;
			if(joueur.isPorte_ouverte(index_porte_face))
				chambre.setMurf(new Image("/Bibioltèque/chambre"+joueur.getNiveau()+"_"+chambre.getNumero()+"_"+joueur.getPosition()+"/murfpo.png"));
			if(joueur.isPorte_ouverte(index_porte_droite))
				chambre.setMurd(new Image("/Bibioltèque/chambre"+joueur.getNiveau()+"_"+chambre.getNumero()+"_"+joueur.getPosition()+"/murdpo.png"));
			if(joueur.isPorte_ouverte(index_porte_gauche))
				chambre.setMurg(new Image("/Bibioltèque/chambre"+joueur.getNiveau()+"_"+chambre.getNumero()+"_"+joueur.getPosition()+"/murgpo.png"));
			nsg.setText("");
			nsf.setText("");
			nsd.setText("");
			if(joueur.getPosition()==1) {
				nsd.setText(label);
			}
			if(joueur.getPosition()==3) {
				nsg.setText(label);
			}
			if(joueur.getPosition()==2) {
				nsf.setText(label);
			}
			
			imv_outild.setImage(outils.get(3).getImage_droite());
			imv_outilf.setImage(outils.get(3).getImage_face());
			imv_outilg.setImage(outils.get(3).getImage_gauche());
			
		}
		murf.setImage(chambre.getMurf());
		murg.setImage(chambre.getMurg());
		murd.setImage(chambre.getMurd());
		toit.setImage(chambre.getToit());
		sol.setImage(chambre.getSol());
		avertissement.setText("");
	} //la méthode pour charger et afficher les différents outils correspandants au niveau du joueur
	public void charger_Outils(int position){
		int indexof=position;
		int indexod=position+1;
		if(position==4) {
			indexof=0;
			indexod=1;
		}
		if(position==3) {
			indexod=0;
		}
		if(outils.get(position-1).isRamassé()) {
			imv_outilg.setImage(outils.get(3).getImage_gauche());
		}else {
			imv_outilg.setImage(outils.get(position-1).getImage_gauche());
		}
		if(outils.get(indexof).isRamassé()) {
			imv_outilf.setImage(outils.get(3).getImage_face());
		}else {
			imv_outilf.setImage(outils.get(indexof).getImage_face());
		}
		if(outils.get(indexod).isRamassé()) {
			imv_outild.setImage(outils.get(3).getImage_droite());
		}else {
			imv_outild.setImage(outils.get(indexod).getImage_droite());
		}
		outil_face_joueur=outils.get(indexof);
		charger_Cartable();
	
	}  //la méthode qui permet l'initialisation des outils 
	public void init_Outils(int niveau, Chambre chambre_actuelle) {
		Outil vide=new Outil();
		outils=new ArrayList<Outil>();
		if(chambre_actuelle.getNumero()!=0) {
			int debut=((niveau*2+niveau-3)+chambre_actuelle.getNumero())*3-2;
			int fin=((niveau*2+niveau-3)+chambre_actuelle.getNumero())*3;
			for(int i=debut;i<=fin;i++) {
				outils.add(tout_Outils.get(i-1));
			}
			outils.add(vide);
		}else {
			for(int i=1;i<=4;i++) {
				outils.add(vide);
			}
		}
	}  /*la méthode qui permet d'afficher sur la vue Jeu.fxml les différents informations 
			tels que l'objectif à atteindre, Niveau actuel, position actuel et nom de joueur
		*/
	public void charger_Info(Niveau niveau,String nom_joueur,int position) {
		this.objectif.setText(niveau.getLibellé());
		this.nom_joueur.setText(nom_joueur);
		this.position.setText(""+position);
		this.niveau.setText(""+niveau.getNiveau());
	}
	//la fonction responsable de charger et afficher les différents outil possédé par le joueur 
	public void charger_Cartable() {
		vb.getChildren().clear();
		HBox hb=new HBox();
		int cpt=0;
		for(Outil o : tout_Outils) {
			if(o.isRamassé()) {
				cpt++;
				ImageView im=new ImageView(o.getImage_face());
				im.setFitHeight(45);
				im.setFitWidth(49);
				im.setId(""+o.getNumero());
				im.setOnMouseClicked(new EventHandler<MouseEvent>() {//gestion d'évenement onmouseclicked et l'affectation du fonction déposer à cet événement 
					//le joueur pourra déposer un outil dedant le cartable via un clique sur ce dernier
					@Override
					public void handle(MouseEvent event) {
						// TODO Auto-generated method stub
						deposer(im);
					}
				});
				hb.getChildren().add(im);
				if(cpt%4==0) {
					vb.getChildren().add(hb);
					hb=new HBox();
				}
			}
		}
		if(cpt%4!=0 && cpt>0) {
			vb.getChildren().add(hb);
		}
        }
	//cette fonction permettre au joueur de déposer un outil dedant le cartable via un clique sur ce dernier
	public void deposer(ImageView im) {
		if(MainController.chambre.getNumero()==0) {
			avertissement.setText("Vous ne pouvez pas déposer dans le couloir");
		}else if(!outil_face_joueur.isRamassé()) {
			avertissement.setText("Vous ne pouvez pas déposer; emplacement occupé");
		}else if(MainController.position==3){
			avertissement.setText("Vous ne pouvez pas déposer devant la porte");
		}else {
			int indexo=indexofOutil(Integer.parseInt(im.getId()));
			int indexof=indexofOutil(outil_face_joueur.getNumero());
			Outil o1=tout_Outils.get(indexo);
			o1.setRamassé(false);
			tout_Outils.set(indexof,o1);
			tout_Outils.set(indexo, outil_face_joueur);
			init_Outils(MainController.niveau.getNiveau(), MainController.chambre);
			charger_Outils(MainController.position);
		}
	}
	//fonction qui determine l'index d'outil cliqué  
	public int indexofOutil(int numero) {
		int cpt=0,index =-1;
		for(Outil o : tout_Outils) {
			if(o.getNumero()==numero) {
				index=cpt;
				break;
			}
			cpt++;
		}
		return index;
	}
	//fonction responsable du chargement et contrôle du map 
	public void charger_map(int pos,Chambre chambre) {
		map.setImage(new Image("/Bibioltèque/map/map.png"));
		acp2.getChildren().clear();
		pointer=new ImageView(new Image("/Bibioltèque/map/pointer.png"));
		pointer.setFitHeight(36);
		pointer.setFitWidth(32);
		acp2.getChildren().add(pointer);
		if(chambre.getNumero()!=0) {
			pointer.setRotate(chambre.getNumero()*90-90+pos*90-90);
		}
		switch(chambre.getNumero()) {
		case 0:	pointer.setRotate(pos*90+90);
				pointer.setLayoutX(63);
				pointer.setLayoutY(90);
			break;
		case 1:	pointer.setLayoutX(63);
				pointer.setLayoutY(135);
			break;
		case 2: pointer.setLayoutX(17);
				pointer.setLayoutY(90);
			break;
		case 3: pointer.setLayoutX(63);
				pointer.setLayoutY(48);
			break;
			}	
	}
	@FXML //fonction quitter pour fermer l'application lié au clique sur le bouton quitter
	private void quitter() {
		Stage stage = (Stage) quitter.getScene().getWindow();
		stage.close();
	}
	@FXML
	//La fonction enregistrer qui collecte les differentes infromations sur l'état du jeu 
	//ainsi que la convertion de certaines données au format JSON enregistre la partie sur la base de données 
	private void enregistrer() {
		String json_p_ouverte="{";
		for(int i=1;i<=4;i++) {
			json_p_ouverte+="\\\""+i+"\\\":\\\""+mn.joueur.isPorte_ouverte(i)+"\\\"";
			if(i!=4)
				json_p_ouverte+=",";
		}
		json_p_ouverte+="}";
		String json_cartable="{";
		for(int i=1;i<=27;i++) {
			json_cartable+="\\\""+i+"\\\":\\\""+tout_Outils.get(i-1).isRamassé()+"\\\"";
			if(i!=27)
				json_cartable+=",";
		}
		json_cartable+="}";
		if(mn.con.enregistrer_partie(mn.joueur,json_cartable,json_p_ouverte, mn.chambre.getNumero(), mn.joueur.getNumero()))
			avertissement.setText("Partie enregistrée avec succès");
		else
			avertissement.setText("Partie non enregistrée (Vérifiez votre connexion)");
	}


}
