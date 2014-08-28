package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_TaxDAO {
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	private RowMapper<ACC_TaxDTO> userMapper = new RowMapper<ACC_TaxDTO>() {
		public ACC_TaxDTO mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			ACC_TaxDTO dto = new ACC_TaxDTO();
			dto.settCode(rs.getInt("tCode"));
			dto.settName(rs.getString("tName"));
			dto.settContents(rs.getString("tContents"));
			dto.settRate(rs.getDouble("tRate"));			
			return dto;
		}
	};

	public int add(final ACC_TaxDTO dto) {
		return this.jdbcTemplate.update(
				"insert into acc_tax values(?,?,?,?)",
				dto.gettCode(), dto.gettName(), dto.gettContents(), dto.gettRate());
	}

	public List<ACC_TaxDTO> getAll() {
		return this.jdbcTemplate.query(
				"select * from acc_tax order by tCode", this.userMapper);
	}
	
	  public ACC_TaxDTO get(int code) {
	      return this.jdbcTemplate.queryForObject(
	         "select * from acc_tax where tCode=?",
	         new Object[] {code}, this.userMapper);
	   }

}