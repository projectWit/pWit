package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class WSBuyDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSBuyDTO> userMapper = new RowMapper<WSBuyDTO>() {
		public WSBuyDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSBuyDTO buy = new WSBuyDTO();
			buy.setBuy_code(rs.getInt("buy_code"));
			buy.setBuy_prdcode(rs.getInt("buy_prdcode"));
			buy.setBuy_prdcodeopt(rs.getInt("buy_prdcodeopt"));
			buy.setBuy_memberID(rs.getString("buy_memberID"));
			buy.setBuy_price(rs.getInt("buy_price"));
			buy.setBuy_paytype(rs.getInt("buy_paytype"));
			buy.setBuy_cash_receipt(rs.getInt("buy_cash_receipt"));
			buy.setBuy_date(rs.getString("buy_date"));
			buy.setBuy_currdelv(rs.getInt("buy_currdelv"));
			buy.setBuy_cancle(rs.getInt("buy_cancle"));
			buy.setBuy_delvtype(rs.getInt("buy_delvtype"));
			return buy;			
		}
	};
	
	public int add(final WSBuyDTO buy) {
		return this.jdbcTemplate.update(
			"insert into sBuy values(?,?,?,?,?,?,?,sysdate,?,?,?)",
			buy.getBuy_code(),
			buy.getBuy_prdcode(),
			buy.getBuy_prdcodeopt(),
			buy.getBuy_memberID(),
			buy.getBuy_price(),
			buy.getBuy_paytype(),
			buy.getBuy_cash_receipt(),
			//buy.getBuy_date(),
			buy.getBuy_currdelv(),
			buy.getBuy_cancle(),
			buy.getBuy_delvtype()
		);	
	}

}
