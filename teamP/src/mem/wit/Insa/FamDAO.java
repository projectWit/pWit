package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

public class FamDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;

	public static FamDAO getInstance() {
		FamDAO dao = new FamDAO();
		return dao;
	}

	public List famSelect(String eId) {
		conn = DbSet.getConnection();
		List<FamDTO> dtoL = new ArrayList();
		FamDTO dto;
		try {
			String sql = "select fJumin1, fJumin2, fName, fRelation, fFinGrad,";
			sql += "fJob, fCompany, htname, rtname from Family f, reltypecd r, hometypecd h where f.fhtcd = h.htcd and f.rtcd = r.rtcd and eId =  '"
					+ eId + "'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto  = new FamDTO();
				dto.setfJumin1(rs.getInt(1));
				dto.setfJumin2(rs.getInt(2));
				dto.setfName(rs.getString(3));
				dto.setfRelation(rs.getString(4));
				dto.setfFinGrad(rs.getString(5));
				dto.setfJob(rs.getString(6));
				dto.setfCompany(rs.getString(7));
				dto.setFhtName(rs.getString(8));
				dto.setFrtName(rs.getString(9));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public List fhtcd() {
		conn = DbSet.getConnection();
		List<FHTCDDTO> dtoL = new ArrayList();
		try {
			String sql = "select htcd, htname from HometypeCd";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				FHTCDDTO dto = new FHTCDDTO();
				dto.setFhtCode(rs.getInt(1));
				dto.setFhtName(rs.getString(2));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public List frtcd() {
		conn = DbSet.getConnection();
		List<FRTCDDTO> dtoL = new ArrayList();
		try {
			String sql = "select rtcd, rtname from reltypecd";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				FRTCDDTO dto = new FRTCDDTO();
				dto.setFrtCode(rs.getInt(1));
				dto.setFrtName(rs.getString(2));
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
