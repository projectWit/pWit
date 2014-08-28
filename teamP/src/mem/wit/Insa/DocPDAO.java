package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

public class DocPDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;
	
	public static DocPDAO getInstance(){
		DocPDAO dao = new DocPDAO();
		return dao;
	}
	
	public int docpInsert(DocPDTO dto){
		 int su = 0;	
			conn = DbSet.getConnection();
			try
				{
					String sql = "insert into DocumentPre (pSeq, eId, pDate, pFromDt, pToDt, pJob, pEtc)";
					sql += "values (Seq_pre.nextval, ?, sysdate, ?, ?, ?, ?);";


					pstmt = conn.prepareStatement(sql);

					pstmt.setString(1, dto.geteId());
					pstmt.setString(2, dto.getpFromDt());
					pstmt.setString(3, dto.getpToDt());
					pstmt.setString(4, dto.getpJob());
					pstmt.setString(5, dto.getpEtc());					
								
					su = pstmt.executeUpdate();				
				}
				catch(SQLException e){
				     e.printStackTrace();
				  }finally{
					  DbClose.close(pstmt,conn);
				  }	
				return su;
	}
	public List docpSelect(){
		conn = DbSet.getConnection();
		List<DocPDTO> dtoL = new ArrayList();
		try{
			String sql = "select pSeq, eId, pFromDt, pToDt, pJob, pEtc, pDate from DocumentPre";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				DocPDTO dto = new DocPDTO();
				dto.setpSeq(rs.getInt(1));
				dto.seteId(rs.getString(2));
				dto.setpFromDt(rs.getString(3));
				dto.setpToDt(rs.getString(4));
				dto.setpJob(rs.getString(5));
				dto.setpEtc(rs.getString(6));
				dto.setpDate(rs.getString(7));
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
