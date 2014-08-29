package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_TotalSlipDAO {
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	private RowMapper<ACC_TotalSlipDTO> userMapper = new RowMapper<ACC_TotalSlipDTO>() {
		public ACC_TotalSlipDTO mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			ACC_TotalSlipDTO dto = new ACC_TotalSlipDTO();
			dto.setTsCode(rs.getInt("tsCode"));
			dto.setTsDate(rs.getString("tsDate"));
			dto.setTs_stCode(rs.getInt("ts_stCode"));
			dto.setTs_aCode(rs.getInt("ts_aCode"));
			dto.setTs_pCode(rs.getInt("ts_pCode"));
			dto.setTs_cCode(rs.getInt("ts_cCode"));
			dto.setTsAmounts(rs.getInt("tsAmounts"));
			dto.setTs_tCode(rs.getInt("ts_tCode"));
			dto.setTsTax(rs.getInt("tsTax"));
			dto.setTsContents(rs.getString("tsContents"));
			dto.setTs_baCode(rs.getInt("ts_baCode"));
			dto.setTsiDate(rs.getString("tsiDate"));
			dto.seteId(rs.getString("eId"));
			dto.setTsc_cCode(rs.getInt("tsc_cCode"));
			dto.setTs_saCode(rs.getInt("ts_saCode"));
			return dto;
		}
	};

	public int add(final ACC_TotalSlipDTO dto) {
		return this.jdbcTemplate
				.update("insert into acc_totalslip values(acc_TotalSlip_seq.NEXTVAL,?,?,?,?,?,?,?,?,?,?,sysdate,'10001',1,?)",
						// dto.getTsCode(), 시퀀스로 대체
						dto.getTsDate(), dto.getTs_stCode(), dto.getTs_aCode(),
						dto.getTs_pCode(), dto.getTs_cCode(),
						dto.getTsAmounts(), dto.getTs_tCode(), dto.getTsTax(),
						dto.getTsContents(), dto.getTs_baCode(),
						dto.getTs_saCode());
	}

	private RowMapper<ACC_TotalSlip_journalDTO> userMapper2 = new RowMapper<ACC_TotalSlip_journalDTO>() {
		public ACC_TotalSlip_journalDTO mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			ACC_TotalSlip_journalDTO dto = new ACC_TotalSlip_journalDTO();
			dto.setTsj_Code(rs.getInt("tsj_Code"));
			dto.setTsj_Amounts(rs.getInt("tsj_Amounts"));
			dto.setTsj_aCode1(rs.getInt("tsj_aCode1"));
			dto.setTsj_aCode2(rs.getInt("tsj_aCode2"));
			dto.setTsj_aName1(rs.getString("tsj_aName1"));
			dto.setTsj_aName2(rs.getString("tsj_aName2"));
			dto.setTsj_tRate(rs.getDouble("tsj_tRate"));
			dto.setTsj_tName(rs.getString("tsj_tName"));
			dto.setTsj_pName(rs.getString("tsj_pName"));
			dto.setTsj_cName(rs.getString("tsj_cName"));
			dto.setTsj_baName(rs.getString("tsj_baName"));
			dto.setTsj_Contents(rs.getString("tsj_Contents"));
			dto.setTsj_Date(rs.getString("tsj_Date"));
			dto.setTsj_iDate(rs.getString("tsj_iDate"));
			return dto;
		}
	};
	
	public List<ACC_TotalSlip_journalDTO> getAll() {
		return this.jdbcTemplate
				.query("select T.tscode as tsj_code, T.tsamounts as tsj_amounts,  t.ts_acode as tsj_acode1, T.ts_sacode as tsj_acode2, A.aname as tsj_aname1, A2.aname as tsj_aname2,T2.trate as tsj_trate, T2.tname as tsj_tname, p.pname as tsj_pname, c.cname as tsj_cname,ba.baname as tsj_baname, T.tscontents as tsj_contents, t.tsdate as tsj_Date,t.tsidate as tsj_iDate from acc_totalslip T inner join acc_accounts A on T.ts_acode=A.acode inner join acc_accounts A2 on T.ts_sacode=A2.acode inner join acc_projects P on T.ts_pcode=P.pcode inner join acc_customers C on T.ts_ccode=c.ccode inner join acc_tax T2 on T.ts_tcode=T2.tcode inner join acc_bankaccount BA on t.ts_bacode=BA.bacode",
						this.userMapper2);
	}

	public ACC_TotalSlipDTO get(int code) {
		return this.jdbcTemplate.queryForObject(
				"select*from acc_totalslip where tsCode=?",
				new Object[] { code }, this.userMapper);
	}
}
