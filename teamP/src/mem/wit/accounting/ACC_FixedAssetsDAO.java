package mem.wit.accounting;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ACC_FixedAssetsDAO {
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	private RowMapper<ACC_FixedAssetsDTO> userMapper = new RowMapper<ACC_FixedAssetsDTO>() {
		public ACC_FixedAssetsDTO mapRow(ResultSet rs, int rowNum)throws SQLException {
			ACC_FixedAssetsDTO dto = new ACC_FixedAssetsDTO();
			dto.setfCode(rs.getInt("fCode"));
			dto.setfName(rs.getString("fName"));
			dto.setfDate(rs.getString("fDate"));
			dto.setfAmounts(rs.getInt("fAmounts"));
			dto.setfQuantity(rs.getInt("fQuantity"));
			dto.setF_sCode(rs.getInt("f_sCode"));
			dto.setfContents(rs.getString("fContents"));
			dto.setF_eCode(rs.getInt("f_eCode"));
			dto.seteId(rs.getString("eId"));
			dto.setfMonths(rs.getInt("fMonths"));
			return dto;
		}
	};
	public int add(final ACC_FixedAssetsDTO dto){
		return this.jdbcTemplate
				.update("insert into acc_fixedassets values(acc_FixedAsset_seq.NEXTVAL,?,?,?,?,?,?,?,'10001',?)",
				dto.getfName(), 
				dto.getfDate(),
				dto.getfAmounts(), 
				dto.getfQuantity(),
				dto.getF_sCode(), 
				dto.getfContents(), 
				dto.getF_eCode(),
				dto.getfMonths());				
	}
	
	public List<ACC_FixedAssetsDTO> getAll() {
		return this.jdbcTemplate.query("select*from acc_fixedassets order by fCode", this.userMapper);
	}
	
	public ACC_FixedAssetsDTO get(int code) {
		return this.jdbcTemplate.queryForObject("select*from acc_fixedassets where fCode=?", new Object[] {code}, this.userMapper);
	}
}
