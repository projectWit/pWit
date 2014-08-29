package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class WSBasketDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSBasketDTO> userMapper = new RowMapper<WSBasketDTO>() {
		public WSBasketDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSBasketDTO bsk = new WSBasketDTO();
			bsk.setBsk_memID(rs.getString("bsk_memid"));
			bsk.setBsk_prdcode(rs.getInt("bsk_prdcode"));
			bsk.setBsk_prdcodeopt(rs.getInt("bsk_prdcodeopt"));
			bsk.setBsk_quanty(rs.getInt("bsk_quanty"));	
			return bsk;			
		}
	};
	
	public int add(final WSBasketDTO bsk) {
		return this.jdbcTemplate.update(
			"insert into sBasket values(?,?,?,?)",
			bsk.getBsk_memID(),
			bsk.getBsk_prdcode(),
			bsk.getBsk_prdcodeopt(),
			bsk.getBsk_quanty()
		);	
	}

}
