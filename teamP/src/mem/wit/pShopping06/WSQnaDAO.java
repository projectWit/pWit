package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;



public class WSQnaDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}

	private RowMapper<WSQnaDTO> userMapper = new RowMapper<WSQnaDTO>() {
		public WSQnaDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WSQnaDTO qna = new WSQnaDTO();
			qna.setQna_prdCode(rs.getInt("qna_prdCode"));
			qna.setQna_userID(rs.getString("qna_userID"));
			qna.setQna_QorA(rs.getInt("qna_QorA"));
			qna.setQna_content(rs.getString("qna_content"));
			qna.setQna_secret(rs.getInt("qna_secret"));
			qna.setQna_delete(rs.getInt("qna_delete"));
			qna.setQna_regDate(rs.getString("qna_regdate"));
			
			return qna;			
		}
	};
	
	public void add(final WSQnaDTO qna) {
		this.jdbcTemplate.update(
			"insert into sQna values(?,?,?,?,?,?,sysdate)",
			qna.getQna_prdCode(),
			qna.getQna_userID(),
			qna.getQna_QorA(),
			qna.getQna_content(),
			qna.getQna_secret(),
			qna.getQna_delete()
			//qna.getQna_regDate()					
		);	
	}
	
	public WSQnaDTO get(int code) {
		return this.jdbcTemplate.queryForObject(
			"select * from sQna where qna_prdCode = ?",
			new Object[] {code}, this.userMapper);
	}
	
	
	
	
	
	
}
