/**
 * Auteur: MOHAMMED BENNIS
 * c'est le Contrôleur de l'interface graphique Accueil
 * **/
package application;

import java.io.IOException;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextField;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;

public class ControleurAccueil implements EventHandler<KeyEvent>{
	@FXML
	private JFXButton n_partie=new JFXButton();
	@FXML
	private JFXButton continuer=new JFXButton();
	@FXML
	private JFXButton quitter=new JFXButton();
	@FXML
	public JFXButton commencer=new JFXButton();
	@FXML
	public JFXTextField nomj=new JFXTextField();
	@FXML
	public Label avertissement=new Label();
	private MainController mn=null;
	public ControleurAccueil() {
		// TODO Auto-generated constructor stub	
	}
	@FXML //fonction quitter pour fermer l'application lié au clique sur le bouton quitter
	private void quitter() {
		Stage stage = (Stage) quitter.getScene().getWindow();
		stage.close();
	}
	@FXML //fonction qui permet d'afficher le champs de saisie et cacher le bouton continuer
		 //cette fonction lié au événement clique sur le bouton "Nouvele partie"
	private void n_partie() throws IOException{
		nomj.setVisible(true);
		commencer.setVisible(true);
		n_partie.setVisible(false);
		continuer.setVisible(false);
		}
	@FXML //fonction continuer pour reprendre une partie enregistrer 
	private void continuer() throws IOException{
		Stage stage=(Stage) n_partie.getScene().getWindow();
		mn=new MainController();
		mn.continuer=true;
		mn.afficher(stage,"Jeu.fxml");//L'instruction pour charger l'interface graphique où se déroule le jeu
	}
	@FXML //fonction commencer pour verifier les données siasit et initialiser une nouvelle partie, 
		 //lié au clique sur le bouton Commencer
	private void commencer() throws IOException{
		if(nomj.getText().length()<4) {
			avertissement.setVisible(true);
			avertissement.setText("Veuillez saisir un nom valide");
		}else {
			Stage stage=(Stage) n_partie.getScene().getWindow();
			mn=new MainController();
			mn.nomjoueur=nomj.getText().toString();
			mn.afficher(stage,"Jeu.fxml");//L'instruction pour charger l'interface graphique où se déroule le jeu		
		}
				
	}
	@Override 
	public void handle(KeyEvent event) {
		// TODO Auto-generated method stub
	}
}
