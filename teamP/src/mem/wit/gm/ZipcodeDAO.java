package mem.wit.gm;
import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;


public class ZipcodeDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;
	
	public static ZipcodeDAO getInstance()
	{
		ZipcodeDAO dao = new ZipcodeDAO();
		return dao;
	}
	
	public ArrayList<ZipcodeDTO> zipSelect(String dong)
	{
		conn = DbSet.getConnection();
		ArrayList<ZipcodeDTO> dtoL = new ArrayList<ZipcodeDTO>();
		try{	
			
			String sql = "select * from zipcodes where dong like ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + dong + "%");
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				ZipcodeDTO dto = new ZipcodeDTO();
			    dto.setZipcode(rs.getString("zipcode"));
			    dto.setSido(rs.getString("sido"));
			    dto.setGugun(rs.getString("gugun"));
			    dto.setDong(rs.getString("dong"));
			    /*dto.setRi(rs.getString(5));
			    dto.setBunji(rs.getString(6));*/
			    dto.setSeq(rs.getString("seq"));

			if(rs.getString("ri") != null)			
				dto.setRi(rs.getString("ri"));
			
			else			
				dto.setRi("");
						
			if(rs.getString("bunji") != null)
				dto.setBunji(rs.getString("bunji"));
			
			else
				dto.setBunji("");	
			dtoL.add(dto);
			}
		}
		catch(SQLException e){
		     e.printStackTrace();
		  }finally{
			  DbClose.close(pstmt,conn);
		  }
		
		return dtoL;	
		}
}




