/**
 * Auteur: MOHAMMED BENNIS
 * c'est le Contr�leur g�neral qui contr�le toute l'application et les diff�rents interactions entre ses composants
 * **/
package application;
	
import java.io.IOException;

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
	private int position,niveau;
	private Joueur joueur;
	private Chambre chambre;
	@Override
	public void start(Stage primaryStage) {
		try {
			afficher(primaryStage,"Accueil.fxml");//Chargement du premi�re interface_graphique; Accueil.fxml		
		} catch(Exception e) {
			e.printStackTrace();
			}
	}
	
	public static void main(String[] args) {
		launch(args);
	}
	//La fonction qui permet de naviguer entre les diff�rentes interfaces_graphiques 
	public void afficher(Stage primaryStage,String view) throws IOException {
		loader=new FXMLLoader();
		loader.setLocation(MainController.class.getResource(view));
		root= (AnchorPane) loader.load();
		scene = new Scene(root,800,500);
		scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
		if(view=="Jeu.fxml") {
			scene.setOnKeyPressed(this);
			ctrl=(ControleurJeu) loader.getController();
			position=1;
			niveau=1;
			joueur=new Joueur("Mohammed", niveau, new Cartable(), position, false);
			chambre=new Chambre(niveau, position);
			ctrl.charger_Chambre(joueur,chambre);
			ctrl.init_Outils(niveau);
			ctrl.charger_Outlis(niveau, position);
			ctrl.charger_Info("", joueur.getNom(), position, niveau);
			
		}
		primaryStage.setTitle("Jeu de M.BENNIS");
		primaryStage.getIcons().add(new Image("/Bibiolt�que/iconapp.png"));
		primaryStage.setScene(scene);
		primaryStage.show();
		
	}
    //cette fonction permet de lire la touche clavier appuy�e par le joueur 
	@Override
	public void handle(KeyEvent event) {
		// TODO Auto-generated method stub
		switch(event.getCode().toString()) 
        { 
            case "UP"://le cas du touche fl�che pointante vers le haut le joeuer va passer � l'autre chambre si il a atteint l'objectif 
            	if(joueur.getNiveau()<3) {
            		if(joueur.avancer()) {//joueur.avancer retourne une valeur boolean, si il a atteint l'objectif retourne true sinon retourne false
            			niveau=joueur.getNiveau();//actualiser le niveau (au niveau suivant)
                		position=1;  //intialiser la position/direction � la direction initial          		
                		joueur.setPorte_ouverte(false);
                		joueur.setPosition(position);
                		chambre=new Chambre(niveau, position);
                    	ctrl.charger_Chambre(joueur,chambre);
                    	ctrl.init_Outils(niveau);
                    	ctrl.charger_Outlis(niveau, position);
                    	ctrl.charger_Info("", joueur.getNom(), position, niveau);
            		}
            		else {
            			ctrl.avertissement.setText(joueur.getMessage());
            		}
            		
            	}
            	else {
            		ctrl.avertissement.setText("F�licitation vous avez atteint tout les objectif, Bravo! ");
            	}
            		
            	break; 
            case "DOWN": 
                //pour reculer
                break; 
            case "R": //le cas R pour ramasser un objet; pour ramasser un outil le joueur doit etre face � ce dernier
            	if(ctrl.outil_face_joueur.isRamass�()) {
            		ctrl.avertissement.setText("pas d'outil face � vous");
            	}
            	else {
            		int cpt=0;
            		int index=1;
            		Outil o=new Outil();
            		for(Outil outil_actuel : ctrl.outils) {
            			if(ctrl.outil_face_joueur.getNumero()==outil_actuel.getNumero()) {
            				index=cpt;
            			}
            			cpt++;
            		}
            		joueur.ramasser(ctrl.outils.get(index));
            		ctrl.outils.set(index,o);
            		cpt=0;
            		for(Outil outil_actuel : ctrl.outils) {
            			if(outil_actuel.isRamass�()) {
            				cpt++;
            			}
            		}
            		if(cpt>3) {//si le joueur a ramass� tous les objets situ� dans la chambre actuel la porte sera ouverte pour passer au niveau suivant
            			joueur.setPorte_ouverte(true);
            		}
            		ctrl.charger_Outlis(niveau, position);//charger les nouveaux outils correspondants au nouveau niveau
                	ctrl.charger_Chambre(joueur,chambre);//charger la nouvelle chambre correspondante au nouveau niveau
            	}
                break;
            case "LEFT": //la touche fl�che pointante � gauche; la position/direction doit se changer ce qui implique le rechargement de la chambre et les outils pour s'adapter avec le nouveau angle  
            	joueur.tourneGauche();
            	position=joueur.getPosition();
            	chambre=new Chambre(niveau, position);
            	ctrl.charger_Chambre(joueur,chambre);
            	ctrl.charger_Outlis(niveau, position);
            	ctrl.charger_Info("", joueur.getNom(), position, niveau);
                break;
            case "RIGHT"://la touche fl�che pointante � droite; la position/direction doit se changer ce qui implique le rechargement de la chambre et les outils pour s'adapter avec le nouveau angle
            	joueur.tourneDroite();
            	position=joueur.getPosition();
            	chambre=new Chambre(niveau, position);
            	ctrl.charger_Chambre(joueur,chambre);
            	ctrl.charger_Outlis(niveau, position);
            	ctrl.charger_Info("", joueur.getNom(), position, niveau);
                break;       
        }
	}



}
