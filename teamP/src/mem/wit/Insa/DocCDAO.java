package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

public class DocCDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;

	public static DocCDAO getInstance() {
		DocCDAO dao = new DocCDAO();
		return dao;
	}

	public int doccInsert(DocCDTO dto) {
		int su = 0;
		conn = DbSet.getConnection();
		try {
			String sql = "insert into DocumentCar(caSeq, eId, caDate, caFromDt, caToDt, caJob, caEtc)";
			sql += "values (Seq_car.nextval, ?, sysdate, ?, ?, ?, ?);";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.geteId());
			pstmt.setString(2, dto.getCaFromDt());
			pstmt.setString(3, dto.getCaToDt());
			pstmt.setString(4, dto.getCaJob());
			pstmt.setString(5, dto.getCaEtc());		
			
			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}

	public List doccSelect() {
		conn = DbSet.getConnection();
		List<DocCDTO> dtoL = new ArrayList();
		try {
			String sql = "select caSeq, eId, caFromDt, caToDt, caJob, caEtc, caDate from DocumentCar;";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				DocCDTO dto = new DocCDTO();	
				dto.setCaSeq(rs.getInt(1));
				dto.seteId(rs.getString(2));
				dto.setCaFromDt(rs.getString(3));
				dto.setCaToDt(rs.getString(4));
				dto.setCaJob(rs.getString(5));
				dto.setCaEtc(rs.getString(6));
				dto.setCaDate(rs.getString(7));
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
