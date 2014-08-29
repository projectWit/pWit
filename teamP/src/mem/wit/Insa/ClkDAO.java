package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

public class ClkDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;
	public static ClkDAO getInstance(){
		ClkDAO dao = new ClkDAO();
		return dao;
	}
	public int clkDInsert(ClkDTO dto){
		int su = 0;
		conn = DbSet.getConnection();

		try {
			String sql = "insert into ClockTable (cSeq, eId, cDate, cCd, cTime, eEtc)";
			sql += "values(Seq_clk.nextval, ?, ?, ?, sysdate, ?)";

			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, dto.geteId());
			pstmt.setString(2, dto.getcDate());
			pstmt.setInt(3, dto.getcCd());	
			pstmt.setString(4, dto.getcEtc());

			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}
	
	public List clkDList(ClkDTO dto) {
		conn = DbSet.getConnection();
		List<ClkDTO> dtoL = new ArrayList();
		try {
			String sql = "select cDate, eId, cTime  from ClockTable where cCd = ? and cDate between ? and ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getcCd());
			pstmt.setString(2,  dto.getcDate());
			pstmt.setString(3, dto.getcDate());

			
			rs = pstmt.executeQuery();
			while (rs.next()) {				
				dto.setcDate(rs.getString(1));
				dto.seteId(rs.getString(2));
				dto.setcTime(rs.getString(3));				
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}
	public List clkMDList() {
		conn = DbSet.getConnection();
		List<ClkDTO> dtoL = new ArrayList();
		try {

			String sql = "select cDate, eId, cTime from ClockTable where cCd = 1 and cDate = '2014-08-29'";
			pstmt = conn.prepareStatement(sql);			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				ClkDTO dto = new ClkDTO();
				System.out.println(rs.getString(1));
				dto.setcDate(rs.getString(1));
				dto.seteId(rs.getString(2));
				dto.setcTime(rs.getString(3));				
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}
	
	public List clkEvalList() {
		conn = DbSet.getConnection();
		List<ClkDTO> dtoL = new ArrayList();
		try {
			String sql = "select evSeq, EVID2, evTotal from ClockEval";
			pstmt = conn.prepareStatement(sql);			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ClkDTO dto = new ClkDTO();
				dto.setcDate(rs.getString(1));
				dto.seteId(rs.getString(2));
				dto.setcTime(rs.getString(3));				
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}
}
