package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_SlipTypeDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	private RowMapper<ACC_SlipTypeDTO> userMapper = new RowMapper<ACC_SlipTypeDTO>() {
		public ACC_SlipTypeDTO mapRow(ResultSet rs, int rowNum)throws SQLException {
			ACC_SlipTypeDTO dto = new ACC_SlipTypeDTO();
			dto.setStCode(rs.getInt("stCode"));
			dto.setStName(rs.getString("stName"));
			dto.setStContents(rs.getString("stContents"));
			return dto;
		}
	};
	public int add(final ACC_SlipTypeDTO dto){
		return this.jdbcTemplate.update("insert into acc_sliptype values(?,?,?)",
				dto.getStCode(), dto.getStName(), dto.getStContents());				
	}
	
	public List<ACC_SlipTypeDTO> getAll() {
		return this.jdbcTemplate.query("select*from acc_sliptype order by stCode", this.userMapper);
	}
	
	public ACC_SlipTypeDTO get(int code) {
		return this.jdbcTemplate.queryForObject("select*from acc_sliptype where stCode=?", new Object[] {code}, this.userMapper);
	}
}
