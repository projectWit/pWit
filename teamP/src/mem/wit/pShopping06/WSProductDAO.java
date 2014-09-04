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
			prd.setPrd_sellerID(rs.getString("prd_sellerID"));
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
	
	public int add(final WSProductDTO prd) {
		int lastSeq = lastSeq();
		this.jdbcTemplate.update(
			"insert into sProduct values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate,0)",
			lastSeq+1,
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
			prd.getPrd_remain()		
		);	
		return lastSeq+1;
	}
	
	public WSProductDTO get(int prd_code) {
		return this.jdbcTemplate.queryForObject(
			"select * from sProduct where prd_code=?",
			new Object[] {prd_code}, this.userMapper);
	}
	
	public WSProductDTO getRecent() {
		return this.jdbcTemplate.queryForObject(
			"select * from sProduct where prd_code=(select max(prd_code) from sProduct) ",
			 this.userMapper);
	}
	
	public int lastSeq() {
		if(getCount()==0) {
			return 0;
		}
		else {
			return this.jdbcTemplate.queryForObject(
				"select max(prd_code) from sProduct", Integer.class);
		}
				 
	}
	
	public int getCount() {
		return this.jdbcTemplate.queryForObject(
				"select count(*) from sProduct", Integer.class);
				 
	}
	
	public int addImage(int prd_code, String mainImg, String detailImg) {
		return this.jdbcTemplate.update(
			"update sProduct set prd_mainImg=?, prd_detailImg=? where prd_code=?", 
				mainImg, detailImg, prd_code );
	}
	
}
