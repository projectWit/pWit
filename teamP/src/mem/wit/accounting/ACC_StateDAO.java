package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_StateDAO {
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	private RowMapper<ACC_StateDTO> userMapper = new RowMapper<ACC_StateDTO>() {
		public ACC_StateDTO mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			ACC_StateDTO dto = new ACC_StateDTO();
			dto.setsCode(rs.getInt("sCode"));
			dto.setsName(rs.getString("sName"));
			dto.setsContents(rs.getString("sContents"));
			return dto;
		}
	};

	public int add(final ACC_StateDTO dto) {
		return this.jdbcTemplate.update(
				"insert into acc_state values(?,?,?)",
				dto.getsCode(), dto.getsName(), dto.getsContents());
	}

	public List<ACC_StateDTO> getAll() {
		return this.jdbcTemplate.query(
				"select * from acc_state order by sCode", this.userMapper);
	}
	
	  public ACC_StateDTO get(int code) {
	      return this.jdbcTemplate.queryForObject(
	         "select * from acc_state where sCode=?",
	         new Object[] {code}, this.userMapper);
	   }
}