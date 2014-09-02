package mem.wit.study.codes;

import java.util.List;

public interface LecTimeService {
	
	public List<LecTime> selectAll();
	
	public LecTime select(int ltCode);
	
	public int insert(LecTime lecTime);
	
	public int update(LecTime lecTime);
	
	public void delete(LecTime lecTime);
}
