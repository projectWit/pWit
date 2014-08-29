package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class WSMainCateDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSMainCateDTO> userMapper = new RowMapper<WSMainCateDTO>() {
		public WSMainCateDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSMainCateDTO mct = new WSMainCateDTO();
			mct.setMct_code(rs.getInt("mct_code"));
			mct.setMct_name(rs.getString("mct_name"));
	
			return mct;			
		}
	};
	
	public void add(final WSMainCateDTO mct) {
		this.jdbcTemplate.update(
			"insert into sMainCate values(?,?)",
			mct.getMct_code(),
			mct.getMct_name()				
		);	
	}
	
	public List<WSMainCateDTO> getAll() {
		return this.jdbcTemplate.query(
			"select * from sMainCate order by mct_code",
			this.userMapper				
		);	
	}
	



}
