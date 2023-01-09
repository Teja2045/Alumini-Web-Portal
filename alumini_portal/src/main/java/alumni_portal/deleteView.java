package alumni_portal;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
@WebServlet("/del")
public class deleteView extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = request.getParameter("delete");
		System.out.println(s+"hello"+s+"hello");
		Connection con;
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
			PreparedStatement st = con.prepareStatement("delete from alumini_table where U_id=?");
			st.setString(1,s);
			System.out.println(st.executeUpdate());
			st = con.prepareStatement("delete from student where U_id=?");
			st.setString(1,s);
			System.out.println(st.executeUpdate());
			st.close();
			con.close();
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.include(request,response);
		}
		catch (SQLException e) {
			e.printStackTrace();
	}

}}
