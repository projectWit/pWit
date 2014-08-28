package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

public class FAQDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;
	
	public static FAQDAO getInstance(){
		FAQDAO dao = new FAQDAO();
		return dao;
	}
	
	public int faqInsert(FAQDTO dto){
		
		 int su = 0;	
		conn = DbSet.getConnection();
		try
			{
				String sql = "insert into FAQTABLE(fSeq, eId, fTitle, fContent, fDate, fIp, fCnt)";
				sql += " values(Seq_faq.NEXTVAL, ?, ?, ?, sysdate, ?, 0)";

				pstmt = conn.prepareStatement(sql);

				pstmt.setString(1, dto.geteId());				
				pstmt.setString(2, dto.getfTitle());
				pstmt.setString(3, dto.getfContent());
				pstmt.setString(4, dto.getfIp());											
				su = pstmt.executeUpdate();				
			}
			catch(SQLException e){
			     e.printStackTrace();
			  }finally{
				  DbClose.close(pstmt,conn);
			  }	
			return su;
	}
	
	public List faqSelList(){
		conn = DbSet.getConnection();
		List<FAQDTO> dtoL = new ArrayList();
		try{
			String sql = "select fSeq, fTitle, eId, fDate, fCnt from FAQTable order by fSeq desc";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				FAQDTO dto = new FAQDTO();
				dto.setfSeq(rs.getInt(1));
				dto.setfTitle(rs.getString(2));
				dto.seteId(rs.getString(3));
				dto.setfDate(rs.getString(4));
				dto.setfCnt(rs.getInt(5));							
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
	public List faqSelMain(int no){
		conn = DbSet.getConnection();
		List<FAQDTO> dtoL = new ArrayList();
		try{
			String sql = "select fSeq, eId, fTitle, fContent from FAQTABLE where fSeq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,no);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				FAQDTO dto = new FAQDTO();
				dto.setfSeq(rs.getInt(1));
				dto.seteId(rs.getString(2));
				dto.setfTitle(rs.getString(3));				
				dto.setfContent(rs.getString(4));							
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
	public void comeCnt(int no) {
		int su = 0;
		conn = DbSet.getConnection();
		try {
			String sql = "update FAQTABLE set fCnt = fCnt + 1 where fSeq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			su = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
	}
	public int faqUpdate(FAQDTO dto)
	{
		int su = 0;
		conn = DbSet.getConnection();
		try
		{
			String sql= "update FAQTABLE set fTitle = ?, fContent= ?, fDate = sysdate";
					sql += "where eId = ?";

			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getfTitle());
			pstmt.setString(2, dto.getfContent());
			pstmt.setString(3, dto.getfDate());
			pstmt.setString(4, dto.geteId());
			
			su = pstmt.executeUpdate();
		}		
		
		catch(SQLException e){
		     e.printStackTrace();
		  }finally{
			  DbClose.close(pstmt,conn);
		  }	
		return su;		
	}
	public int totalCnt() {
		int su = 0;
		conn = DbSet.getConnection();
		try {
			String sql = "select count(*) from FAQTABLE";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				su = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}
}
