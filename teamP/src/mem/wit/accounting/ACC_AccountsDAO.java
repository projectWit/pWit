package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_AccountsDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	private RowMapper<ACC_AccountsDTO> userMapper = new RowMapper<ACC_AccountsDTO>() {
		public ACC_AccountsDTO mapRow(ResultSet rs, int rowNum)throws SQLException {
			ACC_AccountsDTO dto = new ACC_AccountsDTO();
			dto.setaCode(rs.getInt("aCode"));
			dto.setaName(rs.getString("aName"));
			dto.setaContents(rs.getString("aContents"));
			dto.seteId(rs.getString("eId"));
			return dto;
		}
	};
	public int add(final ACC_AccountsDTO dto){
		return this.jdbcTemplate.update("insert into acc_accounts (aCode, aName, aContents, eId) values(acc_Accounts_seq.NEXTVAL,?,?,?)",
				dto.getaName(), dto.getaContents(), dto.geteId());				
	}
	
	public List<ACC_AccountsDTO> getAll() {
		return this.jdbcTemplate.query("select * from acc_accounts order by aCode", this.userMapper);
	}
	
	public ACC_AccountsDTO get(int code) {
		return this.jdbcTemplate.queryForObject("select*from acc_accounts where aCode=?", new Object[] {code}, this.userMapper);
	}
}
