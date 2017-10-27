package service;

import dao.LoginInstituteDAO;

public class InstituteLogin {//Thai gyu :)
	public Boolean validate(String username,String password){
		LoginInstituteDAO li = new LoginInstituteDAO();
		String databasePassword = li.getPassword(username);
		if(databasePassword.equals(password)){
			return true;
		}else{
			return false;
		}
	}
}
