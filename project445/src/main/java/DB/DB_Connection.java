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
	 
		public boolean addUser(String user, String phone, String email,String pass) {
         
			 sqlQuery = "insert into users(username,phone,email,password, role)values((?,?,?,?)";
			 
			 try{

				 preparedStmt = connection.prepareStatement(sqlQuery);
				 preparedStmt.setString(1,user);
				 preparedStmt.setString(2, phone);
				 preparedStmt.setString(3, email);
				 preparedStmt.setString(4, pass);
				 resultSet = preparedStmt.executeQuery();

			 }
			 catch(Exception e){
			     //System.out.print(e);
			     e.printStackTrace();
			     return false;
			 }
			 return true;
		 }
		
		public boolean addBook(int ID, String title, String author, int price,String category) {

			 sqlQuery = "insert into books(ID,title,author,price,category) values(?,?,?,?,?)";
			 
			 try{

				 preparedStmt = connection.prepareStatement(sqlQuery);
				 preparedStmt.setInt(1,ID);
				 preparedStmt.setString(2, title);
				 preparedStmt.setString(3, author);
				 preparedStmt.setInt(4, price);
				 preparedStmt.setString(5, category);
				 resultSet = preparedStmt.executeQuery();

			 }
			 catch(Exception e){
			     //System.out.print(e);
			     e.printStackTrace();
			     return false;
			 }
			 return true;
		 }
		
		public boolean addOrder(int ID, String country, String city, String address,String card) {

			 sqlQuery = "insert into order(ID,country,city,address,category)values(?,?,?,?,?)";
			 
			 try{

				 preparedStmt = connection.prepareStatement(sqlQuery);
				 preparedStmt.setInt(1,ID);
				 preparedStmt.setString(2, country);
				 preparedStmt.setString(3, city);
				 preparedStmt.setString(4, address);
				 preparedStmt.setString(5, card);
				 resultSet = preparedStmt.executeQuery();

			 }
			 catch(Exception e){
			     //System.out.print(e);
			     e.printStackTrace();
			     return false;
			 }
			 return true;
		 }
		
		public ResultSet getUsers() {
			 sqlQuery = "SELECT * FROM users;";
		    try{
			    preparedStmt = connection.prepareStatement(sqlQuery);
			    resultSet = preparedStmt.executeQuery();
			 }catch(SQLException e){}
			 return resultSet;
			 }
		
		public ResultSet getUser(int ID) {
			 sqlQuery = "SELECT * FROM users WHERE ID= " + ID;
			 try{
				 preparedStmt = connection.prepareStatement(sqlQuery);
				 resultSet = preparedStmt.executeQuery();

			 }catch(SQLException e){
				 System.out.println(e);
			}
				 return resultSet;
		}
		
		public int deleteBook(String title) {
			 sqlQuery = "Delete from books WHERE title = " + title;
			 int i=0;
			 try{
			     preparedStmt = connection.prepareStatement(sqlQuery);
			     i = preparedStmt.executeUpdate();
			 }
			 catch(SQLException e){
			     System.out.print(e);
			     e.printStackTrace();
			 }

			 return i;
		}
		
		public void close(){
			try {
			 connection.close();
			} catch (SQLException ex) {
			 Logger.getLogger(DB_Connection.class.getName()).log(Level.SEVERE, null, ex);
			 }
		}
		
		public ResultSet getUserAccess(String user, String pass) {
			 sqlQuery = "SELECT * FROM users WHERE username= ?,and password= ?";
			 try{
				 preparedStmt = connection.prepareStatement(sqlQuery);
				 preparedStmt.setString(1,user);
				 preparedStmt.setString(2, pass);
				 resultSet = preparedStmt.executeQuery();

			 }catch(SQLException e){
				 System.out.println(e);
			}
				 return resultSet;
		}
		
		
}
