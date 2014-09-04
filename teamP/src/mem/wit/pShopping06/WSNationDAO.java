package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class WSNationDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSNationDTO> userMapper = new RowMapper<WSNationDTO>() {
		public WSNationDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSNationDTO nat = new WSNationDTO();
			nat.setNat_code(rs.getInt("nat_code"));
			nat.setNat_name(rs.getString("nat_name"));
	
			return nat;			
		}
	};
	
	public WSNationDTO get(int prd_nation) {
		return this.jdbcTemplate.queryForObject(
			"select * from sNation where nat_code=?",
			new Object[] {prd_nation}, this.userMapper);
	}
	
	public void add(final WSNationDTO nat) {
		this.jdbcTemplate.update(
			"insert into sNation values(?,?)",
			nat.getNat_code(),
			nat.getNat_name()				
		);	
	}
	
	public List<WSNationDTO> getAll() {
		return this.jdbcTemplate.query(
			"select * from sNation order by nat_name",
			this.userMapper				
		);	
	}
}
