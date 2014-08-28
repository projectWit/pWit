package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

public class DocODAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;

	public static DocODAO getInstance() {
		DocODAO dao = new DocODAO();
		return dao;
	}

	public int docoInsert(DocODTO dto) {
		int su = 0;
		conn = DbSet.getConnection();
		try {
			String sql = "insert into DocumentOut(oSeq, eId, oDate, oJoinDt, oDropDt, oDropRsn, oMobile, oEtc)";
			sql += "values (Seq_out.nextval, ?, sysdate, ?, ?, ?, ?, ?);";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.geteId());
			pstmt.setString(2, dto.getoJoinDt());
			pstmt.setString(3, dto.getoDropDt());
			pstmt.setString(4, dto.getoDropRsn());
			pstmt.setString(5, dto.getoMobile());
			pstmt.setString(6, dto.getoEtc());
			
			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}

	public List docoSelect() {
		conn = DbSet.getConnection();
		List<DocODTO> dtoL = new ArrayList();
		try {
			String sql = "select oSeq , eId, oJoinDt, oDropDt, oDropRsn, oMobile, oEtc, oDate  from DocumentOut";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				DocODTO dto = new DocODTO();
				dto.setoSeq(rs.getInt(1));
				dto.seteId(rs.getString(2));
				dto.setoJoinDt(rs.getString(3));
				dto.setoDropDt(rs.getString(4));
				dto.setoDropRsn(rs.getString(5));
				dto.setoMobile(rs.getString(6));
				dto.setoEtc(rs.getString(7));
				dto.setoDate(rs.getString(8));				
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
