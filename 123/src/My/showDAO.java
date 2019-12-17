package My;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class showDAO {
	
	
	public static showDTO readDB(int sno) {
		showDTO show = new showDTO();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from ranking natural join menuimg natural join storeintro where sno =?";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setLong(1, sno);
			rs = ps.executeQuery();
				if(rs.next()) {
					show.setSno(rs.getInt("sno"));
					show.setImg(rs.getString("img"));
					show.setIname(rs.getString("iname"));
					show.setLocation(rs.getString("location"));
					show.setReview(rs.getString("review"));
					show.setStar(rs.getString("star"));
					show.setMenu1(rs.getString("menu1"));
					show.setMenu2(rs.getString("menu2"));
					show.setMenu3(rs.getString("menu3"));
					show.setMenu4(rs.getString("menu4"));
					show.setMenu5(rs.getString("menu5"));
					show.setIntro1(rs.getString("intro1"));
					show.setIntro2(rs.getString("intro2"));
					show.setIntro3(rs.getString("intro3"));
					show.setIntro4(rs.getString("intro4"));
					show.setIntro5(rs.getString("intro5"));
				}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, rs);
		}
		return show;
		
	}
	public static List<showDTO> readDBList(int pageno){
		List<showDTO> list = new ArrayList<showDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int pageline = 5;
		int end =pageno * pageline;
		int start = end - pageline +1;
		String sql = "select b. * from"
					+"(select rownum rn, a. * from "
					+"(select * from ranking order by star desc)a"
					+")b"
					+" where b.rn between " + start + " and " +end;
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				showDTO show = new showDTO();
				show.setSno(rs.getInt("sno"));
				show.setImg(rs.getString("img"));
				show.setIname(rs.getString("iname"));
				show.setLocation(rs.getString("location"));
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
	public static int totalcnt() {
		int cnt = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select count(sno) from ranking";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt(1);
			}else {
				cnt=0;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, rs);
		}
		return cnt;
		
	}
	public static int maxcnt() {
		int cnt = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select max(sno) from ranking";
		
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, rs);
		}
		return cnt;
		
	}
}
