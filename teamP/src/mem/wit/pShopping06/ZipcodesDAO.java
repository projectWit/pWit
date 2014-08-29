package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ZipcodesDAO {
private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<ZipcodesDTO> userMapper = new RowMapper<ZipcodesDTO>() {
		public ZipcodesDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			ZipcodesDTO zip = new ZipcodesDTO();
			zip.setZipcode(rs.getString("zipcode"));
			zip.setSido(rs.getString("sido"));
			zip.setGugun(rs.getString("gugun"));
			zip.setDong(rs.getString("dong"));
			zip.setRi(rs.getString("ri"));
			zip.setBunji(rs.getString("bunji"));
			zip.setSeq(rs.getInt("seq"));
			return zip;			
		}
	};
	
	public ZipcodesDTO get(int seq) {
		return this.jdbcTemplate.queryForObject(
			"select * from zipcodes where seq=?",
			new Object[] {seq}, this.userMapper);
	}
	
	public List<ZipcodesDTO> searchDong(String dong) {
		return this.jdbcTemplate.query(
				"select * from zipcodes where dong like ? order by seq",
				new Object[] {"%"+dong+"%"}, this.userMapper				
			);	
	}
	

}
