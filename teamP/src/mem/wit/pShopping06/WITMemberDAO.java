package mem.wit.pShopping06;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class WITMemberDAO {
	
private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	
	private RowMapper<WITMemberDTO> userMapper = new RowMapper<WITMemberDTO>() {
		public WITMemberDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
			WITMemberDTO mem = new WITMemberDTO();
			mem.setMid(rs.getString("mid"));
			mem.setMpwd(rs.getString("mpwd"));
			mem.setMname(rs.getString("mname"));
			mem.setMnickname(rs.getString("mnickname"));
			mem.setMpost(rs.getInt("mpost"));
			mem.setMaddr(rs.getString("maddr"));
			mem.setMtel(rs.getString("mtel"));
			mem.setMmoblie(rs.getString("mmobile"));
			mem.setMemail(rs.getString("mbirth"));
			mem.setBthcode(rs.getInt("bthcode"));
			mem.setMjoindate(rs.getString("mjoindate"));
			mem.setGencode(rs.getInt("gencode"));
			mem.setMrycode(rs.getInt("mrycode"));
			mem.setJcode(rs.getInt("jcode"));
			mem.setEid(rs.getString("eid"));		

			return mem;			
		}
	};
	
	public int add(final WITMemberDTO mem) {
		return this.jdbcTemplate.update(
			"insert into witmember values(?,?,?,?,?,?,?,?,?,? ,null,sysdate,null,null,null,null)",
			mem.getEid(),
			mem.getMpwd(),
			mem.getMname(),
			mem.getMnickname(),
			mem.getMpost(),
			mem.getMaddr(),
			mem.getMtel(),
			mem.getMmoblie(),
			mem.getMemail(),
			mem.getMbirth()
		);	
	}


}
