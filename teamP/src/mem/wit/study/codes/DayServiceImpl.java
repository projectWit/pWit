package mem.wit.study.codes;

import java.util.List;

import mem.wit.study.myBatis.DayMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DayServiceImpl implements DayService {
	
	@Autowired
	private DayMapper dayMapper;
	
	public List<Day> selectAll() {
		return dayMapper.selectAll();
	}
	
	public Day select(int dCode) {
		return dayMapper.select(dCode);
	}
	
	public int insert(Day day) {
		return dayMapper.insert(day);
	}
	
	public int update(Day day) {
		return dayMapper.update(day);
	}
	
	public void delete(Day day) {
		dayMapper.delete(day);
	}
	
}
