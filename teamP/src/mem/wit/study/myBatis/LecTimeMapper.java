package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.codes.LecTime;

public interface LecTimeMapper {
	
	public List<LecTime> selectAll();
	
	public LecTime select(int ltCode);
	
	public int insert(LecTime lecTime);
	
	public int update(LecTime lecTime);
	
	public void delete(LecTime lecTime);
}
