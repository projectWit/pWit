package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_DepartmentsDAO {
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	private RowMapper<ACC_DepartmentsDTO> userMapper = new RowMapper<ACC_DepartmentsDTO>() {
		public ACC_DepartmentsDTO mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			ACC_DepartmentsDTO dto = new ACC_DepartmentsDTO();
			dto.setdCode(rs.getInt("dCode"));
			dto.setdName(rs.getString("dName"));
			dto.setdContents(rs.getString("dContents"));
			return dto;
		}
	};

	public int add(final ACC_DepartmentsDTO dto) {
		return this.jdbcTemplate.update(
				"insert into acc_departments values(?,?,?)", 
				dto.getdCode(), dto.getdName(), dto.getdContents());
	}

	public List<ACC_DepartmentsDTO> getAll() {
		return this.jdbcTemplate.query(
				"select*from acc_departments order by dCode", this.userMapper);
	}

	public ACC_DepartmentsDTO get(int code) {
		return this.jdbcTemplate.queryForObject(
				"select*from acc_departments where dCode=?",
				new Object[] { code }, this.userMapper);
	}
}
