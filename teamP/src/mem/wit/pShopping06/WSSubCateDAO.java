package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class WSSubCateDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSSubCateDTO> userMapper = new RowMapper<WSSubCateDTO>() {
		public WSSubCateDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSSubCateDTO sct = new WSSubCateDTO();
			sct.setSct_code(rs.getInt("sct_code"));
			sct.setSct_name(rs.getString("sct_name"));
			sct.setSct_mctCode(rs.getInt("sct_mctcode"));
	
			return sct;			
		}
	};
	
	public void add(final WSSubCateDTO sct) {
		this.jdbcTemplate.update(
			"insert into sSubCate values(?,?,?)",
			sct.getSct_code(),
			sct.getSct_name(),		
			sct.getSct_mctCode()
		);	
	}
	
	public List<WSSubCateDTO> getAll(int mct) {
		return this.jdbcTemplate.query(
				"select * from sSubCate where sct_mctcode = ? order by sct_code",
				new Object[] {mct}, this.userMapper				
			);	
	}
	



}
