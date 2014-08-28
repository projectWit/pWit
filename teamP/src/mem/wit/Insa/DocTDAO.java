package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

public class DocTDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;
	
	public static DocTDAO getInstance(){
		DocTDAO dao = new DocTDAO();
		return dao;
	}
	
	public int doctInsert(DocTDTO dto){
		 int su = 0;	
			conn = DbSet.getConnection();
			try
				{
					String sql = "insert into DocumentTrip(tSeq, eId, tDate, tFromDt, tToDt, tVisit, tEtc, eCoId1, eCoId2, eCoId3)";
					sql += "values (Seq_trip.nextval, ?, sysdate, ?, ?, ?, ?, ?, ?, ?);";
					
					pstmt = conn.prepareStatement(sql);

					pstmt.setString(1, dto.geteId());	
					pstmt.setString(2, dto.gettFromDt());
					pstmt.setString(3, dto.gettToDt());
					pstmt.setString(4, dto.gettVisit());
					pstmt.setString(5, dto.gettEtc());
					pstmt.setString(6, dto.geteCoId1());
					pstmt.setString(7, dto.geteCoId2());
					pstmt.setString(8, dto.geteCoId3());
								
					su = pstmt.executeUpdate();				
				}
				catch(SQLException e){
				     e.printStackTrace();
				  }finally{
					  DbClose.close(pstmt,conn);
				  }	
				return su;
	}
	public List doctSelect(){
		conn = DbSet.getConnection();
		List<DocTDTO> dtoL = new ArrayList();
		try{
			String sql = "select tSeq, eId, tFromDt, tToDt, tVisit, tEtc, eCoId1, eCoId2, eCoId3, tDate from DocumentTrip";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				DocTDTO dto = new DocTDTO();
				dto.settSeq(rs.getInt(1));
				dto.seteId(rs.getString(2));
				dto.settFromDt(rs.getString(3));
				dto.settToDt(rs.getString(4));
				dto.settVisit(rs.getString(5));
				dto.settEtc(rs.getString(6));
				dto.seteCoId1(rs.getString(7));
				dto.seteCoId2(rs.getString(8));
				dto.seteCoId3(rs.getString(9));
				dto.settDate(rs.getString(10));
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
