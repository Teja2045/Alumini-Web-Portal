package alumni_portal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class confirmDao {
	
	public static boolean confirm(String id) throws SQLException
	{
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
	    PreparedStatement st = con.prepareStatement("select * from alumini_table where U_id=?");
	    st.setString(1,id);
		ResultSet rs = st.executeQuery();
		
		return rs.next();
	}
	
	public static boolean confirmCse(String id) throws SQLException
	{
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
	    PreparedStatement st = con.prepareStatement("select * from cse where U_id=?");
	    st.setString(1,id);
		ResultSet rs = st.executeQuery();
		
		return rs.next();
	}

}
