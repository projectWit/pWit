package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.lecture.LecSchedule;
import mem.wit.study.lecture.LecScheduleParam;

public interface LecScheduleMapper {
	
	public List<LecSchedule> selectAll();
	
	public List<LecSchedule> select(LecScheduleParam lecScheduleParam);
	
	public int insert(LecSchedule lecSchedule);
	
	public int update(LecSchedule lecSchedule);
	
	public void delete(LecSchedule lecSchedule);
}
