package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_DeptorCreditorDAO {
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	private RowMapper<ACC_DeptorCreditorDTO> userMapper = new RowMapper<ACC_DeptorCreditorDTO>() {
		public ACC_DeptorCreditorDTO mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			ACC_DeptorCreditorDTO dto = new ACC_DeptorCreditorDTO();
			dto.setDcCode(rs.getInt("dcCode"));
			dto.setDcContents(rs.getString("dcContents"));
			dto.setDcName(rs.getString("dcName"));			
			return dto;
		}
	};

	public int add(final ACC_DeptorCreditorDTO dto) {
		return this.jdbcTemplate.update(
				"insert into acc_deptorcreditor values(?,?,?)",
				dto.getDcCode(), dto.getDcContents(), dto.getDcName());
	}

	public List<ACC_DeptorCreditorDTO> getAll() {
		return this.jdbcTemplate.query(
				"select * from acc_deptorcreditor order by dcCode", this.userMapper);
	}
	
	  public ACC_DeptorCreditorDTO get(int code) {
	      return this.jdbcTemplate.queryForObject(
	         "select * from acc_deptorcreditor where dcCode=?",
	         new Object[] {code}, this.userMapper);
	   }
}