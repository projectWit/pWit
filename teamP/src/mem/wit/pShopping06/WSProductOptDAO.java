package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


public class WSProductOptDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}

	private RowMapper<WSProductOptDTO> userMapper = new RowMapper<WSProductOptDTO>() {
		public WSProductOptDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSProductOptDTO opt = new WSProductOptDTO();
			opt.setOpt_prdCode(rs.getInt("opt_prdcode"));
			opt.setOpt_no(rs.getInt("opt_no"));
			opt.setOpt_name(rs.getString("opt_name"));
			opt.setOpt_valid(rs.getInt("opt_valid"));
			opt.setOpt_price(rs.getInt("opt_price"));
			
			return opt;			
		}
	};
	
	public int add(final WSProductOptDTO opt) {
		return this.jdbcTemplate.update(
			"insert into sProductOpt values(?,?,?,?,?)",
			opt.getOpt_prdCode(),
			opt.getOpt_no(),
			opt.getOpt_name(),
			opt.getOpt_valid(),
			opt.getOpt_price()					
		);	
	}

}
