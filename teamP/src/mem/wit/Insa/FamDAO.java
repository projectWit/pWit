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
	
	public static FamDAO getInstance(){
		FamDAO dao = new FamDAO();
		return dao;
	}
	public int famInsert(FamDTO dto){
		
		 int su = 0;	
		conn = DbSet.getConnection();
			
			try
			{
				String sql = "insert into FAMILY(fSeq, fJumin1, fJumin2, fName, fRelation, fFinGrad, fJob, fCompany, fHtCd, rtCd, eId)";
				sql += "values(Seq_fam.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'test8')";
				pstmt = conn.prepareStatement(sql);

				pstmt.setInt(1, dto.getfJumin1());
				pstmt.setInt(2, dto.getfJumin2());
				pstmt.setString(3, dto.getfName());
				pstmt.setString(4, dto.getfRelation());
				pstmt.setString(5, dto.getfFinGrad());
				pstmt.setString(6, dto.getfJob());
				pstmt.setString(7, dto.getfCompany());
				pstmt.setInt(8, dto.getfHtCd());
				pstmt.setInt(9,dto.getRtCd());
				//pstmt.setString(10, dto.geteId());
							
				su = pstmt.executeUpdate();
				
			}
			catch(SQLException e){
			     e.printStackTrace();
			  }finally{
				  DbClose.close(pstmt,conn);
			  }	
			return su;
	}
	
	public List lanSelect(){
		conn = DbSet.getConnection();
		List<FamDTO> dtoL = new ArrayList();
		FamDTO dto = new FamDTO();
		try{
			String sql = "select fJumin1, fJumin2, fName, fRelation, fFinGrad,";
			sql += "fJob, fCompany, fHtCd, rtCd from Family where eId = ?;";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.geteId());
			rs = pstmt.executeQuery();
			while(rs.next())
			{				
				dto.setfJumin1(rs.getInt(1));
				dto.setfJumin2(rs.getInt(2));
				dto.setfName(rs.getString(3));
				dto.setfRelation(rs.getString(4));
				dto.setfFinGrad(rs.getString(5));
				dto.setfJob(rs.getString(6));
				dto.setfCompany(rs.getString(7));
				dto.setfHtCd(rs.getInt(8));
				dto.setRtCd(rs.getInt(9));
				dto.seteId(rs.getString(10));				
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
	public List fhtcd(){
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
	public List frtcd(){
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
