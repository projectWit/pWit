package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EvalDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;
	PreparedStatement pstmt1;
	
	public List evalList(){
		conn = DbSet.getConnection();
		List<EvalDTO> dtoL = new ArrayList();
		
		try{
			String sql = "select evSeq, evDate, EVID2, evTotal from ClockEval";					
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				EvalDTO dto = new EvalDTO();
				dto.setEvSeq(rs.getInt(1));
				dto.setEvDate(rs.getString(2));
				dto.setEvId2(rs.getString(3));
				dto.setEvTotal(rs.getInt(4));				
				dtoL.add(dto);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}
}
