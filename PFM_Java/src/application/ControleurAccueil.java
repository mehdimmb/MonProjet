/**
 * Auteur: MOHAMMED BENNIS
 * c'est le Contrôleur de l'interface graphique Accueil
 * **/
package application;

import java.io.IOException;

import com.jfoenix.controls.JFXButton;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;

public class ControleurAccueil implements EventHandler<KeyEvent>{
	@FXML
	private JFXButton n_partie=new JFXButton();
	@FXML
	private JFXButton continuer=new JFXButton();
	@FXML
	private JFXButton quitter=new JFXButton();
	private MainController mn=null;
	public ControleurAccueil() {
		// TODO Auto-generated constructor stub	
	}
	@FXML //fonction quitter pour fermer l'application lié au clique sur le bouton quitter
	private void quitter() {
		Stage stage = (Stage) quitter.getScene().getWindow();
		stage.close();
	}
	@FXML //fonction nouvelle partie pour initialiser une partie, lié au clique sur le bouton Nouvelle partie
	private void n_partie() throws IOException{
		Stage stage=(Stage) n_partie.getScene().getWindow();
		mn=new MainController();
		mn.afficher(stage,"Jeu.fxml");//L'instruction pour charger l'interface graphique où se déroule le jeu
	}
	@Override 
	public void handle(KeyEvent event) {
		// TODO Auto-generated method stub
	}
}
