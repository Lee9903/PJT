package TT;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class BoardDAO {
	public static BoardDTO readDB(int bno) {
		BoardDTO board = new BoardDTO();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from tbl_board where bno =?";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setInt(1, bno);
			rs = ps.executeQuery();
				if(rs.next()) {
					board.setBno(rs.getInt("bno"));
					board.setTitle(rs.getString("title"));
					String content = rs.getString("content");
					board.setContent(content);
					board.setWriter(rs.getString("writer"));
					board.setRegdate(rs.getDate("regdate"));
					board.setUpdatedate(rs.getDate("updatedate"));
				}
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, rs);
		}
		return board;
	}
	public static List<BoardDTO> readDBList(int pageNo){
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int pageLine = 5;
		int end = pageNo* pageLine;
		int start = end - pageLine + 1;
		String sql = "select b. * from "
				    +"(select rownum rn, a. * from "
				    +"(select * from tbl_board order by bno desc)a"
				    +")b"
				    +" where b.rn between " + start + " and " +end;
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setBno(rs.getInt("bno"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setRegdate(rs.getDate("regdate"));
				board.setUpdatedate(rs.getDate("updatedate"));
				list.add(board);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
		
	}
	public static int totalCnt() {
		int cnt = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select count(bno) from tbl_board";
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
	public static int maxCnt() {
		int cnt = 0;
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select max(bno) from tbl_board";
		
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
	public static int insertDB(BoardDTO board) {
		int result = -1;
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "insert into tbl_board (bno, title, content, writer)"
					+ "values(?,?,?,?)";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setInt(1, board.getBno());
			ps.setString(2, board.getTitle());
			ps.setString(3, board.getContent());
			ps.setString(4, board.getWriter());
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
	public static int deleteDB(int bno) {
		int result = -1;
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "delete tbl_board where bno=?";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setInt(1, bno);
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
	public static int updateDB(BoardDTO board) {
		int result = -1;
		Connection con = null;
		PreparedStatement ps = null;
		
		String sql = "update tbl_board set title=?, content=?,"
					+"updatedate=sysdate where bno=?";
		try {
			con=DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getTitle());
			ps.setString(2, board.getContent());
			ps.setInt(3, board.getBno());
			ps.executeUpdate();
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBCon.close(con, ps, null);
		}
		return result;
	}
}
