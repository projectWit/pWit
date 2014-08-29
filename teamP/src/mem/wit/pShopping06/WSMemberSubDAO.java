package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class WSMemberSubDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSMemberSubDTO> userMapper = new RowMapper<WSMemberSubDTO>() {
		public WSMemberSubDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSMemberSubDTO mem = new WSMemberSubDTO();
			mem.setMem_id(rs.getString("mem_id"));
			mem.setMem_level(rs.getInt("mem_level"));
			mem.setMem_point(rs.getInt("mem_point"));
	
			return mem;			
		}
	};
	
	public int add(final WSMemberSubDTO mem) {
		return this.jdbcTemplate.update(
			"insert into sMemberSub values(?,?,?)",
			mem.getMem_id(),
			mem.getMem_level(),
			mem.getMem_point()						
		);	
	}

}
