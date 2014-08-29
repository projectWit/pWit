package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;



public class WSSellerDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSSellerDTO> userMapper = new RowMapper<WSSellerDTO>() {
		public WSSellerDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSSellerDTO sel = new WSSellerDTO();
			sel.setSel_id(rs.getString("sel_id"));
			sel.setSel_password(rs.getString("sel_password"));
			sel.setSel_name(rs.getString("sel_name"));
			sel.setSel_zipcode(rs.getInt("sel_zipcode"));
			sel.setSel_addr(rs.getString("sel_addr"));
			sel.setSel_tel1(rs.getString("sel_tel1"));
			sel.setSel_tel2(rs.getString("sel_tel2"));
			sel.setSel_email(rs.getString("sel_email"));
			sel.setSel_enterDate(rs.getString("sel_enterDate"));
			sel.setSel_level(rs.getInt("sel_level"));
					
			return sel;			
		}
	};
	
	public int add(final WSSellerDTO sel) {
		return this.jdbcTemplate.update(
			"insert into sSeller values(?,?,?,?,?,?,?,?,sysdate,?)",
			sel.getSel_id(),
			sel.getSel_password(),
			sel.getSel_name(),
			sel.getSel_zipcode(),
			sel.getSel_addr(),

			sel.getSel_tel1(),
			sel.getSel_tel2(),
			sel.getSel_email(),
			//sel.getSel_enterDate(),
			0						
		);	
	}
	
	public WSSellerDTO get(String id) {
		return this.jdbcTemplate.queryForObject(
			"select * from sSeller where sel_id=?",
			new Object[] {id}, this.userMapper);
	}
	
	
	
	
	
	
}
