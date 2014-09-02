package mem.wit.study.codes;

import java.util.List;

import mem.wit.study.myBatis.LecTimeMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LecTimeServiceImpl implements LecTimeService {
	
	@Autowired
	private LecTimeMapper lecTimeMapper;
	
	public List<LecTime> selectAll() {
		return lecTimeMapper.selectAll();
	}
	
	public LecTime select(int ltCode) {
		return lecTimeMapper.select(ltCode);
	}
	
	public int insert(LecTime lecTime) {
		return lecTimeMapper.insert(lecTime);
	}
	
	public int update(LecTime lecTime) {
		return lecTimeMapper.update(lecTime);
	}
	
	public void delete(LecTime lecTime) {
		lecTimeMapper.delete(lecTime);
	}
	
}
