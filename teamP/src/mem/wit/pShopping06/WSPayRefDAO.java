package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class WSPayRefDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSPayRefDTO> userMapper = new RowMapper<WSPayRefDTO>() {
		public WSPayRefDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSPayRefDTO pay = new WSPayRefDTO();
			pay.setPay_code(rs.getInt("pay_code"));
			pay.setPay_type(rs.getString("pay_type"));
	
			return pay;			
		}
	};
	
	public void add(final WSPayRefDTO pay) {
		this.jdbcTemplate.update(
			"insert into sPayRef values(SHOPPING_SEQ.NEXTVAL,?)",
			//pay.getPay_code(),
			pay.getPay_type()				
		);	
	}
	
}
