package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_ProjectsDAO {
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	private RowMapper<ACC_ProjectsDTO> userMapper = new RowMapper<ACC_ProjectsDTO>() {
		public ACC_ProjectsDTO mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			ACC_ProjectsDTO dto = new ACC_ProjectsDTO();
			dto.setpCode(rs.getInt("pCode"));
			dto.setP_dCode(rs.getInt("p_dCode"));
			dto.setpName(rs.getString("pName"));
			dto.setpContents(rs.getString("pContents"));
			dto.setpBudget(rs.getInt("pBudget"));
			dto.seteId(rs.getString("eId"));
			return dto;
		}
	};

	public int add(final ACC_ProjectsDTO dto) {
		return this.jdbcTemplate.update(
				"insert into acc_projects values(?,?,?,?,?,?)", dto.getpCode(),
				dto.getP_dCode(), dto.getpName(), dto.getpContents(),
				dto.getpBudget(), dto.geteId());
	}
	
	public List<ACC_ProjectsDTO> getAll() {
		return this.jdbcTemplate.query("select * from acc_projects order by pName", this.userMapper);
	}

	public ACC_ProjectsDTO get(int code) {
		return this.jdbcTemplate.queryForObject(
				"select*from acc_projects where pCode=?",
				new Object[] {code}, this.userMapper);
	}
}
