package alumni_portal;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
@WebServlet("/confirm")
public class confirmCheck extends HttpServlet {
	
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String id = request.getParameter("u_id");
		HttpSession session = request.getSession();
		session.setAttribute("con","true");
	    
		try {
			if(confirmDao.confirmCse(id))
					{
						if(!confirmDao.confirm(id))
						{			
							RequestDispatcher rd = request.getRequestDispatcher("registration.jsp?id="+id);
							rd.include(request,response);
						}
						else
						{
							session.setAttribute("con","false");
							RequestDispatcher rd = request.getRequestDispatcher("confirm.jsp");
							rd.include(request, response);
						}
					}
			else
			{
				session.setAttribute("con","csefalse");
				RequestDispatcher rd = request.getRequestDispatcher("confirm.jsp");
				rd.include(request, response);
			}
		} catch (SQLException | ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
