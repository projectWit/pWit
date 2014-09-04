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
			sql += "values(Seq_boa.NEXTVAL, '10001', ?, ?, ?, sysdate, ?, 0)";

			pstmt = conn.prepareStatement(sql);

			//pstmt.setString(1, dto.geteId());
			pstmt.setInt(1, dto.getbHeadCd());
			pstmt.setString(2, dto.getbTitle());
			pstmt.setString(3, dto.getbContent());			
			pstmt.setString(4, dto.getbIp());

			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}
	public List HeadCd(){
		conn = DbSet.getConnection();
		List<HeadDTO> dtoL = new ArrayList();
		try {
			String sql = "select headcd, headname from boardhead";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				HeadDTO dto = new HeadDTO();		
				dto.setHeadCd(rs.getInt(1));
				dto.setHeadName(rs.getString(2));			
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;		
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
			String sql = "select bSeq, eId, bTitle, headname, bContent from BoardTable b, BoardHead h where b.bheadcd = h.headCd and bSeq = ?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,no);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoaDTO dto = new BoaDTO();	
				dto.setbSeq(rs.getInt(1));
				dto.seteId(rs.getString(2));
				dto.setbTitle(rs.getString(3));
				dto.setHeadName(rs.getString(4));				
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
	
	public int boaDelete(BoaDTO dto){		
		int su = 0;
		conn = DbSet.getConnection();
		try {
			String sql = "delete from BoardTable where bSeq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  dto.getbSeq());
			su = pstmt.executeUpdate();			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;		
	}
	
}
