package mem.wit.study.codes;

import java.util.List;

public interface LecStatusService {
	
	public List<LecStatus> selectAll();
	
	public LecStatus select(int lsCode);
	
	public int insert(LecStatus lecStatus);
	
	public int update(LecStatus lecStatus);
	
	public void delete(LecStatus lecStatus);
}
