package alumni_portal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FormDao {
	
	public static void check() throws SQLException
	{
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
		PreparedStatement st = con.prepareStatement("insert into student values('B11','ass')");
		int n = st.executeUpdate();
		System.out.println(n);
	}
	
	public static void dataInsert(String id, String pd, String f_name, String l_name, String email, String phone, String g, String date, String poy, String category, String designation, int pack, String lk, String twitter, String insta, String fb, String im, String q1, String q2, String q3, String s1, String s2, String s3) throws SQLException
	{
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
		PreparedStatement st = con.prepareStatement("insert into alumini_table values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		st.setString(1,id);
		st.setString(2,pd);
		st.setString(3,f_name);
		st.setString(4,l_name);
		st.setString(5,email);
		st.setString(6,phone);
		st.setNString(7,g);
		st.setString(8,date);
		st.setString(9,poy);
		st.setString(10,category);
		st.setString(11,designation);
		st.setInt(12,pack);
		st.setString(13,lk);
		st.setString(14,twitter);
		st.setString(15,insta);
		st.setString(16,fb);
		st.setString(17, im);
		st.executeUpdate();
		st = con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?)");
		st.setString(1,id);
		st.setString(2,pd);
		st.setString(3,q1);
		st.setString(4,q2);
		st.setString(5,q3);
		st.setString(6,s1);
		st.setString(7,s2);
		st.setString(8,s3);
		st.executeUpdate();
		st.close();
		con.close();
	}
	
	/*public void check() throws SQLException
	{
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
		PreparedStatement st = con.prepareStatement("select * from alumini_table");
	}*/

}
