package alumni_portal;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mysql.cj.xdevapi.Statement;


@SuppressWarnings("serial")
@WebServlet("/up")
@MultipartConfig
public class UpdateProfile extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		String pa = (String)session.getAttribute("q");
		String im=pa;
		System.out.println(pa);
		session.removeAttribute("q");
		Part file = request.getPart("image");
        String imageFileName = file.getSubmittedFileName();
        String uploadPath = "C:/Users/User/eclipse-workspace/alumini_portal/src/main/webapp/"+pa;
        if(imageFileName.length()>3)
        {
        	System.out.println("hi"+imageFileName);
        	uploadPath = "C:/Users/User/eclipse-workspace/alumini_portal/src/main/webapp/images/"+imageFileName;
        	im = "images/"+imageFileName;
        }
        
        try {
        	FileOutputStream fos = new FileOutputStream(uploadPath);
        	InputStream is = file.getInputStream();
        	
        	byte []data = new byte[is.available()];
        	is.read(data);
        	fos.write(data);
        	fos.close();
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
        
		String a,b,c,d,e,f,g=null,h,i,j,k,m,n,o,p;
		int l;
		a = request.getParameter("U_id");
		System.out.println(a);
		b = request.getParameter("U_pswd");
		c = request.getParameter("f_name");
		d = request.getParameter("l_name");
		e = request.getParameter("email");
		f = request.getParameter("Mob_num");
		if(request.getParameter("gender").matches("Male"))
			g="male";
		else if(request.getParameter("gender").matches("Female"))
			g="female";
		else if(request.getParameter("gender").matches("Other"))
			g="others";
		h = request.getParameter("dob");
		i = request.getParameter("y");
		j = request.getParameter("company");
		k = request.getParameter("ds");
		l = Integer.parseInt(request.getParameter("pk"));
		m = request.getParameter("lk");
		n = request.getParameter("tr");
		o = request.getParameter("ins");
		p = request.getParameter("fb");
		
		String q1 = request.getParameter("q1");
		String q2 = request.getParameter("q2");
		String q3 = request.getParameter("q3");
		String s1 = request.getParameter("s1");
		String s2 = request.getParameter("s2");
		String s3 = request.getParameter("s3");
		
		
			
		
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
			PreparedStatement st = con.prepareStatement("delete from alumini_table where U_id=?");
			st.setString(1,a);
			st.executeUpdate();
			st = con.prepareStatement("delete from student where U_id=?");
			st.setString(1,a);
			st.executeUpdate();
			FormDao.dataInsert(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, im,q1,q2,q3,s1,s2,s3);
		} catch (SQLException e1) {
		}
		response.sendRedirect("updatesuccessful.jsp");
		
            
           
	}

	

}
