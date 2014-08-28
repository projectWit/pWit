package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

public class BoaDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;

	public static BoaDAO getInstance() {
		BoaDAO dao = new BoaDAO();
		return dao;
	}

	public int boaInsert(BoaDTO dto) {
		int su = 0;
		conn = DbSet.getConnection();

		try {
			String sql = "insert into BoardTable(bSeq, eId, bHeadCd, bTitle, bContent, bDate, bIp, bCnt)";
			sql += "values(Seq_boa.NEXTVAL, '10001', 2, ?, ?, sysdate, ?, 0)";

			pstmt = conn.prepareStatement(sql);

			//pstmt.setString(1, dto.geteId());
			//pstmt.setInt(2, dto.getbHeadCd());
			pstmt.setString(1, dto.getbTitle());
			pstmt.setString(2, dto.getbContent());			
			pstmt.setString(3, dto.getbIp());
			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}

	public List boaSelList() {
		conn = DbSet.getConnection();
		List<BoaDTO> dtoL = new ArrayList();
		try {
			String sql = "select bSeq, bHeadCd, bTitle, bDate, eId, bCnt from BoardTable order by bSeq desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoaDTO dto = new BoaDTO();		
				dto.setbSeq(rs.getInt(1));
				dto.setbHeadCd(rs.getInt(2));
				dto.setbTitle(rs.getString(3));
				dto.setbDate(rs.getString(4));
				dto.seteId(rs.getString(5));
				dto.setbCnt(rs.getInt(6));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public List boaSelMain(int no) {
		conn = DbSet.getConnection();
		List<BoaDTO> dtoL = new ArrayList();
		try {
			String sql = "select bSeq, eId, bTitle, bHeadCd, bContent from BoardTable where bSeq = ?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,no);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoaDTO dto = new BoaDTO();	
				dto.setbSeq(rs.getInt(1));
				dto.seteId(rs.getString(2));
				dto.setbTitle(rs.getString(3));
				dto.setbHeadCd(rs.getInt(4));				
				dto.setbContent(rs.getString(5));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public void comeCnt(int no) {
		int su = 0;
		conn = DbSet.getConnection();
		try {
			String sql = "update BoardTable set bCnt = bCnt + 1 where bSeq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			su = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
	}
	public int totalCnt() {
		int su = 0;
		conn = DbSet.getConnection();
		try {
			String sql = "select count(*) from BOARDTABLE";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				su = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}
}