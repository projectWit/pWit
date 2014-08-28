package mem.wit.Insa;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;
public class InsaDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;
	PreparedStatement pstmt1;
	
	public static InsaDAO getInstance(){
		InsaDAO dao = new InsaDAO();
		return dao;
	}
	
	public List insaSelect(){
		conn = DbSet.getConnection();
		List<InsaDTO> dtoL = new ArrayList();
		InsaDTO dto = new InsaDTO();
		try{
			String sql = "select eId, eKName, eCName, eEName, eJumin1, eJumin2, ehid, eJoinDate, eIntypeCd,";
			sql += "ePosCd, eDutyCd, eDropDate, eDropRsn, eTel, eMobile, eDepCd, ePostNum, eAddr2, ePhoto,";
			sql += "eEmail from Employee where eId = '10001'";						
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				dto.seteId(rs.getString(1));
				dto.seteKName(rs.getString(2));
				dto.seteCName(rs.getString(3));
				dto.seteEName(rs.getString(4));
				dto.seteJumin1(rs.getString(5));
				dto.seteJumin2(rs.getString(6));
				dto.setEhId(rs.getInt(7));
				dto.seteJoinDate(rs.getString(8));
				dto.seteInTypeCd(rs.getInt(9));
				dto.setePosCd(rs.getInt(10));
				dto.seteDutyCd(rs.getInt(11));
				dto.seteDropDate(rs.getString(12));
				dto.seteDropRsn(rs.getString(13));
				dto.seteTel(rs.getString(14));
				dto.seteMobile(rs.getString(15));
				dto.seteDepCd(rs.getInt(16));
				dto.setePostNum(rs.getString(17));
				dto.seteAddr2(rs.getString(18));
				dto.setePhoto(rs.getString(19));
				dto.seteEmail(rs.getString(20));
				//dto.seteId(rs.getString(21));
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
	public int insaUpdate(InsaDTO dto)
	{
		int su = 0;
		conn = DbSet.getConnection();
		try
		{
			String sql= "update Employee set ehid = ?, eTel = ?, eMobile = ?, ePostNum = ?,";
					sql += "eAddr2 = ?, eEmail = ?, ePwd = ? where eId = ?";

			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getEhId());
			pstmt.setString(2, dto.geteTel());
			pstmt.setString(3, dto.geteMobile());
			pstmt.setString(4, dto.getePostNum());
			pstmt.setString(5,  dto.geteAddr2());
			pstmt.setString(6, dto.geteEmail());
			pstmt.setString(7, dto.getePwd());
			pstmt.setString(8, dto.geteId());
			su = pstmt.executeUpdate();
		}		
		
		catch(SQLException e){
		     e.printStackTrace();
		  }finally{
			  DbClose.close(pstmt,conn);
		  }	
		return su;		
	}
	
	public int insaInsert(InsaDTO dto){
		 int su = 0;	
		conn = DbSet.getConnection();
		
		try
		{
			String sql = "insert into Employee (eId, eKName, eCName, eEName, eJumin1, eJumin2,";
			sql += "eTel, eMobile, eJoinDate, eDropDate, eDropRsn, ePhoto, ePostNum, eAddr2, eEmail,";
			sql += "ePwd, eInTypeCd, ePosCd, eDutyCd, eDepCd, ehId)";
			sql += "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

			pstmt = conn.prepareStatement(sql);
					
			pstmt.setString(1,dto.geteId());
			pstmt.setString(2, dto.geteKName());
			pstmt.setString(3,dto.geteCName());
			pstmt.setString(4, dto.geteEName());
			pstmt.setString(5, dto.geteJumin1());
			pstmt.setString(6, dto.geteJumin2());
			pstmt.setString(7, dto.geteTel());
			pstmt.setString(8, dto.geteMobile());
			pstmt.setString(9, dto.geteJoinDate());
			pstmt.setString(10, dto.geteDropDate());
			pstmt.setString(11, dto.geteDropRsn());
			pstmt.setString(12, dto.getePhoto());
			pstmt.setString(13, dto.getePostNum());
			pstmt.setString(14, dto.geteAddr2());
			pstmt.setString(15, dto.geteEmail());
			pstmt.setString(16, dto.getePwd());
			pstmt.setInt(17, dto.geteInTypeCd());
			pstmt.setInt(18, dto.getePosCd());
			pstmt.setInt(19, dto.geteDutyCd());
			pstmt.setInt(20, dto.geteDepCd());
			pstmt.setInt(21, dto.getEhId());
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
