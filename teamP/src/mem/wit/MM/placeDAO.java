package mem.wit.MM;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import mem.wit.MM.placeDTO;

import mem.wit.MM.DbClose;
import mem.wit.MM.DbSet;

import mem.wit.MM.placeDAO;

public class placeDAO {
	Connection conn = null;
	PreparedStatement pstmt, pstmt1;
	ResultSet rs;
	String sql, sql1;
	int result = 0;
	List borList;
	public static placeDAO getInstance() {
		placeDAO dao = new placeDAO();
		return dao;
	}
	public int placeWrite(placeDTO pDTO){
		conn = DbSet.getConnection();
		sql1 = "select max(mm_no) from mm_place";
		int num = 0;
		try {
			pstmt1 = conn.prepareStatement(sql1);
			rs = pstmt1.executeQuery();
			if (rs.next()) {
				num = rs.getInt(1) + 1;
			}
			conn.setAutoCommit(false);
			sql = "insert into mm_place values(?,?,?,?,sysdate,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, pDTO.getMm_tit());
			pstmt.setString(3, pDTO.getMid());
			pstmt.setString(4, pDTO.getMm_con());
			pstmt.setInt(5, 0);
			pstmt.setInt(6, 0);
			pstmt.setString(7, pDTO.getMm_ip());
			pstmt.setString(8, pDTO.getMm_pic());
			pstmt.setInt(9, 1);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt1, conn);
		}
		return result;
	}
}
