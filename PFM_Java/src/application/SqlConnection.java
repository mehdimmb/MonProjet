/* Auteur: MOHAMMED BENNIS
 * c'est le mod�de qui d�crit la Connection avec la base de donn�es et contient ses diff�rents attributs et m�thodes
 * les m�thodes sont static pour que le controleur peut acc�der directement 
 * **/
package application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SqlConnection {
	public static Connection conn=null; 
	static Statement stmt;
	public SqlConnection() {
		con();
	}
	//m�thode p�rmetante la connection avec la base de donn�es si possible
	//si non si il y a un probl�me li� au driver il g�n�re une Exception de type CLassNotFound
	//si non si le probl�me li� � SQL il g�n�re une Exception de type SQLException 
	public static boolean con() {
		try{   Class.forName("org.mariadb.jdbc.Driver");
				conn=(Connection) DriverManager.getConnection("jdbc:mariadb://dwarves.iut-fbleau.fr/bennis","bennis","bennis");
				System.out.println("Connection r�ussite");
				return true;
		}catch(ClassNotFoundException e){
					System.out.println("Connection �chou�"+e);
					return false;
		}catch(SQLException sqle){
					System.out.println("Erreur sql: "+sqle);
					return false;
     }
	}
	//pour charger les informations d'une chambre selon le niveau
	//si possible, si non il g�n�re une Exception de type SQLException
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
	//pour charger un ArrayListe de type Outil correspendant � un niveau
	//si possible, si non il g�n�re une Exception de type SQLException
	public static ArrayList<Outil> getOutils(int niveau) throws SQLException{
		Outil out;
		ArrayList<Outil> al=new ArrayList<Outil>();
		stmt = (Statement) conn.createStatement();
	      String sql = "SELECT * FROM Outil where niveau='"+niveau+"'";
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()){
	         int num = rs.getInt("num");
	         String nom = rs.getString("nom");
	         out=new Outil(num,niveau);
	         al.add(out);
	      }
		return al;
	}
	//pour charger les informations d'un niveau
	//si possible, si non il g�n�re une Exception de type SQLException
	public static Niveau getNiveau(int num) throws SQLException{
		  Niveau nv=new Niveau();
		  stmt = (Statement) conn.createStatement();
	      String sql = "SELECT * FROM Niveau where num='"+num+"'";
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()){
	         String libell� = rs.getString("libelle");
	         nv=new Niveau(num,libell�);
	      }
	      return nv;	      
	}
	//pour charger les informations d'un joueur selon son num�ro
	//si possible, si non il g�n�re une Exception de type SQLException
	public static Joueur getJoueur(int num) throws SQLException {
		Joueur jr=null;
		 stmt = (Statement) conn.createStatement();
	      String sql = "SELECT * FROM Joueur where num='"+num+"'";
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()){
	         String nom = rs.getString("nom");
	         int niveau = rs.getInt("niveau");
	         int position = rs.getInt("position");
	         boolean porte_ouverte = rs.getBoolean("porte_ouverte");
	         jr=new Joueur(nom, niveau, new Cartable(), position, porte_ouverte);
	      }
		return jr;
	}
	//pour supprimer l'enregistrement d'un joueur
	//si possible, si non il g�n�re une Exception de type SQLException
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
	//pour enregistrer l'�tat du jeu d'un joueur
	//si possible, si non il g�n�re une Exception de type SQLException
	public static boolean enregistrer_partie(Joueur joueur){
	      String sql ="INSERT INTO `joueur`(`num`, `nom`, `niveau`, `outil`) VALUES ("+joueur.getNumero()+",'"+joueur.getNom()+"',"+joueur.getNiveau()+","+joueur.getCartable().getOutils().toString()+")";
	      try {
	    	  stmt = (Statement) conn.createStatement();
	    	  stmt.executeUpdate(sql);
	    	  return true;
	      }catch(SQLException sqle) {
	    	  System.out.println(sqle.toString());
	    	  return false; 
	      }	
	}
}
