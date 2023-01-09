package alumni_portal;

import java.sql.*;

public class LoginDao {
	public static boolean validate(String id, String p) throws SQLException
	{
		 boolean status=false;
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
				PreparedStatement st = con.prepareStatement("select * from student where U_id=? and U_psd=?");
				st.setString(1,id);
				st.setString(2,p);
				ResultSet rs = st.executeQuery();
				status = rs.next();
				con.close();
				return status;
			}
			
	}

class adminDao {
	public static boolean validate(String id, String p) throws SQLException
	{
		 boolean status=false;
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
				PreparedStatement st = con.prepareStatement("select * from admn where U_id=? and psd=?");
				st.setString(1,id);
				st.setString(2,p);
				ResultSet rs = st.executeQuery();
				status = rs.next();
				con.close();
				return status;
			}
			
	}

