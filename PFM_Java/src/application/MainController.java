/**
 * Auteur: MOHAMMED BENNIS
 * c'est le Contrôleur géneral qui contrôle toute l'application et les différents interactions entre ses composants
 * **/
package application;
	
import java.io.IOException;
import java.sql.SQLException;

import org.json.JSONObject;

import javafx.application.Application;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.AnchorPane;

public class MainController extends Application implements EventHandler<KeyEvent>{
	static FXMLLoader loader;
	private AnchorPane root;
	private Scene scene;
	private ControleurJeu ctrl;
	static int position;
	static Niveau niveau;
	static Joueur joueur;
	static Chambre chambre;
	static SqlConnection con;
	public boolean continuer;
	public String nomjoueur;
	private double rotate;
	@Override
	public void start(Stage primaryStage) {
		try {
			afficher(primaryStage,"Accueil.fxml");//Chargement du première interface_graphique; Accueil.fxml
			con=new SqlConnection();
		} catch(Exception e) {
			e.printStackTrace();
			}
	}
	
	public static void main(String[] args) {
		launch(args);
	}
	//La fonction qui permet de naviguer entre les différentes interfaces_graphiques 
	public void afficher(Stage primaryStage,String view) throws IOException{
		loader=new FXMLLoader();
		loader.setLocation(MainController.class.getResource(view));
		root= (AnchorPane) loader.load();
		scene = new Scene(root,833,590);
		scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
		if(view=="Jeu.fxml") {
			scene.setOnKeyPressed(this);
			ctrl=(ControleurJeu) loader.getController();
			if(continuer){//le cas où le joueur continue et reprendre l'état de sa dernière partie enregistrée
				int nchambre=0;
				JSONObject json_p_ouverte=new JSONObject();
				JSONObject json_outils=new JSONObject();
				try {//chargement des données d'après la base de données 
					joueur=con.getJoueur(1);
					json_p_ouverte=con.getPorte_Outils(1).get(1);
					json_outils=con.getPorte_Outils(1).get(0);
					nchambre = con.Nchambre(1);
					niveau=con.getNiveau(joueur.getNiveau());
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				position=joueur.getPosition();
				chambre=new Chambre(nchambre,niveau.getNiveau(), position);
				for(int i=1;i<=4;i++) {
					joueur.setPorte_ouverte(Boolean.parseBoolean(json_p_ouverte.get(""+i).toString()), i);
				}
				for(int i=1;i<=27;i++) {
					ctrl.tout_Outils.get(i-1).setRamassé(Boolean.parseBoolean(json_outils.get(""+i).toString()));
				}
				ctrl.init_Outils(niveau.getNiveau(),chambre);//initialisation des outils
				ctrl.charger_Chambre(joueur,chambre);//chargement du chambre (Murs,sol,toit)
				if(nchambre!=0)//si la localisation différents du couloir le programme doit charger les outils + le cartable
					ctrl.charger_Outils(position);
				else//sinon il charge seulement le cartable
					ctrl.charger_Cartable();
				ctrl.charger_Info(niveau, joueur.getNom(), position);//fonction responsable d'affichage des differentes informaion (Nom, niveau ,Objectif du jeu, position ...)
				ctrl.charger_map(position,chambre);//pour le chargement et le controle du map
				
			}else {// le cas d'une nouvelle partie
				position=1;
				try {
					niveau=con.getNiveau(1);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				//instanciation des deux object Joueur et chambre puis le chargement des différents composants
				joueur=new Joueur(1,nomjoueur, niveau.getNiveau(), new Cartable(), position);
				chambre=new Chambre(1,niveau.getNiveau(), position);
				ctrl.charger_Chambre(joueur,chambre);
				ctrl.init_Outils(niveau.getNiveau(),chambre);
				ctrl.charger_Outils(position);
				ctrl.charger_Info(niveau, joueur.getNom(), position);
				ctrl.charger_map(position,chambre);
			}
		}
		primaryStage.setTitle("Jeu de M.BENNIS");
		primaryStage.getIcons().add(new Image("/Bibioltèque/iconapp.png"));
		primaryStage.setScene(scene);
		primaryStage.show();
		
	}
    //cette fonction permet de lire la touche clavier appuyée par le joueur 
	@Override
	public void handle(KeyEvent event) {
		// TODO Auto-generated method stub
		switch(event.getCode().toString()) 
        { 
            case "UP"://le cas du touche flèche pointante vers le haut le joueur va se déplacer d'une chambre à l'autre et d'un niveau à l'autre si il a atteint l'objectif 
            	if(chambre.getNumero()!=0) {//pour savoir si le joueur n'est pas situé dans le couloir 
                		if(joueur.avancer(chambre)) {//joueur.avancer retourne une valeur boolean, si il a atteint l'objectif retourne true sinon retourne false
                    		position=chambre.getNumero();  //intialiser la position/direction à la direction initial          		
                    		joueur.setPosition(position);
                    		chambre=new Chambre(0,niveau.getNiveau(), position);
                        	ctrl.charger_Chambre(joueur,chambre);
                        	/*ctrl.init_Outils(niveau,chambre);
                        	ctrl.charger_Outils(position);*/
                        	ctrl.charger_Info(niveau, joueur.getNom(), position);
                        	ctrl.charger_map(position,chambre);
                		}
                		else {
                			ctrl.avertissement.setText(joueur.getMessage());
                		}
            	}else {//si le joueur se situe dans le couloir 
            		if(joueur.avancer(chambre)) {
            			if(position==2) {//si position = 2 veut dire que le joueur est face à la porte du niveau suivant
            				if(niveau.getNiveau()==3) {
            					ctrl.avertissement.setText("Félicitation vous avez atteint tout les objectif, Bravo! ");
            				}else {//chargement du niveau suivant est ces différents composants
            					position=1;
                    			niveau.setNiveau(niveau.getNiveau()+1);
                    			joueur.setNiveau(niveau.getNiveau());
                    			joueur.setPosition(position);
                    			for(int i=1;i<=4;i++) {
                    				joueur.setPorte_ouverte(false,i);
                    			}
                        		chambre=new Chambre(1,niveau.getNiveau(), position);
                            	ctrl.charger_Chambre(joueur,chambre);
                            	ctrl.init_Outils(niveau.getNiveau(),chambre);
                            	ctrl.charger_Outils(position);
                            	ctrl.charger_Info(niveau, joueur.getNom(), position);   
            				}   				
            			}else {//ce cas traite le déplacement du couloir à l'une des chambres du meme niveau
            				int num_chambre_face=position+2;
            				if(num_chambre_face>=4)
            					num_chambre_face=num_chambre_face-4;
            				position=1;
                			joueur.setPosition(position);
                    		chambre=new Chambre(num_chambre_face,niveau.getNiveau(), position);
                        	ctrl.charger_Chambre(joueur,chambre);
                        	ctrl.init_Outils(niveau.getNiveau(),chambre);
                        	ctrl.charger_Outils(position);
                        	ctrl.charger_Info(niveau, joueur.getNom(), position);  		
            			}
            			ctrl.charger_map(position,chambre);
            		}else {
            			ctrl.avertissement.setText(joueur.getMessage());
                	}	
            	}	
            	break; 
            case "DOWN": 
                //pour reculer
                break; 
            case "R": //le cas R pour ramasser un objet; pour ramasser un outil le joueur doit etre face à ce dernier
            	if(ctrl.outil_face_joueur.isRamassé()) {//verification de l'existance d'outil face 
            		ctrl.avertissement.setText("pas d'outil face à vous");
            	}else {
            		int cpt=0;
            		int index=0;
            		Outil o=new Outil();
            		for(Outil outil_actuel : ctrl.tout_Outils) {
            			if(ctrl.outil_face_joueur.getNumero()==outil_actuel.getNumero()) {
            				index=cpt;
            			}
            			cpt++;
            		}
            		joueur.ramasser(ctrl.tout_Outils.get(index));
            		ctrl.tout_Outils.get(index).setRamassé(true);;//photo
            		ctrl.init_Outils(niveau.getNiveau(), chambre);
            		cpt=0;
            		for(Outil outil_actuel : ctrl.outils) {
            			if(outil_actuel.isRamassé()) {
            				cpt++;
            			}
            		}
            		if(cpt>3) {//si le joueur a ramassé tous les objets situé dans la chambre actuel la porte sera ouverte pour passer au niveau suivant
            			if(chambre.getNumero()==1) {
            				joueur.setPorte_ouverte(true,chambre.getNumero());
            				joueur.setPorte_ouverte(true,chambre.getNumero()+1);
            			}
            			else {
            				joueur.setPorte_ouverte(true,chambre.getNumero()+1);
            			}
            		}
            		ctrl.charger_Outils(position);//charger les nouveaux outils correspondants au nouveau niveau
                	ctrl.charger_Chambre(joueur,chambre);//charger la nouvelle chambre correspondante au nouveau niveau
            	}
                break;
            case "LEFT": //la touche flèche pointante à gauche; la position/direction doit se changer ce qui implique le rechargement de la chambre et les outils pour s'adapter avec le nouveau angle  
            	joueur.tourneGauche();
            	position=joueur.getPosition();
            	chambre=new Chambre(chambre.getNumero(),niveau.getNiveau(), position);
            	ctrl.charger_Chambre(joueur,chambre);
            	rotate=ctrl.pointer.getRotate();
            	ctrl.pointer.setRotate(rotate-90);
            	if(chambre.getNumero()!=0) {
            		ctrl.charger_Outils(position);	
            	}
            	ctrl.charger_Info(niveau, joueur.getNom(), position);
                break;
            case "RIGHT"://la touche flèche pointante à droite; la position/direction doit se changer ce qui implique le rechargement de la chambre et les outils pour s'adapter avec le nouveau angle
            	joueur.tourneDroite();
            	position=joueur.getPosition();
            	chambre=new Chambre(chambre.getNumero(),niveau.getNiveau(), position);
            	ctrl.charger_Chambre(joueur,chambre);
            	rotate=ctrl.pointer.getRotate();
            	ctrl.pointer.setRotate(rotate+90);
            	if(chambre.getNumero()!=0) {
            		ctrl.charger_Outils(position);	
            	}
            	ctrl.charger_Info(niveau, joueur.getNom(), position);
                break;       
        }
	}



}
