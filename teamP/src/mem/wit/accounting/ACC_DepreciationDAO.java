package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_DepreciationDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	private RowMapper<ACC_DpreciationDTO> userMapper = new RowMapper<ACC_DpreciationDTO>() {
		public ACC_DpreciationDTO mapRow(ResultSet rs, int rowNum)throws SQLException {
			ACC_DpreciationDTO dto = new ACC_DpreciationDTO();
			dto.seteCode(rs.getInt("eCode"));
			dto.seteName(rs.getString("eName"));
			dto.seteContents(rs.getString("eContents"));
			return dto;
		}
	};
	public int add(final ACC_DpreciationDTO dto){
		return this.jdbcTemplate.update("insert into acc_depreciation values(?,?,?)",
				dto.geteCode(), dto.geteName(), dto.geteContents());				
	}
	
	public List<ACC_DpreciationDTO> getAll() {
		return this.jdbcTemplate.query("select*from acc_depreciation order by eCode", this.userMapper);
	}
	
	public ACC_DpreciationDTO get(int code) {
		return this.jdbcTemplate.queryForObject("select*from acc_depreciation where eCode=?", new Object[] {code}, this.userMapper);
	}
}
