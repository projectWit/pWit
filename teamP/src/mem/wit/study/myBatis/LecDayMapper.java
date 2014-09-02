package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.lecture.LecDay;

public interface LecDayMapper {
	
	public List<LecDay> selectAll();

	public List<LecDay> select(int lsId);
	
	public int insert(LecDay lecDay);
	
	public int update(LecDay lecDay);
	
	public void delete(LecDay lecDay);
}
