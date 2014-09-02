package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.lecture.LecSchedule;

public interface LecScheduleMapper {
	
	public List<LecSchedule> selectAll();
	
	public List<LecSchedule> select(LecSchedule lecSchedule);
	
	public int insert(LecSchedule lecSchedule);
	
	public int update(LecSchedule lecSchedule);
	
	public void delete(LecSchedule lecSchedule);
}
