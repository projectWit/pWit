package mem.wit.study.lecture;

import java.util.List;

import mem.wit.study.myBatis.LecDayMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LecDayServiceImpl implements LecDayService {
	
	@Autowired
	private LecDayMapper lecDayMapper;
	
	public List<LecDay> selectAll() {
		return lecDayMapper.selectAll();
	}
	
	public List<LecDay> select(int lsId) {
		return lecDayMapper.select(lsId);
	}
	
	public int insert(LecDay lecDay) {
		return lecDayMapper.insert(lecDay);
	}
	
	public int update(LecDay lecDay) {
		return lecDayMapper.update(lecDay);
	}
	
	public void delete(LecDay lecDay) {
		lecDayMapper.delete(lecDay);
	}
	
}
