package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VacDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;
	public static VacDAO getInstance(){
		VacDAO dao = new VacDAO();
		return dao;
	}
	
	public int vacInsert(VacDTO dto){
		int su = 0;
		conn = DbSet.getConnection();

		try {
			String sql = "insert into VacationTable (vSeq, eId, vCd, vFromDt, vToDt, vMobile, vEtc)";
			sql += "values(Seq_vac.nextval, ?, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, dto.geteId());
			pstmt.setInt(2, dto.getvCd());
			pstmt.setString(3, dto.getvFromDt());	
			pstmt.setString(4, dto.getvToDt());
			pstmt.setString(5, dto.getvMobile());
			pstmt.setString(6, dto.getvEtc());

			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}
}
