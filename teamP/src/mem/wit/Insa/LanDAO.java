package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

import com.sun.corba.se.spi.legacy.connection.GetEndPointInfoAgainException;

public class LanDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;
	
	public static LanDAO getInstance(){
		LanDAO dao = new LanDAO();
		return dao;
	}
	public int lanInsert(LanDTO dto){
		
		 int su = 0;	
		conn = DbSet.getConnection();
			
			try
			{
				String sql = "insert into Language(lanSeq, lanTYPE, lanReadLvCd, lanWriteLvCd, lanSpkLvCd, lanQual, lanEtc, eId)";
				sql += "values (Seq_lan.NEXTVAL, ?, ?, ?, ?, ?, ?, ?);";

				pstmt = conn.prepareStatement(sql);

				pstmt.setInt(1, dto.getLanType());
				pstmt.setInt(2, dto.getLanReadLvCd());
				pstmt.setInt(3, dto.getLanWriteLvCd());
				pstmt.setInt(4, dto.getLanSpkLvCd());
				pstmt.setString(5, dto.getLanQual());
				pstmt.setString(6, dto.getLanEtc());
				pstmt.setString(7, dto.geteId());
				
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
		List<LanDTO> dtoL = new ArrayList();
		LanDTO dto = new LanDTO();
		try{
			String sql = "select lanType, lanReadLvCd, lanWriteLvCd, lanSpkLvCd, lanQual,";
			sql += "lanEtic from Language where eId = ?;";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.geteId());
			rs = pstmt.executeQuery();
			while(rs.next())
			{				
				dto.setLanType(rs.getInt(1));
				dto.setLanReadLvCd(rs.getInt(2));
				dto.setLanWriteLvCd(rs.getInt(3));
				dto.setLanSpkLvCd(rs.getInt(4));
				dto.setLanQual(rs.getString(5));
				dto.setLanEtc(rs.getString(6));
				dto.seteId(rs.getString(7));						
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
	public List lantype(){
		conn = DbSet.getConnection();
		List<LanTypeDTO> dtoL = new ArrayList();
		try {
			String sql = "select lantype, lanname from lantype";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				LanTypeDTO dto = new LanTypeDTO();
				dto.setLantypeCd(rs.getInt(1));
				dto.setLanName(rs.getString(2));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}
	
	public List lanread(){
		conn = DbSet.getConnection();
		List<LanReadLvDTO> dtoL = new ArrayList();
		try {
			String sql = "select readlvcd, readlvname from lanreadlv";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				LanReadLvDTO dto = new LanReadLvDTO();
				dto.setReadlvCd(rs.getInt(1));
				dto.setReadlvName(rs.getString(2));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}
	
	public List lanwrite(){
		conn = DbSet.getConnection();
		List<LanWriteLvDTO> dtoL = new ArrayList();
		try {
			String sql = "select writelvcd, writelvname from lanwritelv";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				LanWriteLvDTO dto = new LanWriteLvDTO();
				dto.setWritelvCd(rs.getInt(1));
				dto.setWritelvName(rs.getString(2));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}
	
	public List lanspeak(){
		conn = DbSet.getConnection();
		List<LanSpeakLvDTO> dtoL = new ArrayList();
		try {
			String sql = "select spklvcd, spklvname from lanspeaklv";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				LanSpeakLvDTO dto = new LanSpeakLvDTO();
				dto.setSpeaklvCd(rs.getInt(1));
				dto.setSpeaklvName(rs.getString(2));
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
