package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginInstituteDAO {

	public String getPassword(String username){
		
		String URL = "jdbc:mysql://127.0.0.1:3306/unnati";
	    String USER = "root";
	    String PASS = "root";
	    
	    Connection conn;
	    
	    try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
	    
	    try {
			conn = DriverManager.getConnection(URL, USER, PASS);
    		Statement stmt = conn.createStatement(); 
			ResultSet rs = stmt.executeQuery("SELECT password FROM institute WHERE username = '" + username + "'");
			rs.next();
			String password = rs.getString("password");
			if(password != null){
				return password;
			}else{
				return "null";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	    return "null";
	}
}
