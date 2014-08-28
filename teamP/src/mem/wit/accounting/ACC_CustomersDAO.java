package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_CustomersDAO {
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	private RowMapper<ACC_CustomersDTO> userMapper = new RowMapper<ACC_CustomersDTO>() {
		public ACC_CustomersDTO mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			ACC_CustomersDTO dto = new ACC_CustomersDTO();
			dto.setcCode(rs.getInt("cCode"));
			dto.setcName(rs.getString("cName"));
			dto.setcPhone(rs.getString("cPhone"));
			dto.setcZipcode(rs.getInt("cZipcode"));
			dto.setcAddr(rs.getString("cAddr"));
			dto.setcType(rs.getString("cType"));
			return dto;
		}
	};

	public int add(final ACC_CustomersDTO dto) {
		return this.jdbcTemplate.update(
				"insert into acc_customers values(?,?,?,?,?,?)",
				dto.getcCode(), dto.getcName(), dto.getcPhone(),
				dto.getcZipcode(), dto.getcAddr(), dto.getcType());
	}

	public List<ACC_CustomersDTO> getAll() {
		return this.jdbcTemplate.query(
				"select * from acc_customers order by cCode", this.userMapper);
	}
	
	  public ACC_CustomersDTO get(int code) {
	      return this.jdbcTemplate.queryForObject(
	         "select * from acc_customers where cCode=?",
	         new Object[] {code}, this.userMapper);
	   }

}