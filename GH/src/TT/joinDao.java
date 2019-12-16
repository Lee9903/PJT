package TT;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



public class joinDao {
	
	public static JoinDto readDB(String userid) {
		JoinDto user = new JoinDto();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from memberinfo where id = ?";
		//select * from userinfo where id = ?
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();
			if(rs.next()) {
				user.setName(rs.getString("name"));
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				user.setTel(rs.getString("tel"));
				user.setJob(rs.getString("job"));
				user.setGender(rs.getString("gender"));
				user.setHobby(rs.getString("hobby"));
				user.setIntro(rs.getString("intro"));
			}else {
				user.setId(null);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, rs);
		}
		return user;
	}
	public static List<JoinDto> readDBList(){
		List<JoinDto> list = new ArrayList<JoinDto>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from memberinfo"; // select * from userinfo
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				JoinDto user = new JoinDto();
				user.setName(rs.getString("name"));
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				user.setTel(rs.getString("tel"));
				user.setJob(rs.getString("job"));
				user.setGender(rs.getString("gender"));
				int gender = rs.getInt("gender");
				if(gender==(1)) {
					user.setGender("남자");
				}else {
					user.setGender("여자");
				}
				user.setHobby(rs.getString("hobby"));
				user.setIntro(rs.getString("intro"));
				list.add(user);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	public static int insertDB(JoinDto user) {
		int result = -1;
		Connection con = null;
		PreparedStatement ps = null;
		String query = "insert into memberinfo"// userinfo
					   +"(id,name,password,tel,job,gender,hobby,intro)"
					   + "values(?,?,?,?,?,?,?,?)";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(query);
			ps.setString(1, user.getId());
			ps.setString(2, user.getName());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getTel());
			ps.setString(5, user.getJob());
			ps.setString(6, user.getGender());
			ps.setString(7, user.getHobby());
			ps.setString(8, user.getIntro());
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
	public static int deleteDB(String userid) {
		int result = -1;
		
		Connection con = null;
		PreparedStatement ps = null;
		
		String sql = "delete memberinfo where id=?";// userinfo
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, userid);
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
	public static int updateDB(JoinDto user) {
		int result = -1;
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "update memberinfo set name=?, password=?, tel=?, job=?,hobby=? where id=?";
			// userinfo
		//String sql = "update userinfo set name = ? where id = ?";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getTel());
			ps.setString(4, user.getJob());
			ps.setString(5, user.getHobby());
			ps.setString(6, user.getId());
			
			//ps.setString(2, user.getId());
		
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
}
	/*public static int updateDB2() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int r = 0;
		String sql = "update userinfo set name = '444' where id = 'test'";
		
		try {
			con = DBCon.getCon();
			pstmt = con.prepareStatement(sql);
			r = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBCon.close(con, pstmt, rs);
		}
		
		return r;
	}
}*/

