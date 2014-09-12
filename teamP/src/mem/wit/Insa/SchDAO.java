package mem.wit.Insa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mem.wit.Insa.DbClose;
import mem.wit.Insa.DbSet;

public class SchDAO {
	ResultSet rs = null;
	Connection conn;
	PreparedStatement pstmt;

	public static SchDAO getInstance() {
		SchDAO dao = new SchDAO();
		return dao;
	}

	public int schInsert(SchDTO dto) {

		int su = 0;
		conn = DbSet.getConnection();

		try {
			String sql = "insert into School(sSeq, sSchCd, sSchName, sJoinDate, sGradDate, sMajor, sLocCd, sEtc, sGradCd, sDNCd,EID)";
			sql += "values(Seq_sch.NEXTVAL, ?, ?, ?, ?, ?,?, ?, ?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, dto.getsSchCd());
			pstmt.setString(2, dto.getsSchName());
			pstmt.setString(3, dto.getsJoinDate());
			pstmt.setString(4, dto.getsGradDate());
			pstmt.setString(5, dto.getsMajor());
			pstmt.setInt(6, dto.getsLocCd());
			pstmt.setString(7, dto.getsEtc());
			pstmt.setInt(8, dto.getsGradCd());
			pstmt.setInt(9, dto.getsDnCd());
			pstmt.setString(10, dto.geteId());

			su = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}

	public List schSelect(String eId) {
		conn = DbSet.getConnection();
		List<SchDTO> dtoL = new ArrayList();
		try {
			String sql = "select schname, sSchName, sJoinDate, sGradDate, sMajor,";
			sql += "locname, sEtc, gradname, dnname from School s, schooltypecd st,  schlocal loc, gradtypecd gt,  dntypecd dn where s.sschcd = st.schcd and  s.sloccd = loc.loccd and s.sgradcd = gt.gradcd and s.sdncd = dn.dncd and eId =  '"
					+ eId + "'";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SchDTO dto = new SchDTO();
				dto.setSchname(rs.getString(1));
				dto.setsSchName(rs.getString(2));
				dto.setsJoinDate(rs.getString(3));
				dto.setsGradDate(rs.getString(4));
				dto.setsMajor(rs.getString(5));
				dto.setLocname(rs.getString(6));
				dto.setsEtc(rs.getString(7));
				dto.setGradname(rs.getString(8));
				dto.setDnname(rs.getString(9));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public List SchCd() {
		conn = DbSet.getConnection();
		List<SchCdDTO> dtoL = new ArrayList();
		try {
			String sql = "select schcd, schname from schooltypecd";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SchCdDTO dto = new SchCdDTO();
				dto.setSchCd(rs.getInt(1));
				dto.setSchName(rs.getString(2));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public List DNType() {
		conn = DbSet.getConnection();
		List<DNTypeDTO> dtoL = new ArrayList();
		try {
			String sql = "select dncd, dnname from dntypecd";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				DNTypeDTO dto = new DNTypeDTO();
				dto.setTypeCd(rs.getInt(1));
				dto.setTypeName(rs.getString(2));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public List SLocal() {
		conn = DbSet.getConnection();
		List<SLocalDTO> dtoL = new ArrayList();
		try {
			String sql = "select loccd, locname from schlocal";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SLocalDTO dto = new SLocalDTO();
				dto.setLocalCd(rs.getInt(1));
				dto.setLocalName(rs.getString(2));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public List SGradCd() {
		conn = DbSet.getConnection();
		List<SGradDTO> dtoL = new ArrayList();
		try {
			String sql = "select gradcd, gradname from gradtypecd";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SGradDTO dto = new SGradDTO();
				dto.setGradCd(rs.getInt(1));
				dto.setGradName(rs.getString(2));
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
