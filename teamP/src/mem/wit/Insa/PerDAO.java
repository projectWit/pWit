package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jmx.export.assembler.AbstractReflectiveMBeanInfoAssembler;

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
	public int perInsert(PerDTO dto, String eId){
		
		 int su = 0;	
		conn = DbSet.getConnection();
			
			try
			{
				String sql = "insert into Personal (hName, hRelate, hHome,";
				sql += "hBthCode, hBth, hMryCode, hMryDate, hAbleCode, hBhCode, hBhRelate,";
				sql += "hArmyCode, solCd, hArmyNoRsn, clsCd, eId) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,'"+ eId+ "')";
			

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
				pstmt.setInt(11, dto.gethArmyCode());	
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
	
	
	public List ArmyCd(){
		conn = DbSet.getConnection();
		List<ArmyCdDTO> dtoL = new ArrayList();
		try {
			String sql = "select armycode, armyname from armytype";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ArmyCdDTO dto = new ArmyCdDTO();		
				dto.setArmyCode(rs.getInt(1));
				dto.setArmyName(rs.getString(2));			
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;		
	}
	
	public List SolCd(){
		conn = DbSet.getConnection();
		List<SolCdDTO> dtoL = new ArrayList();
		try {
			String sql = "select solCd, solName from Soldier";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SolCdDTO dto = new SolCdDTO();		
				dto.setSolCode(rs.getInt(1));
				dto.setSolName(rs.getString(2));			
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;		
	}
	
	public List ClsCd(){
		conn = DbSet.getConnection();
		List<ClsCdDTO> dtoL = new ArrayList();
		try {
			String sql = "select clscd, clsname from armyclass";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ClsCdDTO dto = new ClsCdDTO();		
				dto.setClsCode(rs.getInt(1));
				dto.setClsName(rs.getString(2));			
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;		
	}
	
	public List bthType(){
		conn = DbSet.getConnection();
		List<BthTypeDTO> dtoL = new ArrayList();
		try {
			String sql = "select bthCode, bthName from cdBirthType";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BthTypeDTO dto = new BthTypeDTO();		
				dto.setBthCode(rs.getInt(1));
				dto.setBthName(rs.getString(2));			
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;		
	}
	
	public List ableType(){
		conn = DbSet.getConnection();
		List<AbleTypeDTO> dtoL = new ArrayList();
		try {
			String sql = "select ableCode, ableName from AbleType";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				AbleTypeDTO dto = new AbleTypeDTO();		
				dto.setAbleCode(rs.getInt(1));
				dto.setAbleName(rs.getString(2));			
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;		
	}
	
	public List mryType(){
		conn = DbSet.getConnection();
		List<MryTypeDTO> dtoL = new ArrayList();
		try {
			String sql = "select mryCode, mryName from cdMarry";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MryTypeDTO dto = new MryTypeDTO();		
				dto.setMryCode(rs.getInt(1));
				dto.setMryName(rs.getString(2));			
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;		
	}
	
	public List bhType(){
		conn = DbSet.getConnection();
		List<BhCdDTO> dtoL = new ArrayList();
		try {
			String sql = "select bhCode, bhName from BohoonType";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BhCdDTO dto = new BhCdDTO();		
				dto.setBhCode(rs.getInt(1));
				dto.setBhName(rs.getString(2));			
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;		
	}
	
	public List perSel(){
		conn = DbSet.getConnection();
		List<PerDTO> dtoL = new ArrayList();
		try{
			String sql = "select * from Personal p, Employee e where p.eId = e.eId and eId = '10001'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				PerDTO dto = new PerDTO();		
				dto.seteId(rs.getString(1));
				dto.sethName(rs.getString(2));
				dto.sethRelate(rs.getString(3));
				dto.sethBthCode(rs.getInt(4));
				dto.sethBth(rs.getString(5));
				dto.sethMryDate(rs.getString(6));
				dto.sethMryCode(rs.getInt(7));
				dto.sethAbleCode(rs.getInt(8));
				dto.sethBhCode(rs.getInt(9));
				dto.sethBhRelate(rs.getString(10));
				dto.sethAbleCode(rs.getInt(11));
				dto.setSolCd(rs.getInt(12));
				dto.sethArmyNoRsn(rs.getString(13));
				dto.setClsCd(rs.getInt(14));
				
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
