package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class WSDelvRefDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSDelvRefDTO> userMapper = new RowMapper<WSDelvRefDTO>() {
		public WSDelvRefDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSDelvRefDTO dlv = new WSDelvRefDTO();
			dlv.setDlv_code(rs.getInt("dlv_code"));
			dlv.setDlv_type(rs.getString("dlv_type"));
	
			return dlv;			
		}
	};
	
	public int add(final WSDelvRefDTO nat) {
		return this.jdbcTemplate.update(
			"insert into sDelvRef values(?,?)",
			nat.getDlv_code(),
			nat.getDlv_type()				
		);	
	}
	
}
