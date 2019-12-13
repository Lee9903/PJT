package My;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBCon {
	public static Connection getCon() throws Exception{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		return con;
	}
	public static void close(java.sql.Connection con,PreparedStatement ps, ResultSet rs) {
		if(rs!=null) {
			try {
				rs.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(ps!=null) {
			try {ps.close();}catch(Exception e) {e.printStackTrace();}
		}
		if(con!=null) {
			try {con.close();}catch(Exception e) {e.printStackTrace();}
		}
	}
}
