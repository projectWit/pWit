package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_CompanyDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	private RowMapper<ACC_CompanyDTO> userMapper = new RowMapper<ACC_CompanyDTO>() {
		public ACC_CompanyDTO mapRow(ResultSet rs, int rowNum)throws SQLException {
			ACC_CompanyDTO dto = new ACC_CompanyDTO();
			dto.setcCode(rs.getInt("cCode"));
			dto.setcName(rs.getString("cName"));
			dto.setcZipcode(rs.getInt("cZipcode"));
			dto.setcAddr(rs.getString("cAddr"));
			dto.setcPhone(rs.getString("cPhone"));
			dto.setcType(rs.getString("cType"));
			dto.setcContents(rs.getString("cContents"));
			return dto;
		}
	};
	public int add(final ACC_CompanyDTO dto){
		return this.jdbcTemplate.update("insert into acc_company values(?,?,?,?,?,?,?)",
				dto.getcCode(), dto.getcName(), dto.getcZipcode(), dto.getcAddr(), 
				dto.getcPhone(), dto.getcType(), dto.getcContents());				
	}
	
	public List<ACC_CompanyDTO> getAll() {
		return this.jdbcTemplate.query("select*from acc_company order by cCode", this.userMapper);
	}
	
	public ACC_CompanyDTO get(int code) {
		return this.jdbcTemplate.queryForObject("select*from acc_company where cCode=?", new Object[] {code}, this.userMapper);
	}
}
