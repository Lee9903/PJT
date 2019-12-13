package My;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class showDAO {
	public static List<showDTO> readDBList(int pageno) {
		List<showDTO> list = new ArrayList<showDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int pageLine = 5;
		int end = pageno * pageLine;
		int start = end - pageLine + 1;
		
		String sql = "select b. * from" 
				+"(select rownum rn, a. * from " 
				+"(select * from ranking order by star desc)a"
				+")b"
				+"where b.rn between " + start + " and " +end;
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
				while(rs.next()) {
					showDTO show = new showDTO();
					show.setImg(rs.getString("img"));
					show.setIname(rs.getString("iname"));
					show.setLocation(rs.getString("logation"));
					show.setReview(rs.getString("review"));
					show.setStar(rs.getString("star"));
					list.add(show);
				}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
}
