package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

public class PerDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;
	
	public static PerDAO getInstance(){
		PerDAO dao = new PerDAO();
		return dao;
	}
	public int perInsert(PerDTO dto){
		
		 int su = 0;	
		conn = DbSet.getConnection();
			
			try
			{
				String sql = "insert into Personal (hName, hRelate, hHome,";
				sql += "hBthCode, hBth, hMryCode, hMryDate, hAbleCode, hBhCode, hBhRelate,";
				sql += "hArmyCode, solCd, hArmyNoRsn, clsCd, eId) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, '10001');";
			

				pstmt = conn.prepareStatement(sql);
						
				pstmt.setString(1,dto.gethName());				
				pstmt.setString(2,dto.gethRelate());
				pstmt.setString(3, dto.gethHome());
				pstmt.setInt(4, dto.gethBhCode());
				pstmt.setString(5, dto.gethBth());
				pstmt.setInt(6, dto.gethMryCode());
				pstmt.setString(7, dto.gethMryDate());
				pstmt.setInt(8, dto.gethAbleCode());
				pstmt.setInt(9, dto.gethBhCode());
				pstmt.setString(10, dto.gethBhRelate());
				pstmt.setInt(11, dto.gethAbleCode());
				pstmt.setInt(12, dto.getSolCd());
				pstmt.setString(13, dto.gethArmyNoRsn());
				pstmt.setInt(14, dto.getClsCd());
				//pstmt.setString(15, dto.geteId());
				su = pstmt.executeUpdate();
				
			}
			catch(SQLException e){
			     e.printStackTrace();
			  }finally{
				  DbClose.close(pstmt,conn);
			  }	
			return su;
	}
	
}
