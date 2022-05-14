package DB;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class DB_Connection {
	 String URL = "jdbc:mysql://localhost:3306/project_schema?useSSL=false";
	 String USERNAME= "root"; // use your username of Mysql server
	 String PASSWORD ="mysql123"; // use your password of Mysql server
	 Connection connection = null;
	 String sqlQuery = "";
     PreparedStatement preparedStmt= null;
     ResultSet resultSet= null;
    
	 public DB_Connection(){
		 try{
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    
		    connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
		 }catch(SQLException e){
		 } catch (ClassNotFoundException ex) {
		 Logger.getLogger(DB_Connection.class.getName()).log(Level.SEVERE, null, ex);
		 }
	}
	 
		public boolean addUser(int ID, String user, String phone, String email,String pass) {

			 sqlQuery = "insert into users(ID,username,phone,email,password)values('" + ID +
			      "','" + user+ "','" + phone + "','" + email+ "','" + pass +"');";
			 
			 try{

			    Statement stmt = connection.createStatement();
			    stmt.execute(sqlQuery);

			 }
			 catch(Exception e){
			     //System.out.print(e);
			     e.printStackTrace();
			     return false;
			 }
			 return true;
		 }
}
