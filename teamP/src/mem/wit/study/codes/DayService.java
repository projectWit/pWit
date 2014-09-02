package mem.wit.study.codes;

import java.util.List;

public interface DayService {
	
	public List<Day> selectAll();
	
	public Day select(int dCode);
	
	public int insert(Day day);
	
	public int update(Day day);
	
	public void delete(Day day);
}
