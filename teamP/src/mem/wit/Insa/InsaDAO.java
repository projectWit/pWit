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

	public static InsaDAO getInstance() {
		InsaDAO dao = new InsaDAO();
		return dao;
	}

	public List insaSelect(String eId) {
		conn = DbSet.getConnection();
		List<InsaDTO> dtoL = new ArrayList();
		InsaDTO dto = new InsaDTO();
		try {
			String sql = "select eId, eKName, eCName, eEName, eJumin1, eJumin2, hName, eJoinDate, inTypeName,";
			sql += "PosName, DutyName, eDropDate, eDropRsn, eTel, eMobile, DepName, ePostNum, eAddr2, ePhoto,";
			sql += "eEmail, zipcode, sido, gugun, dong, ri, bunji from Employee e, DepartmentCd d, PositionCd p, InTypeCd i, DutyCd u, House h, zipcodes z ";
			sql += "where e.eInTypeCd = i.inTypeCd and e.ePosCd = p.PosCd and e.eDutyCd = u.DutyCd ";
			sql += "and e.eDepCd = d.DepCd and e.ehId = h.hId and e.ePostNum = z.seq and eId = '"
					+ eId + "'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto.seteId(rs.getString(1));
				dto.seteKName(rs.getString(2));
				dto.seteCName(rs.getString(3));
				dto.seteEName(rs.getString(4));
				dto.seteJumin1(rs.getString(5));
				dto.seteJumin2(rs.getString(6));
				dto.setHid(rs.getString(7));
				dto.seteJoinDate(rs.getString(8));
				dto.setIntypeCd(rs.getString(9));
				dto.setPosName(rs.getString(10));
				dto.setDutyName(rs.getString(11));
				dto.seteDropDate(rs.getString(12));
				dto.seteDropRsn(rs.getString(13));
				dto.seteTel(rs.getString(14));
				dto.seteMobile(rs.getString(15));
				dto.setDepName(rs.getString(16));
				dto.setePostNum(rs.getInt(17));
				dto.seteAddr2(rs.getString(18));
				dto.setePhoto(rs.getString(19));
				dto.seteEmail(rs.getString(20));
				dto.setZipcode(rs.getString(21));
				dto.setSido(rs.getString(22));
				dto.setGugun(rs.getString(23));
				dto.setDong(rs.getString(24));
				dto.setRi(rs.getString(25));
				dto.setBunji(rs.getString(26));
				// dto.seteId(rs.getString(21));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public List insaSelList() {
		conn = DbSet.getConnection();
		List<InsaDTO> dtoL = new ArrayList();

		try {
			String sql = "select eId, eKName, DepName, eJoinDate, PosName, eMobile, eEmail from Employee e , departmentcd d, PositionCd p where e.eDepCd = d.DepCd and e.ePosCd = p.PosCd order by e.eJoinDate desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				InsaDTO dto = new InsaDTO();
				dto.seteId(rs.getString(1));
				dto.seteKName(rs.getString(2));
				dto.setDepName(rs.getString(3));
				dto.seteJoinDate(rs.getString(4));
				dto.setPosName(rs.getString(5));
				dto.seteMobile(rs.getString(6));
				dto.seteEmail(rs.getString(7));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public int insaUpdate(InsaDTO dto, String eId) {
		int su = 0;
		conn = DbSet.getConnection();
		try {
			String sql = "update Employee set ehid = ?, eTel = ?, eMobile = ?, ePostNum = ?,";
			sql += "eAddr2 = ?, eEmail = ?, ePwd = ? where eId ='" + eId + "'";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getEhId());
			pstmt.setString(2, dto.geteTel());
			pstmt.setString(3, dto.geteMobile());
			pstmt.setInt(4, dto.getePostNum());
			pstmt.setString(5, dto.geteAddr2());
			pstmt.setString(6, dto.geteEmail());
			pstmt.setString(7, dto.getePwd());
			// pstmt.setString(8, dto.geteId());
			su = pstmt.executeUpdate();
		}

		catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}

	public int insaInsert(InsaDTO dto) {
		int su = 0;
		conn = DbSet.getConnection();
		try {

			String sql = "insert into Employee (eId, eKName, eCName, eEName, eJumin1, eJumin2,";
			sql += "eTel, eMobile, eJoinDate, eDropDate, eDropRsn, ePhoto, ePostNum, eAddr2, eEmail,";
			sql += "ePwd, eInTypeCd, ePosCd, eDutyCd, eDepCd, ehId) ";
			sql += "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.geteId());
			pstmt.setString(2, dto.geteKName());
			pstmt.setString(3, dto.geteCName());
			pstmt.setString(4, dto.geteEName());
			pstmt.setString(5, dto.geteJumin1());
			pstmt.setString(6, dto.geteJumin2());
			pstmt.setString(7, dto.geteTel());
			pstmt.setString(8, dto.geteMobile());
			pstmt.setString(9, dto.geteJoinDate());
			pstmt.setString(10, dto.geteDropDate());
			pstmt.setString(11, dto.geteDropRsn());
			pstmt.setString(12, dto.getePhoto());
			pstmt.setInt(13, dto.getePostNum());
			pstmt.setString(14, dto.geteAddr2());
			pstmt.setString(15, dto.geteEmail());
			pstmt.setString(16, dto.getePwd());
			pstmt.setInt(17, dto.geteInTypeCd());
			pstmt.setInt(18, dto.getePosCd());
			pstmt.setInt(19, dto.geteDutyCd());
			pstmt.setInt(20, dto.geteDepCd());
			pstmt.setInt(21, dto.getEhId());
			su = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}

	public int totalCnt() {
		int su = 0;
		conn = DbSet.getConnection();
		try {
			String sql = "select count(*) from EMPLOYEE";
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

	public List TelCd() {
		conn = DbSet.getConnection();
		List<TelDTO> dtoL = new ArrayList();
		try {
			String sql = "select tacode, tanum from cdtelarea";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				TelDTO dto = new TelDTO();
				dto.setTaCode(rs.getInt(1));
				dto.setTaNum(rs.getString(2));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public List MobileCd() {
		conn = DbSet.getConnection();
		List<MobileDTO> dtoL = new ArrayList();
		try {
			String sql = "select mblcode, mblnum from cdmobile";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MobileDTO dto = new MobileDTO();
				dto.setMblCode(rs.getInt(1));
				dto.setMblNum(rs.getString(2));
				dtoL.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return dtoL;
	}

	public String TelTotal(String code) {
		conn = DbSet.getConnection();
		String result = null;
		try {
			String sql = "select tanum from cdtelarea where tacode = " + code;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				result = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return result;
	}

	public String MobileTotal(String code) {
		conn = DbSet.getConnection();
		String result = null;
		try {
			String sql = "select mblnum from cdmobile where mblcode = " + code;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				result = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return result;
	}

	public List hId() {
		conn = DbSet.getConnection();
		List<HIdDTO> dtoL = new ArrayList();
		try {
			String sql = "select hId, hName from House";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				HIdDTO dto = new HIdDTO();
				dto.sethId(rs.getInt(1));
				dto.sethName(rs.getString(2));
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
