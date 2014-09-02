package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.codes.LecStatus;

public interface LecStatusMapper {
	
	public List<LecStatus> selectAll();
	
	public LecStatus select(int lsCode);
	
	public int insert(LecStatus lecStatus);
	
	public int update(LecStatus lecStatus);
	
	public void delete(LecStatus lecStatus);
}
