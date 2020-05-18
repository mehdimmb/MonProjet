/* Auteur: MOHAMMED BENNIS
 * c'est le modède qui décrit la Connection avec la base de données et contient ses différents attributs et méthodes
 * les méthodes sont static pour que le controleur peut accéder directement 
 * **/
package application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.json.JSONObject;

public class SqlConnection {
	public static Connection conn=null; 
	static Statement stmt;
	public SqlConnection() {
		con();
	}
	//méthode pérmetante la connection avec la base de données si possible
	//si non si il y a un problème lié au driver il génère une Exception de type CLassNotFound
	//si non si le problème lié à SQL il génère une Exception de type SQLException 
	public static boolean con() {
		try{   Class.forName("org.mariadb.jdbc.Driver");
				conn=(Connection) DriverManager.getConnection("jdbc:mariadb://dwarves.iut-fbleau.fr/bennis","bennis","bennis");
				System.out.println("Connection réussite");
				return true;
		}catch(ClassNotFoundException e){
					System.out.println("Connection échoué"+e);
					return false;
		}catch(SQLException sqle){
					System.out.println("Erreur sql: "+sqle);
					return false;
     }
	}
	//pour charger les informations d'une chambre selon le niveau
	//si possible, si non il génère une Exception de type SQLException
	public static Chambre getChambre(int niveau) throws SQLException{
		  Chambre ch=null;
		  stmt = (Statement) conn.createStatement();
	      String sql = "SELECT * FROM Chambre where num='"+niveau+"'";
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()){
	         int num = rs.getInt("num");
	         String couleur = rs.getString("couleur");
	         ch=new Chambre(num,couleur);
	      }
	      return ch;
	      
	} 
	//pour charger un ArrayListe de type Outil correspendant à un niveau
	//si possible, si non il génère une Exception de type SQLException
	public static ArrayList<Outil> getOutils(int niveau) throws SQLException{
		Outil out;
		ArrayList<Outil> al=new ArrayList<Outil>();
		stmt = (Statement) conn.createStatement();
	      String sql = "SELECT * FROM Outil where niveau='"+niveau+"'";
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()){
	         int num = rs.getInt("num");
	         String nom = rs.getString("nom");
	         out=new Outil(num);
	         al.add(out);
	      }
		return al;
	}
	//pour charger les informations d'un niveau
	//si possible, si non il génère une Exception de type SQLException
	public static Niveau getNiveau(int num) throws SQLException{
		  Niveau nv=new Niveau();
		  stmt = (Statement) conn.createStatement();
	      String sql = "SELECT * FROM niveau where num='"+num+"'";
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()){
	         String libellé = rs.getString("libelle");
	         nv=new Niveau(num,libellé);
	      }
	      return nv;	      
	}
	//pour charger les informations d'un joueur selon son numéro
	//si possible, si non il génère une Exception de type SQLException
	public static Joueur getJoueur(int num) throws SQLException {
		Joueur jr=null;
		 stmt = (Statement) conn.createStatement();
	      String sql = "SELECT * FROM joueur where num='"+num+"'";
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()){
	         String nom = rs.getString("nom");
	         int niveau = rs.getInt("niveau");
	         int position = rs.getInt("position");
	         jr=new Joueur(num,nom, niveau, new Cartable(), position);
	      }
		return jr;
	}
	//pour supprimer l'enregistrement d'un joueur
	//si possible, si non il génère une Exception de type SQLException
	public static boolean supprimer_partie(Joueur joueur){
	      String sql = "DELETE FROM Joueur where num='"+joueur.getNumero()+"'";
	      try {
	    	  stmt = (Statement) conn.createStatement();
	    	  stmt.executeUpdate(sql);
	    	  return true;
	      }catch(SQLException sqle) {
	    	  System.out.println(sqle.toString());
	    	  return false; 
	      }	
	}
	//pour enregistrer l'état du jeu d'un joueur
	//si possible, si non il génère une Exception de type SQLException
	public static boolean enregistrer_partie(Joueur joueur,String outils,String p_ouvertes,int numChambre,int numJoueur){
	      String sql ="UPDATE `joueur` SET `position`='"+joueur.getPosition()+"' ,`nom`=\""+joueur.getNom()+"\", `niveau`='"+joueur.getNiveau()+"', `outils`=\""+outils+"\", `p_ouvertes`=\""+p_ouvertes+"\", chambre='"+numChambre+"' WHERE num="+numJoueur+"";
	      try {
	    	  stmt = (Statement) conn.createStatement();
	    	  stmt.executeUpdate(sql);
	    	  return true;
	      }catch(SQLException sqle) {
	    	  System.out.println(sqle.toString());
	    	  return false; 
	      }	
	}
	//fonction qui reprendre les outils et les états des portes sous forme JSON d'après la bdd
	public static ArrayList<JSONObject> getPorte_Outils(int numJoueur) throws SQLException {
		ArrayList<JSONObject> arl=new ArrayList<JSONObject>();
		 stmt = (Statement) conn.createStatement();
	      String sql = "SELECT * FROM joueur where num='"+numJoueur+"'";
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()){
	         arl.add(new JSONObject(rs.getString("outils")));
	         arl.add(new JSONObject(rs.getString("p_ouvertes")));
	      }
		return arl;
	}
	public static int Nchambre(int numJoueur) throws SQLException {
		 int num_chambre=0;
		 stmt = (Statement) conn.createStatement();
	      String sql = "SELECT chambre FROM joueur where num='"+numJoueur+"'";
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()){
	         num_chambre=rs.getInt(1);
	      }
		return num_chambre;
	}
	
}
