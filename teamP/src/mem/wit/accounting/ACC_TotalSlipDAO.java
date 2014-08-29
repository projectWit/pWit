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

	public List<ACC_TotalSlipDTO> getAll() {
		return this.jdbcTemplate
				.query("select * from acc_totalslip ts, acc_accounts a, acc_projects p, acc_customers c, acc_tax t, acc_bankaccount ba where ts.ts_acode=a.acode and ts.ts_pcode=p.pcode and ts.ts_ccode=c.ccode and ts.ts_tcode=t.tcode and ts.ts_bacode=ba.bacode",
						this.userMapper);
	}

	public ACC_TotalSlipDTO get(int code) {
		return this.jdbcTemplate.queryForObject(
				"select*from acc_totalslip where tsCode=?",
				new Object[] { code }, this.userMapper);
	}
}
