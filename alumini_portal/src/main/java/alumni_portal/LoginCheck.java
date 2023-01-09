package alumni_portal;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import alumni_portal.LoginDao;

@SuppressWarnings("serial")
@WebServlet("/log")
public class LoginCheck extends HttpServlet 
{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		String id = request.getParameter("u_id");
		String p = request.getParameter("password");
		HttpSession session = request.getSession();
		session.setAttribute("check","true");
	    
		try {
			
			if(adminDao.validate(id, p))
			{
				session.setAttribute("sess","admin");
				RequestDispatcher rd = request.getRequestDispatcher("/loginsuccess.jsp");
				rd.include(request,response);
			}
			
			else if(LoginDao.validate(id, p))
			{
				session.setAttribute("sess",id);
				RequestDispatcher rd = request.getRequestDispatcher("/loginsuccess.jsp");
				rd.include(request,response);
			}
			else
			{
				session.setAttribute("check","false");
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.include(request, response);
			}
		} catch (SQLException | ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
