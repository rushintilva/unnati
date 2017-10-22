package com.nc.unnati.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.nc.unnati.dto.Login;
import com.nc.unnati.util.DBUtil;

public class LoginDAO {
	
	public boolean authenticateInstitue(Login login) {
		String query = "SELECT iti_key,password FROM institute WHERE visibility=true";
		int userName = 0;
		String password = null;
		try(Connection connection = DBUtil.getConnection()) {
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()) {
				System.out.println(login.getIti_key());
				System.out.println(rs.getString("iti_key"));
				userName = Integer.parseInt(rs.getString("iti_key"));
				password = rs.getString("password");
				if(userName == login.getIti_key() && password.equals(login.getPassword()))
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
