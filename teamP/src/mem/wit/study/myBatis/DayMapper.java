package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.codes.Day;

public interface DayMapper {
	
	public List<Day> selectAll();
	
	public Day select(int dCode);
	
	public int insert(Day day);
	
	public int update(Day day);
	
	public void delete(Day day);
}
