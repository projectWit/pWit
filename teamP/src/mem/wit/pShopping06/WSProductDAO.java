package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;



public class WSProductDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSProductDTO> userMapper = new RowMapper<WSProductDTO>() {
		public WSProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSProductDTO prd = new WSProductDTO();
			prd.setPrd_code(rs.getInt("prd_code"));
			prd.setPrd_name(rs.getString("prd_name"));
			prd.setPrd_modelNo(rs.getString("prd_modelno"));
			prd.setPrd_sellerID(rs.getString("prd_sellerlno"));
			prd.setPrd_mainImg(rs.getString("prd_mainimg"));
			prd.setPrd_detailImg(rs.getString("prd_detailimg"));
			prd.setPrd_mainCate(rs.getInt("prd_mainCate"));
			prd.setPrd_subCate(rs.getInt("prd_subCate"));
			prd.setPrd_maker(rs.getString("prd_maker"));
			prd.setPrd_nation(rs.getInt("prd_nation"));
			prd.setPrd_price(rs.getInt("prd_price"));
			prd.setPrd_hasOpt(rs.getInt("prd_hasopt"));
			prd.setPrd_buyMin(rs.getInt("prd_buymin"));
			prd.setPrd_buyMax(rs.getInt("prd_buymax"));
			prd.setPrd_remain(rs.getInt("prd_remain"));
			prd.setPrd_launchDay(rs.getString("prd_launchday"));
			prd.setPrd_stop(rs.getInt("prd_stop"));
			
			return prd;			
		}
	};
	
	public void add(final WSProductDTO prd) {
		this.jdbcTemplate.update(
			"insert into sProduct values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate,?)",
			prd.getPrd_code(),
			prd.getPrd_name(),
			prd.getPrd_modelNo(),
			prd.getPrd_sellerID(),
			prd.getPrd_mainImg(),
			prd.getPrd_detailImg(),
			prd.getPrd_mainCate(),
			prd.getPrd_subCate(),
			prd.getPrd_maker(),
			prd.getPrd_nation(),
			prd.getPrd_price(),
			prd.getPrd_hasOpt(),
			prd.getPrd_buyMin(),
			prd.getPrd_buyMax(),
			prd.getPrd_remain(),

//			prd.getPrd_launchDay(),
			prd.getPrd_stop()			
		);	
	}
	
	
	
	
}
