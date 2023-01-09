package alumni_portal;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
@WebServlet("/getpassword")
public class GetPassword extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String s = request.getParameter("name");
		String a1 = request.getParameter("s1");
		String a2 = request.getParameter("s2");
		String a3 = request.getParameter("s3");
		HttpSession session = request.getSession();
		session.setAttribute("questions","true");
		Connection con;
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
			 PreparedStatement st = con.prepareStatement("select * from student where U_id=?");
			    st.setString(1,s);
				ResultSet rs = st.executeQuery();
				rs.next();
				if(a1.equals(rs.getString(6))&&a2.equals(rs.getString(7))&&a3.equals(rs.getString(8)))
				{
					request.setAttribute("pas",rs.getString(2));
					RequestDispatcher rd = request.getRequestDispatcher("showpass.jsp");
					rd.include(request, response);
				}
				else
				{  System.out.println("questins check");
					session.setAttribute("questions","false");
					RequestDispatcher rd = request.getRequestDispatcher("question.jsp?U_id="+s);
					rd.include(request, response);
				}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
