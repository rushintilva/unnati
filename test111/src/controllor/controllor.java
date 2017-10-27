package controllor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.InstituteLogin;


@WebServlet("/controllor")
public class controllor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public controllor() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username;
		String password;
		
		String index = request.getParameter("index");
		
		if("CompanyLogin".equals(index)){
			username = request.getParameter("username");
			password = request.getParameter("password");
			
		}else if("InstituteLogin".equals(index)){
			username = request.getParameter("username");
			password = request.getParameter("password");
			InstituteLogin il = new InstituteLogin();
			Boolean aut = il.validate(username, password);
			if(aut == true){
				RequestDispatcher dispatch = request.getRequestDispatcher("/SuccessPage.jsp");
				dispatch.forward(request, response);
			}else{
				RequestDispatcher dispatch = request.getRequestDispatcher("/ErrorPage.jsp");
				dispatch.forward(request, response);
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
