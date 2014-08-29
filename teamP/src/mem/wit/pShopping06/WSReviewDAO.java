package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


public class WSReviewDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WSReviewDTO> userMapper = new RowMapper<WSReviewDTO>() {
		public WSReviewDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSReviewDTO rev = new WSReviewDTO();
			rev.setRev_prdcode(rs.getInt("rev_prdcode"));
			rev.setRev_memid(rs.getString("rev_mimid"));
			rev.setRev_content(rs.getString("rev_content"));
			rev.setRev_mark(rs.getInt("rev_mark"));
			rev.setRev_delete(rs.getInt("rev_delete"));
			rev.setRev_regDate(rs.getString("rev_regDate"));
	
			return rev;			
		}
	};
	
	public void add(final WSReviewDTO rev) {
		this.jdbcTemplate.update(
			"insert into sReview values(?,?,?,?,?,sysdate)",
			rev.getRev_prdcode(),
			rev.getRev_memid(),
			rev.getRev_content(),
			rev.getRev_mark(),
			rev.getRev_delete()
			//qna.getQna_regDate()					
		);	
	}

}
