package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_BankAccountDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	private RowMapper<ACC_BankAccountDTO> userMapper = new RowMapper<ACC_BankAccountDTO>() {
		public ACC_BankAccountDTO mapRow(ResultSet rs, int rowNum)throws SQLException {
			ACC_BankAccountDTO dto = new ACC_BankAccountDTO();
			dto.setBaCode(rs.getInt("baCode"));
			dto.setBaName(rs.getString("baName"));
			dto.setBaAmounts(rs.getInt("baAmounts"));
			dto.setBaContents(rs.getString("baContents"));			
			return dto;
		}
	};
	public int add(final ACC_BankAccountDTO dto){
		return this.jdbcTemplate.update("insert into acc_bankaccount values(?,?,?,?)",
				dto.getBaCode(), dto.getBaName(), dto.getBaAmounts(), dto.getBaContents());				
	}
	
	public List<ACC_BankAccountDTO> getAll() {
		return this.jdbcTemplate.query("select*from acc_bankaccount order by baCode", this.userMapper);
	}
	
	public ACC_BankAccountDTO get(int code) {
		return this.jdbcTemplate.queryForObject("select*from acc_bankaccount where baCode=?", new Object[] {code}, this.userMapper);
	}
}
